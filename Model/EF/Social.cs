namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Social
    {
        public int ID { get; set; }

        [StringLength(50)]
        [Display(Name = "Tiêu đề")]
        public string Title { get; set; }

        [Display(Name = "Icon")]
        [Column(TypeName = "ntext")]
        public string Icon { get; set; }

        [StringLength(250)]
        [Display(Name = "Đường dẫn")]
        public string Link { get; set; }

        [Display(Name = "Thời gian sửa")]
        public DateTime? CreatedDate { get; set; }

        [StringLength(20)]
        [Display(Name = "Trạng thái")]
        public string CreatedBy { get; set; }

        [Display(Name = "Thời gian sửa")]
        public DateTime? UpdatedDate { get; set; }

        [StringLength(20)]
        [Display(Name = "Sửa bởi")]
        public string UpdatedBy { get; set; }

        [Display(Name = "Thứ tự hiển thị")]
        public int? Order { get; set; }

        [Display(Name = "Trạng thái")]
        public bool? Status { get; set; }
    }
}
