using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Product : System.Web.UI.Page
{
    protected void Page_Load(object sender,DataListItemEventArgs e)
    {

    }
    protected void DataList1_ItemCommand(object sender, DataListCommandEventArgs e)
    {
        //Label prd = (Label)e.Item.FindControl("productNameLabel");
        //ViewState["pName"] = prd.Text;
        //Label brd = (Label)e.Item.FindControl("descLabel");
        //ViewState["pDesc"] = brd.Text;
        //Image img = (Image)e.Item.FindControl("Image1");
        //ViewState["pImg"] = img.ImageUrl.ToString();
        //Label prc = (Label)e.Item.FindControl("priceLabel");
        //ViewState["price"] = prc.Text;
        Response.Redirect("Payment.aspx?id=" + e.CommandArgument.ToString());
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //int i = int.Parse(TextBox1.Text);

        //int p = int.Parse((string)ViewState["price"]);
        //string img = ViewState["pImg"].ToString();
        //string brand = ViewState["pDesc"].ToString();
        //string s2 = System.Web.HttpContext.Current.User.Identity.Name;
        //string s1 = Request.QueryString["pName"];




        //SqlConnection a = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);

        //a.Open();
        //string cartCmd = "insert into completeCart(pName,quantity,uName,brand,img,price) values('" + s1 + "','" + i + "','" + s2 + "','" + brand + "','" + img + "','" + p + "') ";
        //SqlCommand cmd = new SqlCommand(cartCmd, a);
        //cmd.ExecuteNonQuery();
        //a.Close();

        //Response.Redirect("cCart.aspx?user=" + s2);
    }

    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {

    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
}