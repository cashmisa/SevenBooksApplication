using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SevenBooksApplication.Models;
using System.Web.Security;
using System.Security.Principal;

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

            if (cartList.Count == 0)
            {
                btnCart.Text = "View Cart";
            }
            else
            {
                btnCart.Text = string.Format("View Cart ({0})", cartList.Count);
            }

            
            string userName = "";



    //        if (System.Web.HttpContext.Current != null &&
    //System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
    //        {
    //            System.Web.Security.MembershipUser usr = Membership.GetUser();
    //            if (usr != null)
    //            {
    //                userName = HttpContext.Current.User.Identity.Name;
    //            }
    //        }

            //if (Roles.FindUsersInRole("admin", userName).Length == 0)
            //{
            //    btnManageBook.Visible = false;
            //    btnManageCustomer.Visible = false;
            //}
            //else
            //{
            //    btnManageBook.Visible = true;
            //    btnManageCustomer.Visible = true;
            //}

            if (userName == "")
            {
                btnWelcome.Text = "Welcome, Guest";
            }else
            {
                btnWelcome.Text = string.Format("Welcome, {0}", userName);
            }
        }
    }
}