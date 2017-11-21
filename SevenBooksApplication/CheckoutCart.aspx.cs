using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SevenBooksApplication.App_Code;
using SevenBooksApplication.Models;

namespace SevenBooksApplication
{
    public partial class CheckoutCart : System.Web.UI.Page
    {
        enum ColumnIndex { Title, Quantity, Price, TotalPrice}

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<Book> bookList = Session["cartList"] as List<Book>;
                Dictionary<string, int> bookCounts = bookList.GroupBy(x => x.ISBN)
                                                    .ToDictionary(k => k.Key, v => v.Count());

                List<GridDisplayData> dataList = new List<GridDisplayData>();

                foreach(var key in bookCounts.Keys)
                {
                    dataList.Add(new GridDisplayData { ISBN = key, Quantity = bookCounts[key] });
                }

                GridView1.DataSource = dataList;
                GridView1.DataBind();
            }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if(e.Row.RowType == DataControlRowType.DataRow)
            {
                GridDisplayData data = e.Row.DataItem as GridDisplayData;

                Image img = e.Row.Cells[(int)ColumnIndex.Title].FindControl("Image1") as Image;
                img.ImageUrl = string.Format("~/image/{0}.jpg", data.ISBN);
                Book book = BusinessLogic.SearchBookByISBN(data.ISBN);
                img.AlternateText = book.Title;

                Label lblQty = e.Row.Cells[(int)ColumnIndex.Quantity].FindControl("lblQty") as Label;
                lblQty.Text = data.Quantity.ToString();

                Label lblPrice = e.Row.Cells[(int)ColumnIndex.Price].FindControl("lblPrice") as Label;
                lblPrice.Text = book.Price.ToString();

                Label lblTotalPrice = e.Row.Cells[(int)ColumnIndex.TotalPrice].FindControl("lblTotalPrice") as Label;                
                decimal currentDiscount = BusinessLogic.GetCurrentDiscount();
                decimal totalPrice = book.Price * data.Quantity * (1 - currentDiscount);
                lblTotalPrice.Text = totalPrice.ToString();

                decimal discountAmt = book.Price * data.Quantity * currentDiscount;

                if (currentDiscount != 0)
                {
                    Label lblDiscount = e.Row.Cells[(int)ColumnIndex.TotalPrice].FindControl("lblDiscount") as Label;
                    string msg = string.Format("(You saved {0:c})", discountAmt);
                    lblDiscount.Visible = true;
                    lblDiscount.ForeColor = System.Drawing.Color.Red;
                    lblDiscount.Font.Italic = true;
                }
            }
        }
    }

    public class GridDisplayData
    {
        public string ISBN { get; set; }
        public int Quantity { get; set; }
    }
}