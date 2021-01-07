namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Order")]
    public partial class Order
    {
        [Display(Name = "Mã đơn hàng")]
        public long ID { get; set; }

        [Display(Name = "Thời gian đặt hàng")]
        public DateTime? CreatedDate { get; set; }

        [Display(Name = "Username")]
        [StringLength(20)]
        public string CustomerID { get; set; }

        [StringLength(50)]
        [Display(Name = "Tên khách hàng")]
        public string ShipName { get; set; }

        [StringLength(250)]
        [Display(Name = "Email")]
        public string ShipEmail { get; set; }

        [StringLength(50)]
        [Display(Name = "Số điện thoại")]
        public string ShipMobile { get; set; }

        [StringLength(250)]
        [Display(Name = "Địa chỉ")]
        public string ShipAddress { get; set; }

        [StringLength(20)]
        [Display(Name = "Trạng thái")]
        public string Status { get; set; }

        [Display(Name = "Ghi chú")]
        public string Note { get; set; }

        [Display(Name = "Tổng tiền")]
        public decimal? TotalPrice { get; set; }
    }
}
