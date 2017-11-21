using SevenBooksApplication.App_Code;
using SevenBooksApplication.Models;
using System;
using System.Collections.Generic;
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

                repBookList.DataSource = BusinessLogic.SearchAllBooks();
                repBookList.DataBind();
            }

        }


        protected void AddToCartbtn_Click(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "AddToCart")
            {
                ((List<Book>)Session["cartList"]).Add(BusinessLogic.SearchBookByISBN(e.CommandArgument.ToString()));
                Response.Redirect(Request.RawUrl);
            }
        }
    }
}