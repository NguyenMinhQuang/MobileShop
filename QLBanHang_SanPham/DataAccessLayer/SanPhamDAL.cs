using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using ValueObject;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLayer
{
    public class SanPhamDAL : dbConnect
    {

        public DataTable GetData()
        {
            return base.GetData("sp_SanPham_SelectAll", null);
        }
        public DataTable GetDataByID(string IDSanPham)
        {
            SqlParameter[] para =
            {
                new SqlParameter("IDSanPham", IDSanPham)
            };
            return base.GetData("sp_SanPham_SelectByID", para);
        }

        public int Insert(SanPham obj)
        {
            SqlParameter[] para =
            {
                new SqlParameter("IDSP",obj.IDSP),
                new SqlParameter("TenSP",obj.TenSP),
                new SqlParameter("DVT_N",obj.DVT_N),
                new SqlParameter("DVT_L",obj.DVT_L),
                new SqlParameter("QuyCach",obj.QuyCach),
                new SqlParameter("DonGiaSi",obj.DonGia_Si),
                new SqlParameter("DonGiaLe",obj.DonGia_Le),
                new SqlParameter("SL_N",obj.SL_N),
                new SqlParameter("SL_L",obj.SL_L),
                new SqlParameter("NoiSX",obj.NoiSX),
                new SqlParameter("NhaSX",obj.NhaSX),
                new SqlParameter("MoTa",obj.MoTa),
                new SqlParameter("IDLoaiHang",obj.IDLoaiHang),
                new SqlParameter("IDNhaCC",obj.IDNhaCC),
            };
            return base.ExecuteSQL("sp_SanPham_Insert", para);
        }

        public int Update(SanPham obj)
        {
            SqlParameter[] para =
           {
                new SqlParameter("IDSP",obj.IDSP),
                new SqlParameter("TenSP",obj.TenSP),
                new SqlParameter("DVT_N",obj.DVT_N),
                new SqlParameter("DVT_L",obj.DVT_L),
                new SqlParameter("QuyCach",obj.QuyCach),
                new SqlParameter("DonGiaSi",obj.DonGia_Si),
                new SqlParameter("DonGiaLe",obj.DonGia_Le),
                new SqlParameter("SL_N",obj.SL_N),
                new SqlParameter("SL_L",obj.SL_L),
                new SqlParameter("NoiSX",obj.NoiSX),
                new SqlParameter("NhaSX",obj.NhaSX),
                new SqlParameter("MoTa",obj.MoTa),
                new SqlParameter("IDLoaiHang",obj.IDLoaiHang),
                new SqlParameter("IDNhaCC",obj.IDNhaCC),
            };
            return base.ExecuteSQL("sp_SanPham_Update", para);
        }
        public int Delete(string IDSanPham)
        {
            SqlParameter[] para =
               {
                new SqlParameter("IDSP", IDSanPham)
            };
            return base.ExecuteSQL("sp_SanPham_Delete", para);
        }

        public DataTable GetDataNCC()
        {
            return base.GetData("sp_NhaCungCap_SelectAll", null);
        }
        public DataTable GetDataLoaiSP()
        {
            return base.GetData("sp_LoaiHang_SelectAll", null);
        }
    }
}
