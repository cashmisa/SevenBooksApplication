using SevenBooksApplication.App_Code;
using System;

namespace SevenBooksApplication
{
    public partial class AddNewBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Add_onClick(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                try
                {
                    string filename = FileUpload1.FileName;
                    FileUpload1.SaveAs(Server.MapPath("~/files/") + filename);
                    StatusLabel.Text = "Upload status: File uploaded!";
                }
                catch (Exception ex)
                {
                    StatusLabel.Text =
                    "Upload status: The file could not be uploaded." +
                    "The following error occurred: " + ex.Message;
                }
            }
            string title = tbTitle.Text;
            string author = tbAuthor.Text;

            string isbn = tbISBN.Text;
            decimal price = Convert.ToDecimal(tbPrice.Text);
            string categoryName = ddlCategory.SelectedValue;
            int stock = Convert.ToInt32(tbQuantity.Text);


            try
            {

                BusinessLogic.AddBook(title, categoryName, isbn, author, stock, price);

            }
            catch (Exception exp)
            {
                Response.Write(exp.ToString());
            }
        }

    }
}