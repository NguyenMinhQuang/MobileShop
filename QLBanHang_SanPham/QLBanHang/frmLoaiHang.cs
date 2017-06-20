using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraEditors;

using  ValueObject;
using BusinessLogicLayer;
 

namespace QLBanHang
{
    public partial class frmLoaiHang : DevExpress.XtraEditors.XtraForm
    {
        public frmLoaiHang()
        {
            InitializeComponent();
        }
        LoaiHang obj=new LoaiHang();
        LoaiHangBUS bus=new LoaiHangBUS();
        private bool IsInsert = false;
        void KhoaDieuKhien()
        {
            txtID.Enabled = false;
            txtTen.Enabled = false;
            txtMoTa.Enabled = false;

            btnThem.Enabled = true;
            btnLuu.Enabled = false;
            btnSua.Enabled = true;
            btnXoa.Enabled = true;
        }
        void MoKhoaDieuKhien()
        {
            txtID.Enabled = true;
            txtTen.Enabled = true;
            txtMoTa.Enabled = true;

            btnThem.Enabled = false;
            btnLuu.Enabled = true;
            btnSua.Enabled = false;
            btnXoa.Enabled = false;
        }

        void XoaText()
        {
            txtID.Text=String.Empty;
            txtTen.Text = String.Empty;
            txtMoTa.Text = String.Empty;
        }

        void HienThi()
        {
            msds.DataSource = bus.GetData();
        }

        private void frmLoaiHang_Load(object sender, EventArgs e)
        {
            KhoaDieuKhien();
            HienThi();
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            MoKhoaDieuKhien();
            IsInsert = true;
            XoaText();
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            MoKhoaDieuKhien();
            txtID.Enabled = false;
            IsInsert = false;
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            if (XtraMessageBox.Show("Bạn có muốn xóa thông tin này không?", "Thông báo", MessageBoxButtons.YesNo) ==
                DialogResult.Yes)
            {
                try
                {
                    bus.Delete(txtID.Text);
                    XtraMessageBox.Show("Đã xóa thông tin thành công");
                    XoaText();
                    KhoaDieuKhien();
                    HienThi();
                }
                catch
                {
                }
            }
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            obj.IDLoaiHang = txtID.Text;
            obj.TenLoai = txtTen.Text;
            obj.MoTa = txtMoTa.Text;
            if (IsInsert == true)
            {
                //insert
                bus.Insert(obj);
                XtraMessageBox.Show("Thêm thông tin thành công");
                HienThi();
                XoaText();
                KhoaDieuKhien();
            }
            else
            {
                //update
                bus.Update(obj);
                XtraMessageBox.Show("Sửa thông tin thành công");
                HienThi();
                XoaText();
                KhoaDieuKhien();
            }
        }

        private void msds_Click(object sender, EventArgs e)
        {
            KhoaDieuKhien();
            try
            {
                txtID.Text = gridView1.GetRowCellValue(gridView1.FocusedRowHandle, gridView1.Columns[0]).ToString();
                txtTen.Text = gridView1.GetRowCellValue(gridView1.FocusedRowHandle, gridView1.Columns[1]).ToString();
                txtMoTa.Text = gridView1.GetRowCellValue(gridView1.FocusedRowHandle, gridView1.Columns[2]).ToString();
            }
            catch 
            {
                
            }
        }
    }
}