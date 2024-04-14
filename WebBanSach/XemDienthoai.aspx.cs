using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebBanSach .Models;

namespace WebBanSach
{
    public partial class XemSach : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            int MaHoa = int.Parse(((Button)sender).CommandArgument);
            
            Cart cart = (Cart)Session["CART"]; 
            if (cart == null) 
            {
                cart = new Cart(); 
                Session["CART"] = cart;
            }
            //thêm sản phẩm vào giỏ
            cart.Add(Masp);
           
            Response.Write("<script> alert('Đã thêm sản phẩm vào giỏ') </script>");
        }
    }
}