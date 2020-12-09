using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Model.EF;

namespace OnlineShop.Common
{
    public class ProductView
    {
        public Product Product { get; set; }
        public ProductCategory category { get; set; }
    }
}