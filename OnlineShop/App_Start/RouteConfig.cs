using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace OnlineShop
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
            routes.MapRoute(
                name: "Tim kiem",
                url: "tim-kiem",
                defaults: new { controller = "Product", action = "Search", id = UrlParameter.Optional },
                namespaces: new[] { "OnlineShop.Controllers" }
            );
            routes.MapRoute(
                name: "Hoan thanh",
                url: "hoan-thanh",
                defaults: new { controller = "Cart", action = "Success", id = UrlParameter.Optional },
                namespaces: new[] { "OnlineShop.Controllers" }
            );
            routes.MapRoute(
                name: "Thanh toan",
                url: "checkout",
                defaults: new { controller = "Cart", action = "CheckOut", id = UrlParameter.Optional },
                namespaces: new[] { "OnlineShop.Controllers" }
            );
            routes.MapRoute(
                name: "Danh sach san pham",
                url: "san-pham/{metatitle}-{id}",
                defaults: new { controller = "ProductList", action = "Index", id = UrlParameter.Optional },
                namespaces: new[] { "OnlineShop.Controllers" }
            );
            routes.MapRoute(
                name: "Chi tiet tin tuc",
                url: "tin-tuc/chi-tiet/{metatitle}-{id}",
                defaults: new { controller = "ChiTietTinTuc", action = "Index", id = UrlParameter.Optional },
                namespaces: new[] { "OnlineShop.Controllers" }
            );
            routes.MapRoute(
                name: "Loai tin tuc",
                url: "tin-tuc/{metatitle}-{id}",
                defaults: new { controller = "LoaiTinTuc", action = "Index", id = UrlParameter.Optional },
                namespaces: new[] { "OnlineShop.Controllers" }
            );
            routes.MapRoute(
                name: "Tin tuc",
                url: "tin-tuc",
                defaults: new { controller = "Tintuc", action = "Index", id = UrlParameter.Optional },
                namespaces: new[] { "OnlineShop.Controllers" }
            );
            routes.MapRoute(
                name: "Cart",
                url: "gio-hang",
                defaults: new { controller = "Cart", action = "Index", id = UrlParameter.Optional },
                namespaces: new[] { "OnlineShop.Controllers" }
            );
            routes.MapRoute(
                name: "Add Cart",
                url: "them-gio-hang",
                defaults: new { controller = "Cart", action = "AddItem", id = UrlParameter.Optional },
                namespaces: new[] { "OnlineShop.Controllers" }
            );
            routes.MapRoute(
                name: "Product Detail",
                url: "chi-tiet/{metatitle}-{id}",
                defaults: new { controller = "Product", action = "Detail", id = UrlParameter.Optional },
                namespaces: new[] { "OnlineShop.Controllers" }
            );
            routes.MapRoute(
                name: "Parent Category",
                url: "{metatitle}-{id}",
                defaults: new { controller = "ParentCategory", action = "Category", id = UrlParameter.Optional },
                namespaces: new[] { "OnlineShop.Controllers" }
            );
            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineShop.Controllers" }
            );

        }
    }
}
