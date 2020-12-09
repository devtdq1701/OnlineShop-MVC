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
        public string Title { get; set; }

        [StringLength(250)]
        public string ShortTitle { get; set; }

        [StringLength(250)]
        public string MetaTitle { get; set; }

        public string Description { get; set; }

        [Column(TypeName = "ntext")]
        public string ContentHtml { get; set; }

        [StringLength(250)]
        public string Images { get; set; }

        [StringLength(250)]
        public string MetaKeywords { get; set; }

        [StringLength(250)]
        public string MetaDescription { get; set; }

        public bool? Status { get; set; }

        public DateTime? CreatedDate { get; set; }

        [StringLength(50)]
        public string CreatedBy { get; set; }

        public DateTime? UpdatedDate { get; set; }

        [StringLength(50)]
        public string UpdatedBy { get; set; }

        [Display(Name = "Ngày up")]
        public DateTime? PublishedDate { get; set; }

        [StringLength(50)]
        public string RelatedNewes { get; set; }

        public long CategoryID { get; set; }

        public int? ViewCount { get; set; }

        [StringLength(50)]
        public string Source { get; set; }

        [Display(Name = "Up New")]
        public DateTime? UpTopNew { get; set; }

        [Display(Name = "Up Hot")]
        public DateTime? UpTopHot { get; set; }


        [StringLength(250)]
        public string RelatedProduct { get; set; }

        public virtual Category Category { get; set; }
    }
}
