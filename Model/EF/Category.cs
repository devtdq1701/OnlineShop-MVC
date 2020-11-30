namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Category
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Category()
        {
            Newses = new HashSet<News>();
        }

        public long ID { get; set; }

        [Required]
        [StringLength(250)]
        [Display(Name = "Tiêu đề")]
        public string Title { get; set; }

        [StringLength(250)]
        [Display(Name = "Thẻ tiêu đề")]
        public string MetaTitle { get; set; }

        [StringLength(250)]
        [Display(Name = "Ảnh")]
        public string Images { get; set; }

        [StringLength(250)]
        [Display(Name = "Mô tả")]
        public string Description { get; set; }

        [Display(Name = "Sắp xếp")]
        public int? Order { get; set; }

        [Display(Name = "ID đa cấp")]
        public long? ParentID { get; set; }

        public DateTime? CreatedDate { get; set; }

        [StringLength(20)]
        public string CreatedBy { get; set; }

        public DateTime? UpdatedDate { get; set; }

        [StringLength(20)]
        public string UpdatedBy { get; set; }

        [StringLength(250)]
        [Display(Name = "Thẻ từ khoá")]
        public string MetaKeywords { get; set; }

        [StringLength(250)]
        [Display(Name = "Thẻ mô tả")]
        public string MetaDescription { get; set; }

        [Display(Name = "Trạng thái")]
        public bool? Status { get; set; }

        public bool? IsIntroduced { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<News> Newses { get; set; }
    }
}