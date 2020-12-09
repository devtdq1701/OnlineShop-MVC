using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
using PagedList.Mvc;

namespace OnlineShop.Controllers
{
    public class LoaiTinTucController : Controller
    {
        private OnlineShopDbContext db = new OnlineShopDbContext();
        public ActionResult Index(long id, int? page = 1)
        {
            var model=db.Newses.Where(x => x.CategoryID == id).OrderByDescending(x => x.PublishedDate);
            Category category = db.Categories.Find(id);
            ViewBag.CategoryName = category.Title;
            ViewBag.CategoryMeta = category.MetaTitle;
            ViewBag.CategoryID = category.ID;
            int pageSize = 12;
            int pageNumber = (page ?? 1);
            return View(model.ToPagedList(pageNumber,pageSize));
        }
    }
}