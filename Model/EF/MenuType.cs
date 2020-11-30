namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class MenuType
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public MenuType()
        {
            Menus = new HashSet<Menu>();
        }

        [StringLength(50)]
        public string ID { get; set; }

        [Required]
        [StringLength(50)]
        [Display(Name = "Tên")]
        public string Name { get; set; }

        [StringLength(250)]
        [Display(Name = "Mô tả")]
        public string Description { get; set; }

        [Display(Name = "Ngày tạo")]
        public DateTime? CreatedDate { get; set; }

        [StringLength(20)]
        [Display(Name = "Người tạo")]
        public string CreatedBy { get; set; }

        [Display(Name = "Ngày sửa")]
        public DateTime? UpdatedDate { get; set; }

        [StringLength(20)]
        [Display(Name = "Người sửa")]
        public string UpdatedBy { get; set; }

        [Display(Name = "Đã Active")]
        public bool IsActived { get; set; }

        [Display(Name = "Đã xoá")]
        public bool IsDeleted { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Menu> Menus { get; set; }
    }
}