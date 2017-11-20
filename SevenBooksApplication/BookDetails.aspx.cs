using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SevenBooksApplication;
using SevenBooksApplication.App_Code;
using SevenBooksApplication.Models;

namespace SevenBooksApplication
{
    public partial class BookDetails : System.Web.UI.Page
    {
        int bookID;
        protected void Page_Load(object sender, EventArgs e)
        {
           // int bookID = 4;
         bookID =Convert.ToInt32(Request.QueryString["bookID"]);

            Book b =BusinessLogic.SearchBookByBookId(bookID);
            string isbn = b.ISBN;
            tbAuthor.Text = b.Author;
            tbTitle.Text = b.Title;
            tbPrice.Text =Convert.ToString(b.Price);
            int stock = b.Stock;
            int[] stockArray = new int[stock];
            for(int i=0;i<stock;i++)
            {
                stockArray[i] = i + 1;
            }
            ddlQty.DataSource = stockArray;
            ddlQty.DataBind();
            Image1.ImageUrl=string.Format("image/{0}.jpg",isbn);


        }


        protected void update_button(object sender, EventArgs e)
        {
           

            Response.Redirect("UpdateBook.aspx?BookID="+bookID);
        }

        protected void addCart(object sender, EventArgs e)
        {

        }
    }
}