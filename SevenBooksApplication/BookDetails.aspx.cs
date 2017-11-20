using SevenBooksApplication.App_Code;
using SevenBooksApplication.Models;
using System;
using System.Collections.Generic;

namespace SevenBooksApplication
{
    public partial class BookDetails : System.Web.UI.Page
    {
        string ISBN;
        Book b;
        protected void Page_Load(object sender, EventArgs e)
        {
           ISBN = "9780812995800";
           // String ISBN = Request.QueryString["ISBN"];
           b = BusinessLogic.SearchBookByISBN(ISBN);
            string isbn = b.ISBN;
            tbAuthor.Text = b.Author;
            tbTitle.Text = b.Title;
            tbPrice.Text = Convert.ToString(b.Price);
            int stock = b.Stock;
            int[] stockArray = new int[stock];
            for (int i = 0; i < stock; i++)
            {
                stockArray[i] = i + 1;
            }
            ddlQty.DataSource = stockArray;
            ddlQty.DataBind();
            Image1.ImageUrl = string.Format("image/{0}.jpg", isbn);


        }

        protected void addCart(object sender, EventArgs e)
        {
            List<Book> cart =(List<Book>)Session["cartList"];
            cart.Add(b);
        }

        protected void update_button(object sender, EventArgs e)
        {
            Response.Redirect("UpdateBook.aspx?ISBN=" + ISBN);
        }

        protected void delete_book(object sender, EventArgs e)
        {
            // BusinessLogic.DeleteBook(ISBN);
            //neeed to change business logic
            Response.Redirect("Default.aspx");

        }
    }
}