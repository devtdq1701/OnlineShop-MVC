using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace OnlineShop.Controllers
{
    [HandleError]
    public class ParentCategoryController : Controller
    {
        private OnlineShopDbContext db = new OnlineShopDbContext();
        public ActionResult Category(string metatitle,long id)
        {
            var model = db.ProductCategories.Find(id);
            if (model.MetaTitle == metatitle)
            {
                ViewBag.ChildCategories = db.ProductCategories.Where(x => x.ParentID == id).OrderBy(x => x.Order).ToList();
                return View(model);
            }
            return RedirectToAction("Error404", "Error");

        }
    }
}