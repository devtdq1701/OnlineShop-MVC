namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Footer
    {
        [StringLength(50)]
        public string ID { get; set; }

        [Required]
        [StringLength(250)]
        [Display(Name = "Tiêu đề")]
        public string Title { get; set; }

        [Column(TypeName = "ntext")]
        [Display(Name = "Nội dung HTML")]
        public string ContentHtml { get; set; }

        [Display(Name = "Tình trạng")]
        public bool Status { get; set; }
    }
}
