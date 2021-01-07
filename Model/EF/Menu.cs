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
        [Display(Name = "Nội dung hiển thị")]
        public string Text { get; set; }

        [Required]
        [StringLength(250)]
        [Display(Name = "Đường dẫn")]
        public string Link { get; set; }

        [Required]
        [StringLength(10)]
        [Display(Name = "Target")]
        public string Target { get; set; }

        [Display(Name = "Thứ tự")]
        public int Order { get; set; }

        [StringLength(50)]
        public string CssClass { get; set; }

        public bool IsLocked { get; set; }

        public bool IsDeleted { get; set; }

        [Required]
        [StringLength(50)]
        [Display(Name = "Loại Menu")]
        public string GroupID { get; set; }

        [StringLength(50)]
        [Display(Name = "Danh mục cha")]
        public string ParentID { get; set; }

        [Display(Name = "Thời gian tạo")]
        public DateTime? CreatedDate { get; set; }

        [StringLength(20)]
        [Display(Name = "Tạo bởi")]
        public string CreatedBy { get; set; }

        [StringLength(20)]
        [Display(Name = "Thời gian sửa")]
        public string UpdatedBy { get; set; }

        [Display(Name = "Sửa bởi")]
        public DateTime? UpdatedDate { get; set; }

        public virtual MenuType MenuType { get; set; }
    }
}
