using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace OnlineShop.Controllers
{
    public class ParentCategoryController : Controller
    {
        private OnlineShopDbContext db = new OnlineShopDbContext();
        public ActionResult Category(long id)
        {
            var model = db.ProductCategories.Find(id);
            ViewBag.ChildCategories = db.ProductCategories.Where(x=>x.ParentID==id).OrderBy(x=>x.Order).ToList();
            return View(model);
        }
    }
}