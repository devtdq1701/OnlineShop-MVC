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
        [Display(Name = "Thẻ tiêu đề")]
        public string MetaTitle { get; set; }

        [Display(Name = "Mô tả")]
        [Required]
        public string Description { get; set; }

        [Column(TypeName = "ntext")]
        [Display(Name = "Nội dung HTML")]
        public string ContentHtml { get; set; }

        [StringLength(250)]
        [Display(Name = "Ảnh")]
        public string Images { get; set; }

        [StringLength(250)]
        [Display(Name = "Thẻ từ khoá")]
        public string MetaKeywords { get; set; }

        [StringLength(250)]
        [Display(Name = "Thẻ mô tả")]
        public string MetaDescription { get; set; }

        [Display(Name = "Trạng thái")]
        public int Status { get; set; }

        public DateTime? CreatedDate { get; set; }

        [StringLength(50)]
        public string CreatedBy { get; set; }

        public DateTime? UpdatedDate { get; set; }

        [StringLength(50)]
        public string UpdatedBy { get; set; }

        [Display(Name = "Ngày đăng")]
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

        [Display(Name = "Mới")]
        public DateTime? UpTopNew { get; set; }

        [Display(Name = "Hot")]
        public DateTime? UpTopHot { get; set; }

        public virtual Category Category { get; set; }
    }
}