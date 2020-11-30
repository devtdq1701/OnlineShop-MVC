namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Product
    {
        public long ID { get; set; }

        [Required]
        [StringLength(250)]
        public string Title { get; set; }

        [StringLength(50)]
        public string Code { get; set; }

        [StringLength(250)]
        public string MetaTitle { get; set; }

        public string Description { get; set; }

        [StringLength(250)]
        public string Images { get; set; }

        [StringLength(250)]
        public string Images2nd { get; set; }

        [StringLength(250)]
        public string Images3rd { get; set; }

        public decimal? Price { get; set; }

        public decimal? OldPrice { get; set; }

        [StringLength(250)]
        public string MetaKeywords { get; set; }

        [StringLength(250)]
        public string MetaDescription { get; set; }

        public int Quantity { get; set; }

        public DateTime? CreatedDate { get; set; }

        [StringLength(10)]
        public string CreatedBy { get; set; }

        public DateTime? UpdatedDate { get; set; }

        [StringLength(10)]
        public string UpdatedBy { get; set; }

        public long CategoryID { get; set; }

        public int? ViewCount { get; set; }

        public int BrandID { get; set; }

        public DateTime? UpTopNew { get; set; }

        public DateTime? UpTopHot { get; set; }

        [Column(TypeName = "ntext")]
        public string Detail { get; set; }

        public virtual Brand Brand { get; set; }

        public virtual ChildCategory ChildCategory { get; set; }
    }
}
