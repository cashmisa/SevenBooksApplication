using SevenBooksApplication.App_Code;
using System;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace SevenBooksApplication
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //gvBook.DataSource = BusinessLogic.SearchAllBooks();
                //gvBook.DataBind();
                repBookList.DataSource = BusinessLogic.SearchAllBooks();
                repBookList.DataBind();
            }
        }

        protected void Image_Click(object sender, ImageClickEventArgs e)
        {
            //string url = ((ImageButton)sender).AlternateText;
            //Response.Redirect("BookDetails.aspx?ISBN=" + url);
            
            //RepeaterItem repeater = sender as RepeaterItem;
            //ImageButton imgbtn = (ImageButton) repeater.FindControl("bookImage");


            //// ImageButton imgbtn = (ImageButton)repBookList.Items[0].FindControl("bookImage");
            //Response.Redirect("BookDetails.aspx?ISBN=" + imgbtn.AlternateText);


            ////Response.Redirect("http://www.google.com");
        }
    }
}