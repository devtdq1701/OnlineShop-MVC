using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace OnlineShop.Areas.Admin.Controllers
{
    [HandleError]
    public class HomeController : BaseController
    {
        private OnlineShopDbContext db = new OnlineShopDbContext();
        public ActionResult Index()
        {
            ViewBag.EarningMonth = db.Orders.Where(x=>x.CreatedDate.Value.Month == DateTime.Now.Month && x.Status=="Đã xử lý").Sum(x => x.TotalPrice);
            ViewBag.EarningYear = db.Orders.Where(x => x.CreatedDate.Value.Year == DateTime.Now.Year && x.Status == "Đã xử lý").Sum(x => x.TotalPrice);
            ViewBag.ProductCount = db.Products.Count();
            ViewBag.UserCount = db.Users.Where(x=>x.GroupID=="MEMBER").Count();

            return View();
        }
    }
}