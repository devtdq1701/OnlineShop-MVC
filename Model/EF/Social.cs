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
        public string Title { get; set; }

        [Display(Name = "Icon")]
        [Column(TypeName = "ntext")]
        public string Icon { get; set; }

        [StringLength(250)]
        public string Link { get; set; }

        public DateTime? CreatedDate { get; set; }

        [StringLength(20)]
        public string CreatedBy { get; set; }

        public DateTime? UpdatedDate { get; set; }

        [StringLength(20)]
        public string UpdatedBy { get; set; }

        public int? Order { get; set; }

        public bool? Status { get; set; }
    }
}
