namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Menu
    {
        [StringLength(50)]
        public string ID { get; set; }

        [Required]
        [StringLength(50)]
        [Display(Name = "Tên")]
        public string Name { get; set; }

        [StringLength(50)]
        [Display(Name = "Mô tả")]
        public string Description { get; set; }

        [Required]
        [StringLength(250)]
        [Display(Name = "Text hiển thị")]
        public string Text { get; set; }

        [Required]
        [StringLength(250)]
        [Display(Name = "Đường dẫn")]
        public string Link { get; set; }

        [Required]
        [StringLength(10)]
        [Display(Name = "Giá trị Target")]
        public string Target { get; set; }

        public int Order { get; set; }

        [StringLength(50)]
        [Display(Name = "Lớp CSS")]
        public string CssClass { get; set; }

        [Display(Name = "Đã khoá")]
        public bool IsLocked { get; set; }

        [Display(Name = "Đã xoá")]
        public bool IsDeleted { get; set; }

        [Required]
        [StringLength(50)]
        public string GroupID { get; set; }

        [StringLength(50)]
        [Display(Name = "ID Parent")]
        public string ParentID { get; set; }

        [Display(Name = "Ngày tạo")]
        public DateTime? CreatedDate { get; set; }

        [StringLength(20)]
        [Display(Name = "Người tạo")]
        public string CreatedBy { get; set; }

        [StringLength(20)]
        [Display(Name = "Người sửa")]
        public string UpdatedBy { get; set; }

        [Display(Name = "Ngày sửa")]
        public DateTime? UpdatedDate { get; set; }

        public virtual MenuType MenuType { get; set; }
    }
}
