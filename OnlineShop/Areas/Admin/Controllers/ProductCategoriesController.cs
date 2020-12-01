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
using OnlineShop.Common;

namespace OnlineShop.Areas.Admin.Controllers
{
    public class ProductCategoriesController : BaseController
    {
        private OnlineShopDbContext db = new OnlineShopDbContext();

        // GET: Admin/ProductCategories
        public ActionResult Index()
        {
            return View(db.ProductCategories.ToList());
        }

        // GET: Admin/ProductCategories/Details/5
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ProductCategory productCategory = db.ProductCategories.Find(id);
            if (productCategory == null)
            {
                return HttpNotFound();
            }
            productCategory.Description = WebUtility.HtmlDecode(productCategory.Description);
            SetViewBag();
            return View(productCategory);
        }

        // GET: Admin/ProductCategories/Create
        public ActionResult Create()
        {
            SetViewBag();
            return View();
        }

        // POST: Admin/ProductCategories/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create([Bind(Include = "ID,Title,MetaTitle,Images,NavImages,BannerImages,ShortDesc,Description,Order,CreatedDate,CreatedBy,UpdatedDate,UpdatedBy,MetaKeywords,MetaDescription,Status,ParentID,Style")] ProductCategory productCategory, HttpPostedFileBase Images)
        {
            if (ModelState.IsValid)
            {
                if (Images != null)
                {
                    string path = Path.Combine(Server.MapPath("~/Assets/Admin/img"), Path.GetFileName(Images.FileName));
                    Images.SaveAs(path);
                    productCategory.Images = Images.FileName;
                }
                DateTime now = DateTime.Now;
                productCategory.CreatedDate= now;
                productCategory.CreatedBy = Session["username"].ToString();
                productCategory.MetaTitle = ConvertToSEO.Convert(productCategory.Title);
                db.ProductCategories.Add(productCategory);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            SetViewBag();
            return View(productCategory);
        }

        // GET: Admin/ProductCategories/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ProductCategory productCategory = db.ProductCategories.Find(id);
            if (productCategory == null)
            {
                return HttpNotFound();
            }
            SetViewBag(id);
            return View(productCategory);
        }

        // POST: Admin/ProductCategories/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit([Bind(Include = "ID,Title,MetaTitle,Images,NavImages,BannerImages,ShortDesc,Description,Order,CreatedDate,CreatedBy,UpdatedDate,UpdatedBy,MetaKeywords,MetaDescription,Status,ParentID,Style")] ProductCategory productCategory, HttpPostedFileBase Images)
        {
            if (ModelState.IsValid)
            {
                if (Images != null)
                {
                    string path = Path.Combine(Server.MapPath("~/Assets/Admin/img"), Path.GetFileName(Images.FileName));
                    Images.SaveAs(path);
                    productCategory.Images = Images.FileName;
                }
                db.Entry(productCategory).State = EntityState.Modified;
                DateTime now = DateTime.Now;
                productCategory.UpdatedDate = now;
                productCategory.UpdatedBy = Session["username"].ToString();
                productCategory.MetaTitle = ConvertToSEO.Convert(productCategory.Title);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            SetViewBag(productCategory.ID);
            return View(productCategory);
        }


        [HttpDelete]
        public ActionResult Delete(long id)
        {

            ProductCategory productCategory = db.ProductCategories.Find(id);
            db.ProductCategories.Remove(productCategory);
            db.SaveChanges();
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
            ViewBag.ParentID = new SelectList(db.ProductCategories.Where(x => x.Status == true && x.ParentID==null).ToList(), "ID", "Title", selectedID);
            
        }
    }
}
