using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data;
using System.Data.SqlClient;
using  ValueObject;
using  DataAccessLayer;

namespace BusinessLogicLayer
{
    public class SanPhamBUS
    {
        SanPhamDAL dao=new SanPhamDAL();

        public DataTable GetData()
        {
            return dao.GetData();
        }
        public DataTable GetDataByID(string IDSanPham)
        {
            return dao.GetDataByID(IDSanPham);
        }

        public int Insert(SanPham obj)
        {
            return dao.Insert(obj);
        }

        public int Update(SanPham obj)
        {
            return dao.Update(obj);
        }
        public int Delete(string IDSanPham)
        {
            return dao.Delete(IDSanPham);
        }

        public DataTable GetDataNCC()
        {
            return dao.GetDataNCC();
        }
        public DataTable GetDataLoaiSP()
        {
            return dao.GetDataLoaiSP();
        }


    }
}
