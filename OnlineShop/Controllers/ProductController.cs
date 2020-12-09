using Model.EF;
using OnlineShop.Areas.Admin.Models;
using OnlineShop.Common;
using OnlineShop.Models;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace OnlineShop.Controllers
{
    [HandleError]
    public class ProductController : Controller
    {
        private OnlineShopDbContext db = new OnlineShopDbContext();
        //[OutputCache(Duration =int.MaxValue, VaryByParam ="id",Location =System.Web.UI.OutputCacheLocation.Server)]
        public List<Product> ProductList(long id, long pid, int top)
        {
            return db.Products.Where(x=>x.CategoryID==id && x.CategoryID != pid).OrderByDescending(x => x.CreatedDate).Take(top).ToList();
        }
        [OutputCache(CacheProfile ="Cache1DayForProduct")]
        public ActionResult Detail(long id)
        {
            var model = db.Products.Find(id);
            // Tăng số lần xem
            model.ViewCount++;
            db.SaveChanges();
            var RecentProduct = Session["RecentProductList"];
            if (RecentProduct != null)
            {
                var list = (List<RecentProduct>)RecentProduct;
                if (list.Exists(x => x.Product.ID == id))
                {

                }
                else
                {
                    var item = new RecentProduct();
                    item.Product = model;
                    list.Add(item);
                }
                Session["RecentProductList"] = list;
            }
            else
            {
                //tạo mới cart item
                var item = new RecentProduct();
                item.Product = model;
                var list = new List<RecentProduct>();
                list.Add(item);
                //gán vào session
                Session["RecentProductList"] = list;

            }
            ViewBag.SameProducts = ProductList(model.CategoryID,id,8);
            return View(model);
        }
        [ChildActionOnly]
        [OutputCache(Duration = 3600 * 24)]
        public ActionResult CategoriesMenu()
        {
            return PartialView(db.ProductCategories.Where(x => x.Status == true).OrderBy(x => x.Order).ToList());
        }
        public JsonResult ListName(string q)
        {
            var data= db.Products.Where(x => x.Title.Contains(q)).Select(x => x.Title).ToList();
            return Json(new { data = data, status = true }, JsonRequestBehavior.AllowGet);
        }
        public ActionResult Search(string keyword, int? page = 1)
        {
            var model = db.Products.Where(x => x.Title.Contains(keyword)).OrderByDescending(x => x.CreatedDate).ToList();
            int pageSize = 12;
            int pageNumber = (page ?? 1);
            ViewBag.Keyword = keyword;
            return View(model.ToPagedList(pageNumber, pageSize));
        }
    }
}