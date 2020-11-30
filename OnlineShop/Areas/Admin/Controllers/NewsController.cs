﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Model.EF;

namespace OnlineShop.Areas.Admin.Controllers
{
    public class NewsController : BaseController
    {
        private OnlineShopDbContext db = new OnlineShopDbContext();

        // GET: Admin/News
        public ActionResult Index()
        {
            var newses = db.Newses.Include(n => n.Category);
            return View(newses.ToList());
        }

        // GET: Admin/News/Details/5
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            News news = db.Newses.Find(id);
            if (news == null)
            {
                return HttpNotFound();
            }
            return View(news);
        }

        // GET: Admin/News/Create
        public ActionResult Create()
        {
            SetViewBag();
            return View();
        }

        // POST: Admin/News/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create([Bind(Include = "ID,Title,MetaTitle,Description,ContentHtml,Images,MetaKeywords,MetaDescription,Status,CreatedDate,CreatedBy,UpdatedDate,UpdatedBy,PublishedDate,RelatedNewes,CategoryID,ViewCount,Source,UpTopNew,UpTopHot")] News news)
        {
            if (ModelState.IsValid)
            {
                DateTime now = DateTime.Now;
                news.CreatedDate = now;
                news.CreatedBy = Session["username"].ToString();
                db.Newses.Add(news);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            SetViewBag();
            return View(news);
        }

        // GET: Admin/News/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            News news = db.Newses.Find(id);
            if (news == null)
            {
                return HttpNotFound();
            }
            SetViewBag(news.CategoryID);
            return View(news);
        }

        // POST: Admin/News/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit([Bind(Include = "ID,Title,MetaTitle,Description,ContentHtml,Images,MetaKeywords,MetaDescription,Status,CreatedDate,CreatedBy,UpdatedDate,UpdatedBy,PublishedDate,RelatedNewes,CategoryID,ViewCount,Source,UpTopNew,UpTopHot")] News news)
        {
            if (ModelState.IsValid)
            {
                db.Entry(news).State = EntityState.Modified;
                DateTime now = DateTime.Now;
                news.UpdatedDate = now;
                news.UpdatedBy = Session["username"].ToString();
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            SetViewBag(news.CategoryID);
            return View(news);
        }

        [HttpDelete]
        public ActionResult Delete(long id)
        {

            News news = db.Newses.Find(id);
            db.Newses.Remove(news);
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
            ViewBag.CategoryID = new SelectList(db.Categories.Where(x => x.Status == true).ToList(), "ID", "Title", selectedID);
        }
    }
}
