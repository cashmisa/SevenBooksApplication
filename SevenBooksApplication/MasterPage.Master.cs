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
            bool isAdmin = false;

            if (System.Web.HttpContext.Current != null)
            {
                userName = HttpContext.Current.User.Identity.Name;

                isAdmin = Roles.IsUserInRole("admin");
            }

            //        if (System.Web.HttpContext.Current != null &&
            //System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            //        {
            //            System.Web.Security.MembershipUser usr = Membership.GetUser();
            //            if (usr != null)
            //            {
            //                userName = HttpContext.Current.User.Identity.Name;
            //            }
            //        }

            if (userName == "")
            {
                btnWelcome.Text = "Welcome, Guest";
            }
            else
            {
                btnWelcome.Text = string.Format("Welcome, {0}", userName);
            }

            if (isAdmin)
            {
                btnManageBook.Visible = true;
                btnManageCustomer.Visible = true;
            }
            else
            {
                btnManageBook.Visible = false;
                btnManageCustomer.Visible = false;
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if (tbSearch.Text != string.Empty)
            {
                Response.Redirect("~/SearchResults.aspx?SearchBy=" + ddlSearch.Text + "&Term=" + tbSearch.Text);
            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }

        }

        protected void btnChildren_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SearchResults.aspx?SearchBy=" + "Category" + "&Term=" + btnChildren.Text);
        }

        protected void btnFinance_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SearchResults.aspx?SearchBy=" + "Category" + "&Term=" + btnFinance.Text);
        }

        protected void btnNonFiction_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SearchResults.aspx?SearchBy=" + "Category" + "&Term=" + btnNonFiction.Text);
        }

        protected void btnTechnical_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SearchResults.aspx?SearchBy=" + "Category" + "&Term=" + btnTechnical.Text);
        }

        protected void btnManageBook_Click(object sender, EventArgs e)
        {

        }

        protected void btnManageCustomer_Click(object sender, EventArgs e)
        {
        }
    }
}