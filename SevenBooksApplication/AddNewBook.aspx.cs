using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SevenBooksApplication;
using SevenBooksApplication.App_Code;

namespace SevenBooksApplication
{
    public partial class AddNewBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string title = tbTitle.Text;
            string author = tbAuthor.Text;

            string isbn = tbISBN.Text;
            decimal price =Convert.ToDecimal(tbPrice.Text);
            string categoryName = ddlCategory.SelectedValue;
            int stock =Convert.ToInt32(tbQuantity.Text);

           
            try
            {
                
                BusinessLogic.AddBook(title, categoryName, isbn,author,stock ,price);
               
            }
            catch (Exception exp)
            {
                Response.Write(exp.ToString());
            }
        }

    }
}