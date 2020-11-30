using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineShop.Areas.Admin.Models
{
    public class ProductWithCategory
    {
      
        public Product Product { get; set; }
        public ChildCategory category { get; set; }
        public Brand brand { get; set; }
    }
}