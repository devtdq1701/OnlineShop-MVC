using System;
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
            if (product == null)
            {
                return HttpNotFound();
            }
            product.Description = WebUtility.HtmlDecode(product.Description);
            product.Detail = WebUtility.HtmlDecode(product.Detail);
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
        public ActionResult Create([Bind(Include = "ID,Title,Code,MetaTitle,Description,Images,Images2nd,Images3rd,Price,OldPrice,MetaKeywords,MetaDescription,Quantity,CreatedDate,CreatedBy,UpdatedDate,UpdatedBy,CategoryID,ViewCount,BrandID,UpTopNew,UpTopHot,Detail,Guarantee,Video,Specification")] Product product, HttpPostedFileBase Images)
        {
            if (ModelState.IsValid)
            {
                if (Images != null)
                {
                    string path = Path.Combine(Server.MapPath("~/Assets/Admin/img"), Path.GetFileName(Images.FileName));
                    Images.SaveAs(path);
                    product.Images = Images.FileName;
                }
                DateTime now = DateTime.Now;
                product.CreatedDate = now;
                product.CreatedBy = Session["username"].ToString();
                product.MetaTitle = ConvertToSEO.Convert(product.Title);
                db.Products.Add(product);
                db.SaveChanges();
                SetAlert("Thêm product thành công", "success");
                return RedirectToAction("Index");
            }
            SetViewBag();
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
        public ActionResult Edit([Bind(Include = "ID,Title,Code,MetaTitle,Description,Images,Images2nd,Images3rd,Price,OldPrice,MetaKeywords,MetaDescription,Quantity,CreatedDate,CreatedBy,UpdatedDate,UpdatedBy,CategoryID,ViewCount,BrandID,UpTopNew,UpTopHot,Detail,Guarantee,Video,Specification")] Product product, HttpPostedFileBase Images)
        {
            if (ModelState.IsValid)
            {
                if (Images != null)
                {
                    string path = Path.Combine(Server.MapPath("~/Assets/Admin/img"), Path.GetFileName(Images.FileName));
                    Images.SaveAs(path);
                    product.Images = Images.FileName;
                }
                db.Entry(product).State = EntityState.Modified;
                DateTime now = DateTime.Now;
                product.UpdatedDate = now;
                product.UpdatedBy = Session["username"].ToString();
                product.MetaTitle = ConvertToSEO.Convert(product.Title);
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
