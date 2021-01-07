namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Contact
    {
        public long ID { get; set; }

        [Display(Name = "Username")]
        [StringLength(20)]
        public string UserID { get; set; }

        [Required]
        [StringLength(250)]
        [Display(Name = "Email")]
        public string Email { get; set; }

        [Required]
        [StringLength(250)]
        [Display(Name = "Họ và tên")]
        public string FullName { get; set; }

        [Required]
        [Display(Name = "Nội dung")]
        public string Enquiry { get; set; }

        [Display(Name = "Thời gian gửi")]
        public DateTime SentDate { get; set; }

        [Display(Name = "Trạng thái")]
        public bool IsReaded { get; set; }
    }
}
