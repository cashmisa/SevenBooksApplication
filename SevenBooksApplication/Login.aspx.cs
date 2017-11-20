using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SevenBooksApplication.App_Code;
using System.Web.Security;

namespace SevenBooksApplication
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Login1_LoggedIn(object sender, EventArgs e)
        {
            string users = HttpContext.Current.User.Identity.Name;
            string[] roles = Roles.GetRolesForUser();
            if (roles.Contains("admin"))
            {
                Response.Redirect("~/OrderSummary.aspx");
            }
            else
            {
                Response.Redirect("~/MyAccount.aspx");
            }
        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {
            string username = CreateUserWizard1.UserName;
            Roles.AddUserToRole(username, "user");
            
            
        }

        protected void CreateUserWizard1_ContinueButtonClick(object sender, EventArgs e)
        {
            string username = HttpContext.Current.User.Identity.Name;
            if (username == "coffee")
            {
                Response.Redirect("~/CheckoutCart.aspx");
            }
        }
    }
}