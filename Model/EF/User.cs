namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class User
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public User()
        {
            Permissions = new HashSet<Permission>();
        }

        [Key]
        [Required(ErrorMessage = "Cần nhập username")]
        [StringLength(20, ErrorMessage = "Tối đa 20 kí tự")]
        [Display(Name = "Tên đăng nhập")]
        public string UserName { get; set; }

        [Required(ErrorMessage = "Cần nhập password")]
        [StringLength(100, ErrorMessage = "Tối đa 32 kí tự")]
        [Display(Name = "Mật khẩu")]
        public string Password { get; set; }

        [StringLength(32, ErrorMessage = "Tối đa 32 kí tự")]
        [Display(Name = "Mật khẩu lv2")]
        public string PasswordLevel2 { get; set; }

        [Required(ErrorMessage = "Cần nhập email")]
        [StringLength(50, ErrorMessage = "Tối đa 50 kí tự")]
        [EmailAddress]
        [RegularExpression(@"[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}", ErrorMessage = "Email không hợp lệ")]
        public string Email { get; set; }

        [StringLength(20, ErrorMessage = "Tối đa 20 kí tự")]
        [Display(Name = "SĐT")]
        public string Mobile { get; set; }

        [StringLength(50, ErrorMessage = "Tối đa 50 kí tự")]
        [Display(Name = "Tên")]
        public string Name { get; set; }

        [StringLength(50, ErrorMessage = "Tối đa 50 kí tự")]
        [Display(Name = "Địa chỉ")]
        public string Address { get; set; }

        [Display(Name = "Giới tính")]
        public bool Sex { get; set; }

        public DateTime? UpdatedDate { get; set; }

        [StringLength(20)]
        public string UpdatedBy { get; set; }

        [Display(Name = "Ngày tạo")]
        public DateTime? CreatedDate { get; set; }

        [StringLength(10)]
        [Display(Name = "Người tạo")]
        public string CreatedBy { get; set; }

        public DateTime? LastLoginDate { get; set; }

        public DateTime? LastChangePassword { get; set; }

        [StringLength(20)]
        [Display(Name = "Nhóm người dùng")]
        public string GroupID { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Permission> Permissions { get; set; }

        public virtual UserGroup UserGroup { get; set; }
    }
}
