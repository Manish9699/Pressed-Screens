using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ItemList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Datalist1 = new DataList();
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "buynow")
        {
            Response.Redirect("Payment.aspx?id=" + e.CommandArgument.ToString());
        }
        if (e.CommandName == "viewdetails")
        {
            Response.Redirect("Product.aspx?id=" + e.CommandArgument.ToString());
        }
    }
}