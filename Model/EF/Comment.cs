namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Comment
    {
        public long ID { get; set; }

        [Required]
        [StringLength(250)]
        public string Email { get; set; }

        [Display(Name = "Username")]
        [StringLength(20)]
        public string UserID { get; set; }

        [Required]
        [StringLength(250)]
        public string FullName { get; set; }

        [Required]
        public string Review { get; set; }

        public DateTime SentDate { get; set; }

        public long ProductID { get; set; }

        public bool Approved { get; set; }

        public int Stars { get; set; }
    }
}
