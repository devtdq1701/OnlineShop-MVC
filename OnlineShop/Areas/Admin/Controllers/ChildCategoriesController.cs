using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Model.EF;
using OnlineShop.Common;

namespace OnlineShop.Areas.Admin.Controllers
{
    public class ChildCategoriesController : BaseController
    {
        private OnlineShopDbContext db = new OnlineShopDbContext();

        // GET: Admin/ChildCategories
        public ActionResult Index()
        {
            var childCategories = db.ChildCategories.Include(c => c.ProductCategory);
            return View(childCategories.ToList());
        }

        // GET: Admin/ChildCategories/Details/5
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ChildCategory childCategory = db.ChildCategories.Find(id);
            if (childCategory == null)
            {
                return HttpNotFound();
            }
            childCategory.Description = WebUtility.HtmlDecode(childCategory.Description);
            return View(childCategory);
        }

        // GET: Admin/ChildCategories/Create
        public ActionResult Create()
        {
            ViewBag.ParentID = new SelectList(db.ProductCategories, "ID", "Title");
            return View();
        }

        // POST: Admin/ChildCategories/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create([Bind(Include = "ID,Title,MetaTitle,Images,ShortDesc,Description,Order,CreatedDate,CreatedBy,UpdatedDate,UpdatedBy,MetaKeywords,MetaDescription,Status,ParentID")] ChildCategory childCategory)
        {
            if (ModelState.IsValid)
            {
                DateTime now = DateTime.Now;
                childCategory.CreatedDate = now;
                childCategory.CreatedBy = Session["username"].ToString();
                childCategory.MetaTitle = ConvertToSEO.Convert(childCategory.Title);
                db.ChildCategories.Add(childCategory);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ParentID = new SelectList(db.ProductCategories, "ID", "Title", childCategory.ParentID);
            return View(childCategory);
        }

        // GET: Admin/ChildCategories/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ChildCategory childCategory = db.ChildCategories.Find(id);
            if (childCategory == null)
            {
                return HttpNotFound();
            }
            ViewBag.ParentID = new SelectList(db.ProductCategories, "ID", "Title", childCategory.ParentID);
            return View(childCategory);
        }

        // POST: Admin/ChildCategories/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit([Bind(Include = "ID,Title,MetaTitle,Images,ShortDesc,Description,Order,CreatedDate,CreatedBy,UpdatedDate,UpdatedBy,MetaKeywords,MetaDescription,Status,ParentID")] ChildCategory childCategory)
        {
            if (ModelState.IsValid)
            {
                db.Entry(childCategory).State = EntityState.Modified;
                DateTime now = DateTime.Now;
                childCategory.UpdatedDate = now;
                childCategory.UpdatedBy = Session["username"].ToString();
                childCategory.MetaTitle = ConvertToSEO.Convert(childCategory.Title);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ParentID = new SelectList(db.ProductCategories, "ID", "Title", childCategory.ParentID);
            return View(childCategory);
        }

        [HttpDelete]
        public ActionResult Delete(long id)
        {

            ChildCategory childCategory = db.ChildCategories.Find(id);
            db.ChildCategories.Remove(childCategory);
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
    }
}
