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
    public class MenuTypesController : BaseController
    {
        private OnlineShopDbContext db = new OnlineShopDbContext();

        // GET: Admin/MenuTypes
        public ActionResult Index()
        {
            return View(db.MenuTypes.ToList());
        }

        // GET: Admin/MenuTypes/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MenuType menuType = db.MenuTypes.Find(id);
            if (menuType == null)
            {
                return HttpNotFound();
            }
            return View(menuType);
        }

        // GET: Admin/MenuTypes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/MenuTypes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,Name,Description,CreatedDate,CreatedBy,UpdatedDate,UpdatedBy,IsActived,IsDeleted")] MenuType menuType)
        {
            if (ModelState.IsValid)
            {
                DateTime now = DateTime.Now;
                menuType.CreatedDate = now;
                menuType.CreatedBy = Session["username"].ToString();
                db.MenuTypes.Add(menuType);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(menuType);
        }

        // GET: Admin/MenuTypes/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MenuType menuType = db.MenuTypes.Find(id);
            if (menuType == null)
            {
                return HttpNotFound();
            }
            return View(menuType);
        }

        // POST: Admin/MenuTypes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Name,Description,CreatedDate,CreatedBy,UpdatedDate,UpdatedBy,IsActived,IsDeleted")] MenuType menuType)
        {
            if (ModelState.IsValid)
            {
                db.Entry(menuType).State = EntityState.Modified;
                DateTime now = DateTime.Now;
                menuType.UpdatedDate = now;
                menuType.UpdatedBy = Session["username"].ToString();
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(menuType);
        }



        // POST: Admin/MenuTypes/Delete/5
        [HttpDelete]
        public ActionResult Delete(string id)
        {

            MenuType menuType = db.MenuTypes.Find(id);
            db.MenuTypes.Remove(menuType);
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