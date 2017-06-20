using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ValueObject
{
    public class SanPham
    {
        public string IDSP { get; set; }
        public string TenSP { get; set; }
        public string DVT_N { get; set; }
        public string DVT_L { get; set; }
        public string QuyCach { get; set; }
        public string DonGia_Si { get; set; }
        public string DonGia_Le { get; set; }
        public string SL_L { get; set; }
        public string SL_N { get; set; }
        public string NhaSX { get; set; }
        public string NoiSX { get; set; }
        public string MoTa { get; set; }
        public string IDLoaiHang { get; set; }
        public string IDNhaCC { get; set; }
    }
}
