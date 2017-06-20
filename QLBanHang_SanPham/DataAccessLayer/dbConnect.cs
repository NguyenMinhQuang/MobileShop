using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace DataAccessLayer
{
    public class dbConnect
    {
        private SqlConnection conn;

        public dbConnect()
        {
            conn=new SqlConnection("Server=P2Share-PC;Database=QuanLyBanHang;Trusted_Connection=True;");
        }

        public DataTable GetData(string strSQL) //select
        {
            DataTable dt=new DataTable();
            SqlDataAdapter da=new SqlDataAdapter(strSQL,conn);
            conn.Open();
            da.Fill(dt);
            conn.Close();
            return dt;
        }
        public DataTable GetData(string procName, SqlParameter[] para)
        {
            DataTable dt=new DataTable();
            SqlCommand cmd=new SqlCommand();
            cmd.CommandText = procName;
            cmd.CommandType=CommandType.StoredProcedure;
            if(para!=null)
                cmd.Parameters.AddRange(para);
            cmd.Connection = conn;
            SqlDataAdapter da=new SqlDataAdapter();
            da.SelectCommand = cmd;
            conn.Open();
            da.Fill(dt);
            conn.Close();
            return dt;
        }

        public int ExecuteSQL(string strSQL)
        {
            SqlCommand cmd=new SqlCommand(strSQL,conn);
            conn.Open();
            int row = cmd.ExecuteNonQuery();
            conn.Close();
            return row;
        }

        public int ExecuteSQL(string procName, SqlParameter[] para)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = procName;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = conn;
            if (para != null)
                cmd.Parameters.AddRange(para);
            conn.Open();
            int row = cmd.ExecuteNonQuery();
            conn.Close();
            return row;
        }
    }
}
