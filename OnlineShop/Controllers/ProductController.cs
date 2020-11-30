using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace OnlineShop.Controllers
{
    public class ProductController : Controller
    {
        private OnlineShopDbContext db = new OnlineShopDbContext();
        public ActionResult Category(long id)
        {
            var model = db.ProductCategories.Find(id);
            return View(model);
        }
        public ActionResult Detail(long id)
        {
            var model = db.Products.Find(id);
            return View(model);
        }
        [ChildActionOnly]
        public ActionResult CategoriesMenu()
        {
            return PartialView(db.ProductCategories.Where(x => x.Status == true).OrderBy(x => x.Order).ToList());
        }
    }
}