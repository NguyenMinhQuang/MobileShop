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
using ValueObject;
using BusinessLogicLayer;

namespace QLBanHang
{
    public partial class frmSanPham : DevExpress.XtraEditors.XtraForm
    {
        public frmSanPham()
        {
            InitializeComponent();
        }

        public bool IsInsert = false;
        public EventHandler LamMoi;
        public string ID = "";

        SanPham obj=new SanPham();
        SanPhamBUS bus=new SanPhamBUS();

        private void frmSanPham_Load(object sender, EventArgs e)
        {
            cbLoai.Properties.DataSource = bus.GetDataLoaiSP();
            cbLoai.Properties.ValueMember = "IDLoaiHang";
            cbLoai.Properties.DisplayMember = "TenLoaiHang";

            cbNCC.Properties.DataSource = bus.GetDataNCC();
            cbNCC.Properties.ValueMember = "IDNhaCC";
            cbNCC.Properties.DisplayMember = "TenNhaCC";

            if (IsInsert == false)
            {
                txtID.Enabled = false;
                DataTable dt=new DataTable();
                dt = bus.GetDataByID(ID);
                txtID.Text = ID;
                txtTen.Text = dt.Rows[0]["TenSanPham"].ToString();
                txtDVTN.Text= dt.Rows[0]["DVT_Nguyen"].ToString();
                txtDVTL.Text= dt.Rows[0]["DVT_Le"].ToString();
                txtQC.Text= dt.Rows[0]["QuyCach"].ToString();
                txtDGS.Text= dt.Rows[0]["DonGiaSi"].ToString();
                txtDGL.Text= dt.Rows[0]["DonGiaLe"].ToString();
                txtSLN.Text= dt.Rows[0]["SoLuongNguyen"].ToString();
                txtSLL.Text= dt.Rows[0]["SoLuongLe"].ToString();
                txtNhaSX.Text= dt.Rows[0]["NhaSanXuat"].ToString();
                txtNoiSX.Text= dt.Rows[0]["NoiSanXuat"].ToString();
                txtMoTa.Text= dt.Rows[0]["MoTa"].ToString();
                cbLoai.EditValue= dt.Rows[0]["IDLoaiHang"].ToString();
                cbNCC.EditValue= dt.Rows[0]["IDNhaCC"].ToString();

            }
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            obj.IDSP = txtID.Text;
            obj.TenSP = txtTen.Text;
            obj.DVT_N = txtDVTN.Text;
            obj.DVT_L = txtDVTL.Text;
            obj.QuyCach = txtQC.Text;
            obj.DonGia_Si = txtDGS.Text;
            obj.DonGia_Le = txtDGL.Text;
            obj.SL_N = txtSLN.Text;
            obj.SL_L = txtSLL.Text;
            obj.NhaSX = txtNhaSX.Text;
            obj.NoiSX = txtNoiSX.Text;
            obj.MoTa = txtMoTa.Text;
            obj.IDLoaiHang = cbLoai.EditValue.ToString();
            obj.IDNhaCC = cbNCC.EditValue.ToString();
            if (IsInsert == true)
            {
                bus.Insert(obj);
                XtraMessageBox.Show("Thêm thành công");
                if (LamMoi != null)
                    LamMoi(sender, e);
                this.Close();
            }
            else
            {
                bus.Update(obj);
                XtraMessageBox.Show("Sửa thành công");
                if (LamMoi != null)
                    LamMoi(sender, e);
                this.Close();
            }
        }
    }
}