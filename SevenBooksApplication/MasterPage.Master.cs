using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SevenBooksApplication.Models;


namespace SevenBooksApplication
{
    public partial class MasterPage : System.Web.UI.MasterPage

    {
        public List<Book> cartList
        {
            get
            {
                if (Session["carList"] != null)
                {

                }
                else
                {
                    Session["cartList"] = new List<Book>();
                }
                return (List<Book>)Session["cartList"];
            }
            set
            {
                Session["cartList"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (hdfUserID.Value == null)
            {
                btnLogin.Text = "Login / Register";
            }else
            {
                btnLogin.Text = "Logout";

            }

            if(cartList.Count == 0)
            {
                btnCart.Text = "View Cart";
            }else
            {
                btnCart.Text = string.Format("View Cart ({0})", cartList.Count);
            }

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if(btnLogin.Text == "Login / Register")
            {
                Response.Redirect("HomePage");
            }
            else if (btnLogin.Text == "Logout")
            {
                Response.Redirect("HomePage");
            }
        }


    }
}