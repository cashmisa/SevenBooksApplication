using SevenBooksApplication.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SevenBooksApplication
{
    public partial class UpdateBook : System.Web.UI.Page
    {
        int bookID;
        protected void Page_Load(object sender, EventArgs e)
        {
            bookID = Convert.ToInt32(Request.QueryString["bookID"]);
            string title = tbTitle.Text;
            string author = tbAuthor.Text;

            string isbn = tbISBN.Text;
            decimal price = Convert.ToDecimal(tbPrice.Text);
            string categoryName = ddlCategory.SelectedValue;
            int stock = Convert.ToInt32(tbQuantity.Text);


            try
            {

                BusinessLogic.UpdateBook(bookID, title, categoryName, isbn, author, stock, price);

            }
            catch (Exception exp)
            {
                Response.Write(exp.ToString());
            }
        }
    }
}