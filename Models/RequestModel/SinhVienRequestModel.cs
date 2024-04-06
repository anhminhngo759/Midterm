using System.ComponentModel.DataAnnotations;

namespace Midterm.Models.RequestModel
{
    public class SinhVienRequestModel
    {
        [Required]
        [StringLength(255)]
        public string? HoTen { get; set; }

        public string? NamNhapHoc { get; set; }

    }
}
