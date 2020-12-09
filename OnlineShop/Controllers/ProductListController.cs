using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;

namespace OnlineShop.Controllers
{
    public class ProductListController : Controller
    {
        private OnlineShopDbContext db = new OnlineShopDbContext();
        // GET: ProductList
        public ActionResult Index(string Sorting_Order,long id, int? page = 1)
        {
            ViewBag.CurrentSortOrder = Sorting_Order;
            ViewBag.SortingName = String.IsNullOrEmpty(Sorting_Order) ? "Name_Description" : "";
            ViewBag.SortingDate = String.IsNullOrEmpty(Sorting_Order) ? "Date_Enroll" : "";
            var model = db.Products.Where(x => x.CategoryID == id).OrderByDescending(x => x.CreatedDate);
            ProductCategory productCategory = db.ProductCategories.Find(id);
            ViewBag.CategoryName = productCategory.Title;
            ViewBag.CategoryMeta = productCategory.MetaTitle;
            ViewBag.CategoryID = productCategory.ID;
            ViewBag.ShortDesc = productCategory.ShortDesc;
            ViewBag.Desc = productCategory.Description;
            int pageSize = 12;
            int pageNumber = (page ?? 1);
            switch (Sorting_Order)
            {
                case "Name_Description":
                    model = db.Products.OrderByDescending(x=>x.Title);
                    break;
                case "Date_Enroll":
                    model = db.Products.OrderBy(x=>x.CreatedDate);
                    break;
                default:
                    model = db.Products.OrderByDescending(x => x.Title);
                    break;
            }
            return View(model.ToPagedList(pageNumber, pageSize));
        }
    }
}