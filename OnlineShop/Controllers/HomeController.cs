using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace OnlineShop.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {
        private OnlineShopDbContext db = new OnlineShopDbContext();
        // GET: Home
        public List<Product> ListNewProduct(int top)
        {
            return db.Products.OrderByDescending(x => x.CreatedDate).Take(top).ToList();
        }
        public ActionResult Index()
        {
            ViewBag.NewProducts = ListNewProduct(5);
            return View();
        }
        [ChildActionOnly]
        public ActionResult MainNavMenu()
        {
            return PartialView(db.Menus.Where(x=>x.GroupID=="top" && x.IsLocked==true).OrderBy(x=>x.Order).ToList());
        }
        [ChildActionOnly]
        public ActionResult Footer()
        {
            var model = db.Footers.SingleOrDefault(x => x.Status == true);
            return PartialView(model);
        }
        [ChildActionOnly]
        public ActionResult Brand()
        {
            var model = db.Brands.Where(x => x.Status == true).OrderBy(x=>x.Order).ToList();
            return PartialView(model);
        }
        [ChildActionOnly]
        public ActionResult Slide()
        {
            return PartialView(db.Slides.Where(x=>x.Status==true).OrderBy(x => x.Order).ToList());
        }
        [ChildActionOnly]
        public ActionResult HomeCategory()
        {
            return PartialView(db.ProductCategories.Where(x => x.Status == true).OrderBy(x => x.Order).ToList());
        }
    }
}