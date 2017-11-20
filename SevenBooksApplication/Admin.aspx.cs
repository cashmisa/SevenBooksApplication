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
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGrid();
        }

        private void BindGrid()
        {
            GridView1.DataSource = BusinessLogic.GetAllOrder();
            GridView1.DataBind();
        }

        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindGrid();
        }

        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int orderId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string status = (row.FindControl("ddlStatus") as DropDownList).SelectedValue;

            BusinessLogic.UpdateOrderStatus(orderId,status);
            GridView1.EditIndex = -1;
            BindGrid();
        }
        protected void OnRowCancelingEdit(object sender, EventArgs e)
        {
            GridView1.EditIndex = -1;
            BindGrid();
        }



    }
}