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
        protected void Page_Load(object sender, EventArgs e)
        {
            
            string ISBN = (string)Session["ISBN"];
           Book b=BussinessLogic.GetBookDetails(ISBN);
            tbAuthor.Text = b.Author;
            tbTitle.Text = b.Title;
            tbPrice.Text =Convert.ToString(b.Price);
            int stock = b.Stock;
            for(int i=0;i<stock;i++)
            {
                lbQty.DataMember = i+"";
            }



        }
    }
}