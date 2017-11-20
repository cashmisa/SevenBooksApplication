using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace SevenBooksApplication
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {
            Response.Redirect("~/OrderSummary.aspx");
        }

        protected void Login1_LoggedIn(object sender, EventArgs e)
        {
            
            string users = HttpContext.Current.User.Identity.Name;
            string[] roles = Roles.GetRolesForUser();
            if(roles.Contains("admin"))
            {
                Response.Redirect("~/OrderSummary.aspx");
            }
            else
            {
                Response.Redirect("~/MyAccount.aspx");
            }
        }
    }
}