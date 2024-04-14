using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBanSach
{
    public partial class GioHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LienKetDuLieuChoGridView();
            }
        }
        private void LienKetDuLieuChoGridView()
        {
            Cart cart = (Cart)Session["CART"];
            if (cart != null)
            {
                gvGioHang.DataSource = cart.Items;
                gvGioHang.DataBind();
                lbTongTien.Text = string.Format("{0:#,##0} đồng", cart.Total);
            }
        }
        protected void gvGioHang_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            
            int masp = int.Parse(gvGioHang.DataKeys[e.RowIndex].Value.ToString());
         
            Cart cart = (Cart)Session["CART"];
            
            cart.Delete(masp);
           
            LienKetDuLieuChoGridView();
        }

        protected void gvGioHang_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
           
            int Masp = int.Parse(gvGioHang.DataKeys[e.RowIndex].Value.ToString());
            int soluong = int.Parse(((TextBox)gvGioHang.Rows[e.RowIndex].FindControl("txtSoLuong")).Text);
          
            Cart cart = (Cart)Session["CART"];
           
            cart.Update(Masp, soluong);
          
            LienKetDuLieuChoGridView();
        }
    }
}
    
