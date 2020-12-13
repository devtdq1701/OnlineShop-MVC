﻿using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace OnlineShop.Controllers
{
    public class ChiTietTinTucController : Controller
    {
        private OnlineShopDbContext db = new OnlineShopDbContext();
        public ActionResult Index(string metatitle,long id)
        {
            var model = db.Newses.Find(id);
            ViewBag.RelatedNewses = db.Newses.Where(x => x.CategoryID == model.CategoryID).Take(3).ToList();
            if (model.MetaTitle == metatitle)
            {
                return View(model);
            }
            return RedirectToAction("Error404", "Error");
        }
    }
}