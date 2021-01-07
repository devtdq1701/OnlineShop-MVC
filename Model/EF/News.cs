namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Newses")]
    public partial class News
    {
        public long ID { get; set; }

        [Required]
        [StringLength(250)]
        [Display(Name = "Tiêu đề")]
        public string Title { get; set; }

        [StringLength(250)]
        [Display(Name = "Tiêu đề tóm tắt")]
        public string ShortTitle { get; set; }

        [StringLength(250)]
        [Display(Name = "Thẻ SEO")]
        public string MetaTitle { get; set; }

        [Display(Name = "Mô tả")]
        public string Description { get; set; }

        [Column(TypeName = "ntext")]
        [Display(Name = "Nội dung HTML")]
        public string ContentHtml { get; set; }

        [StringLength(250)]
        [Display(Name = "Hình ảnh")]
        public string Images { get; set; }

        [StringLength(250)]
        public string MetaKeywords { get; set; }

        [StringLength(250)]
        public string MetaDescription { get; set; }

        [Display(Name = "Hiển thị")]
        public bool Status { get; set; }

        [Display(Name = "Thời gian tạo")]
        public DateTime? CreatedDate { get; set; }

        [StringLength(50)]
        [Display(Name = "Tạo bởi")]
        public string CreatedBy { get; set; }

        [Display(Name = "Thời gian sửa")]
        public DateTime? UpdatedDate { get; set; }

        [StringLength(50)]
        [Display(Name = "Sửa bởi")]
        public string UpdatedBy { get; set; }

        [Display(Name = "Ngày up")]
        public DateTime? PublishedDate { get; set; }

        [StringLength(50)]
        [Display(Name = "Bài viết liên quan")]
        public string RelatedNewes { get; set; }

        [Display(Name = "Loại bài viết")]
        public long CategoryID { get; set; }

        [Display(Name = "Lượt xem")]
        public int? ViewCount { get; set; }

        [StringLength(50)]
        [Display(Name = "Nguồn")]
        public string Source { get; set; }

        [Display(Name = "Up New")]
        public DateTime? UpTopNew { get; set; }

        [Display(Name = "Up Hot")]
        public DateTime? UpTopHot { get; set; }


        [StringLength(250)]
        [Display(Name = "Sản phẩm trong bài viết")]
        public string RelatedProduct { get; set; }

        public virtual Category Category { get; set; }
    }
}
