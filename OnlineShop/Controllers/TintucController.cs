using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace OnlineShop.Controllers
{
    [HandleError]
    public class TintucController : Controller
    {
        private OnlineShopDbContext db = new OnlineShopDbContext();
        public ActionResult Index()
        {
            ViewBag.NewestPosts = db.Newses.Where(x => x.CategoryID == 4).OrderByDescending(x => x.PublishedDate).Take(4).ToList();
            ViewBag.ProductReviews = db.Newses.Where(x => x.CategoryID == 6).OrderByDescending(x => x.PublishedDate).Take(3).ToList();
            ViewBag.NewestVideo = db.Newses.Where(x => x.CategoryID == 7).OrderByDescending(x => x.PublishedDate).Take(1).ToList();
            ViewBag.VideoNewses = db.Newses.Where(x => x.CategoryID == 7 && x.ID!=65).OrderByDescending(x => x.PublishedDate).Take(4).ToList();
            ViewBag.Socials = db.Socials.OrderBy(x => x.Order).ToList();
            return View();
        }
    }
}