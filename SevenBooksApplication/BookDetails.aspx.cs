using SevenBooksApplication.App_Code;
using SevenBooksApplication.Models;
using System;
using System.Collections.Generic;
using System.Web.Security;

namespace SevenBooksApplication
{
    public partial class BookDetails : System.Web.UI.Page
    {
        string isbn;
        Book b;
        protected void Page_Load(object sender, EventArgs e)
        {
            isbn = Request.QueryString["ISBN"];
            b = BusinessLogic.SearchBookByISBN(isbn);

            tbAuthor.Text = b.Author;
            tbTitle.Text = b.Title;
            Title = b.Title + " - SevenBooks";
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

            bool isAdmin = Roles.IsUserInRole("admin");
            if (isAdmin)
            {
                btDelete.Visible = true;
                btUpdate.Visible = true;
            }
            else
            {
                btAdd.Visible = true;

            }

        }

        protected void addCart(object sender, EventArgs e)
        {
            ((List<Book>)Session["cartList"]).Add(b);
            Response.Redirect(Request.RawUrl);
            SetVisible();
        }
        

        protected void update_button(object sender, EventArgs e)
        {
            SetVisible();
            Response.Redirect("UpdateBook.aspx?ISBN=" + isbn);
        }

        protected void delete_book(object sender, EventArgs e)
        {
            // BusinessLogic.DeleteBook(ISBN);
            //neeed to change business logic
            SetVisible();
            Response.Redirect("Default.aspx");

        }

        public void SetVisible()
        {
            btAdd.Visible = false;
            btDelete.Visible = false;
            btUpdate.Visible = false;
        }

    }
}