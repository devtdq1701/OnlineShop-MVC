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
        [Display(Name = "Tên sản phẩm")]
        public string Title { get; set; }

        [StringLength(50)]
        [Display(Name = "Mã sản phẩm")]
        public string Code { get; set; }

        [StringLength(250)]
        [Display(Name = "Thẻ tiêu đề")]
        public string MetaTitle { get; set; }

        [StringLength(250)]
        [Display(Name = "Mô tả chi tiết")]
        public string Description { get; set; }

        [Display(Name = "Hình ảnh")]
        public string Images { get; set; }

        [StringLength(250)]
        [Display(Name = "Hình ảnh 2")]
        public string Images2nd { get; set; }

        [StringLength(250)]
        [Display(Name = "Hình ảnh 3")]
        public string Images3rd { get; set; }

        [Display(Name = "Giá hiện tại")]
        public decimal? Price { get; set; }

        [Display(Name = "Giá cũ")]
        public decimal? OldPrice { get; set; }

        [StringLength(250)]
        [Display(Name = "Thẻ từ khoá")]
        public string MetaKeywords { get; set; }

        [StringLength(250)]
        [Display(Name = "Thẻ mô tả")]
        public string MetaDescription { get; set; }

        [Display(Name = "Số lượng:")]
        public int Quantity { get; set; }

        public DateTime? CreatedDate { get; set; }

        [StringLength(10)]
        public string CreatedBy { get; set; }

        public DateTime? UpdatedDate { get; set; }

        [StringLength(10)]
        public string UpdatedBy { get; set; }

        [Display(Name = "Loại sản phẩm")]
        public long CategoryID { get; set; }

        [Display(Name = "Lượt xem")]
        public int? ViewCount { get; set; }

        [StringLength(50)]
        [Display(Name = "Nguồn")]
        public string Source { get; set; }

        [Display(Name = "Mới")]
        public DateTime? UpTopNew { get; set; }

        [Display(Name = "Hot")]
        public DateTime? UpTopHot { get; set; }

        [Display(Name = "Chi tiết")]
        [Column(TypeName = "ntext")]
        public string Detail { get; set; }

        public virtual ProductCategory ProductCategory { get; set; }
    }
}