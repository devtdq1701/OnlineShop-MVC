﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Model.EF;
using OnlineShop.Areas.Admin.Models;
using OnlineShop.Common;

namespace OnlineShop.Areas.Admin.Controllers
{
    [HandleError]
    public class ProductsController : BaseController
    {
        private OnlineShopDbContext db = new OnlineShopDbContext();

        // GET: Admin/Products
        public ActionResult Index()
        {
            var query = from p in db.Products
                        join c in db.ProductCategories on p.CategoryID equals c.ID
                        join b in db.Brands on p.BrandID equals b.ID
                        select new ProductWithCategory { Product = p, category = c, brand = b };
            var model = query.ToList();
            ViewBag.Category = db.ProductCategories.Where(x=>x.ParentID.HasValue).ToList();
            ViewBag.Brand = db.Brands.Where(x => x.Status==true).ToList();
            return View(model);
        }
        [HttpPost]
        public ActionResult Index(long Category,int Brand,string txtSearch)
        {
            var query = from p in db.Products
                        join c in db.ProductCategories on p.CategoryID equals c.ID
                        join b in db.Brands on p.BrandID equals b.ID
                        select new ProductWithCategory { Product = p, category = c, brand = b };
            var model = query.ToList();
            ViewBag.Category = db.ProductCategories.Where(x => x.ParentID.HasValue).ToList();
            ViewBag.Brand = db.Brands.Where(x => x.Status == true).ToList();
            if (String.IsNullOrEmpty(txtSearch) && Category == 0 && Brand==0)
            {
                ViewBag.Count = 0;
            }
            else
            {
                if (Category == 0)
                {
                    model = query.Where(x => x.Product.Title.Contains(txtSearch) && x.Product.BrandID==Brand).ToList();
                }
                else
                {
                    if (Brand == 0)
                    {
                        model = query.Where(x => x.Product.Title.Contains(txtSearch) && x.Product.CategoryID == Category).ToList();
                    }
                    else
                    {
                        model = query.Where(x =>x.Product.BrandID==Brand && x.Product.CategoryID == Category && x.Product.Title.Contains(txtSearch)).ToList();
                    }
                }
                ViewBag.Count = model.Count;
            }
            
            return View(model);
            
        }
        // GET: Admin/Products/Details/5
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            Brand brand = db.Brands.Find(product.BrandID);
            ProductCategory productCategory = db.ProductCategories.Find(product.CategoryID);
            if (product == null)
            {
                return HttpNotFound();
            }
            product.Description = WebUtility.HtmlDecode(product.Description);
            product.Detail = WebUtility.HtmlDecode(product.Detail);
            ViewBag.BrandName = brand.Title;
            ViewBag.CategoryName = productCategory.Title;
            return View(product);
        }

        // GET: Admin/Products/Create
        public ActionResult Create()
        {
            SetViewBag();
            return View();
        }

        // POST: Admin/Products/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create([Bind(Include = "ID,Title,Code,MetaTitle,Description,Images,Images2nd,Images3rd,Price,OldPrice,MetaKeywords,MetaDescription,Quantity,CreatedDate,CreatedBy,UpdatedDate,UpdatedBy,CategoryID,ViewCount,BrandID,UpTopHot,Detail,Guarantee,Video,Specification,PercentSale")] Product product)
        {
            if (ModelState.IsValid)
            {
                long percent = 0;
                if (product.OldPrice.HasValue)
                {
                    percent = Convert.ToInt64((product.OldPrice - product.Price) / product.OldPrice * 100);
                }
                DateTime now = DateTime.Now;
                product.ViewCount = 0;
                product.CreatedDate = now;
                product.CreatedBy = Session["username"].ToString();
                product.MetaTitle = ConvertToSEO.Convert(product.Title);
                product.PercentSale = percent;
                db.Products.Add(product);
                db.SaveChanges();
                SetAlert("Thêm product thành công", "success");
                return RedirectToAction("Index");
            }
            return View(product);
        }

        // GET: Admin/Products/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            SetViewBag(product.CategoryID);
            return View(product);
        }

        // POST: Admin/Products/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit([Bind(Include = "ID,Title,Code,MetaTitle,Description,Images,Images2nd,Images3rd,Price,OldPrice,MetaKeywords,MetaDescription,Quantity,CreatedDate,CreatedBy,UpdatedDate,UpdatedBy,CategoryID,ViewCount,BrandID,UpTopHot,Detail,Guarantee,Video,Specification,PercentSale")] Product product)
        {
            if (ModelState.IsValid)
            {
                db.Entry(product).State = EntityState.Modified;
                long percent = 0;
                if (product.OldPrice.HasValue)
                {
                    percent = Convert.ToInt64((product.OldPrice - product.Price) / product.OldPrice * 100);
                }
                DateTime now = DateTime.Now;
                product.UpdatedDate = now;
                product.UpdatedBy = Session["username"].ToString();
                product.MetaTitle = ConvertToSEO.Convert(product.Title);
                product.PercentSale = percent;
                db.SaveChanges();
                SetAlert("Sửa product thành công", "success");
                return RedirectToAction("Index");
            }

            SetViewBag(product.CategoryID);
            return View(product);
        }

        [HttpDelete]
        public ActionResult Delete(long id)
        {

            Product product = db.Products.Find(id);
            db.Products.Remove(product);
            db.SaveChanges();
            SetAlert("Xoá product thành công", "success");
            return Json(new { Success = true });
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        public void SetViewBag(long? selectedID = null)
        {
            ViewBag.CategoryID = new SelectList(db.ProductCategories.Where(x => x.Status == true && x.ParentID.HasValue).ToList(), "ID", "Title", selectedID);
            ViewBag.BrandID = new SelectList(db.Brands.Where(x => x.Status == true).ToList(), "ID", "Title", selectedID);
        }
    }
}
