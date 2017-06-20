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
using BusinessLogicLayer;

namespace QLBanHang
{
    public partial class frmListSanPham : DevExpress.XtraEditors.XtraForm
    {
        public frmListSanPham()
        {
            InitializeComponent();
        }
        SanPhamBUS bus=new SanPhamBUS();

        void HienThi()
        {
            msds.DataSource = bus.GetData();
            gridView1.ExpandAllGroups();
        }

        private void frmListSanPham_Load(object sender, EventArgs e)
        {
            HienThi();
        }

        private void btnHienThi_Click(object sender, EventArgs e)
        {
            HienThi();
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            if (XtraMessageBox.Show("Bạn có muốn xóa thông tin này không?", "Thông báo", MessageBoxButtons.YesNo) ==
                DialogResult.Yes)
            {
                try
                {
                    string ID = gridView1.GetRowCellValue(gridView1.FocusedRowHandle, gridView1.Columns[0]).ToString();
                    bus.Delete(ID);
                    XtraMessageBox.Show("Đã xóa thông tin thành công");
                    HienThi();
                }
                catch
                {
                }
            }
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            frmSanPham frm=new frmSanPham();
            frm.IsInsert = true;
            frm.LamMoi+=new EventHandler(btnHienThi_Click);
            frm.ShowInTaskbar = false;
            frm.ShowDialog();
        }

        private void gridView1_DoubleClick(object sender, EventArgs e)
        {
            frmSanPham frm = new frmSanPham();
            frm.IsInsert = false;
            frm.ID= gridView1.GetRowCellValue(gridView1.FocusedRowHandle, gridView1.Columns[0]).ToString();
            frm.LamMoi += new EventHandler(btnHienThi_Click);
            frm.ShowInTaskbar = false;
            frm.ShowDialog();
        }
    }
}