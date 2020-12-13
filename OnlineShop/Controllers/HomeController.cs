using Model.EF;
using OnlineShop.Common;
using OnlineShop.Models;
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
        public List<Product> NewProduct(int top)
        {
            return db.Products.OrderByDescending(x => x.CreatedDate).Take(top).ToList();
        }
        public List<Product> SaleProduct(int top)
        {
            return db.Products.OrderByDescending(x => x.PercentSale).Take(top).ToList();
        }
        [ChildActionOnly]
        [OutputCache(Duration = 3600 * 24)]
        public PartialViewResult SearchOption()
        {
            var model = db.ProductCategories.Where(x => x.Status == true && x.ParentID.HasValue).OrderBy(x => x.Order).ToList();
            return PartialView(model);
        }
        [ChildActionOnly]
        [OutputCache(Duration = 3600 * 24)]
        public PartialViewResult ListNewProduct()
        {
            ViewBag.NewProducts = NewProduct(8);
            return PartialView();
        }
        [ChildActionOnly]
        [OutputCache(Duration = 3600 * 24)]
        public PartialViewResult ListSaleProduct()
        {
            ViewBag.SaleProducts = SaleProduct(8);
            return PartialView();
        }
        public ActionResult Index()
        {
            return View();
        }
        [ChildActionOnly]
        [OutputCache(Duration =3600 * 24)]
        public ActionResult MainNavMenu()
        {
            return PartialView(db.Menus.Where(x=>x.GroupID=="top" && x.IsLocked==true).OrderBy(x=>x.Order).ToList());
        }
        [ChildActionOnly]
        [OutputCache(Duration = 3600 * 24)]
        public ActionResult Footer()
        {
            var model = db.Footers.SingleOrDefault(x => x.Status == true);
            return PartialView(model);
        }
        [ChildActionOnly]
        [OutputCache(Duration = 3600 * 24)]
        public ActionResult Brand()
        {
            var model = db.Brands.Where(x => x.Status == true).OrderBy(x=>x.Order).ToList();
            return PartialView(model);
        }
        [ChildActionOnly]
        [OutputCache(Duration = 3600 * 24)]
        public ActionResult Slide()
        {
            return PartialView(db.Slides.Where(x=>x.Status==true).OrderBy(x => x.Order).ToList());
        }
        [ChildActionOnly]
        [OutputCache(Duration = 3600 * 24)]
        public ActionResult HomeCategory()
        {
            return PartialView(db.ProductCategories.Where(x => x.Status == true).OrderBy(x => x.Order).ToList());
        }
        [ChildActionOnly]
        public PartialViewResult HeaderCart()
        {
            var cart = Session[SessionMember.CartSession];
            var list = new List<CartItem>();
            if (cart != null)
            {
                list = (List<CartItem>)cart;
            }
            return PartialView(list);
        }
        [ChildActionOnly]
        public PartialViewResult RecentProduct()
        {
            var recentProduct = Session[SessionMember.RecentProduct];
            var list = new List<RecentProduct>();
            if (recentProduct != null)
            {
                list = (List<RecentProduct>)recentProduct;
            }
            return PartialView(list);
        }
    }
}