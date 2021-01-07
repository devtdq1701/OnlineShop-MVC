namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Feedback
    {
        public long ID { get; set; }

        [StringLength(100)]
        [Display(Name = "Tiêu đề")]
        public string Title { get; set; }

        [StringLength(50)]
        [Display(Name = "Tên khách hàng")]
        public string Name { get; set; }

        [StringLength(100)]
        [Display(Name = "Công ty")]
        public string Company { get; set; }

        [StringLength(150)]
        [Display(Name = "Địa chỉ")]
        public string Address { get; set; }

        [StringLength(50)]
        [Display(Name = "Số điện thoại")]
        public string Phone { get; set; }

        [StringLength(250)]
        [Display(Name = "Hình ảnh")]
        public string Image { get; set; }

        [StringLength(50)]
        [Display(Name = "Email")]
        public string Email { get; set; }

        [StringLength(500)]
        [Display(Name = "Nội dung")]
        public string Message { get; set; }

        [Display(Name = "Thời gian tạo")]
        public DateTime? CreatedDate { get; set; }

        [Display(Name = "Trạng thái")]
        public bool IsReaded { get; set; }
    }
}
