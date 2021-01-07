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
        [Display(Name = "Tiêu đề")]
        public string Title { get; set; }

        [StringLength(50)]
        [Display(Name = "Mã sản phẩm")]
        public string Code { get; set; }

        [StringLength(250)]
        [Display(Name = "Tiêu đề SEO")]
        public string MetaTitle { get; set; }

        [Display(Name = "Mô tả ngắn")]
        public string Description { get; set; }

        [StringLength(250)]
        [Display(Name = "Ảnh thumbnail")]
        public string Thumb { get; set; }

        [Display(Name ="Hình ảnh chi tiết")]
        [Column(TypeName = "xml")]
        public string Images { get; set; }

        [Display(Name = "Giá KM")]
        public decimal? Price { get; set; }

        [Display(Name = "Giá")]
        public decimal? OldPrice { get; set; }

        [StringLength(250)]
        public string MetaKeywords { get; set; }

        [StringLength(250)]
        public string MetaDescription { get; set; }

        [Display(Name = "Số lượng")]
        public int Quantity { get; set; }

        [Display(Name = "Ngày tạo")]
        public DateTime? CreatedDate { get; set; }

        [StringLength(10)]
        [Display(Name = "Người tạo")]
        public string CreatedBy { get; set; }

        [Display(Name = "Ngày sửa")]
        public DateTime? UpdatedDate { get; set; }

        [StringLength(10)]
        [Display(Name = "Người sửa")]
        public string UpdatedBy { get; set; }

        [Display(Name = "Danh mục")]
        public long CategoryID { get; set; }

        [Display(Name = "Lượt xem")]
        public long? ViewCount { get; set; }

        [Display(Name = "Nhãn hàng")]
        public int BrandID { get; set; }

        //[Display(Name = "Up New")]
        //public DateTime? UpTopNew { get; set; }

        [Display(Name = "SP Hot")]
        public bool UpTopHot { get; set; }

        [Display(Name = "Chi tiết")]
        [Column(TypeName = "ntext")]
        public string Detail { get; set; }

        [Display(Name = "Bảo hành (tháng)")]
        public int? Guarantee { get; set; }

        [StringLength(250)]
        [Display(Name = "Video")]
        public string Video { get; set; }

        [Column(TypeName = "ntext")]
        [Display(Name = "Thông sô")]
        public string Specification { get; set; }

        public long? PercentSale { get; set; }
        public virtual Brand Brand { get; set; }

        public virtual ProductCategory ProductCategory { get; set; }
    }
}
