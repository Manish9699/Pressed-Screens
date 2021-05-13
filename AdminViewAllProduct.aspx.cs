using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminViewAllProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GridView1.DataSource = SqlDataSourceViewAllProducts;
            GridView1.DataBind();
        }
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        GridView1.DataSource = SqlDataSourceViewAllProducts;
        GridView1.DataBind();
        Label10.Text = "";
        GridView1.EditRowStyle.BackColor = System.Drawing.Color.Orange;
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        GridView1.DataSource = SqlDataSourceViewAllProducts;
        GridView1.DataBind();
        Label10.Text = "";
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Label pId = GridView1.Rows[e.RowIndex].FindControl("Label9") as Label;
        TextBox category = GridView1.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
        TextBox pName = GridView1.Rows[e.RowIndex].FindControl("TextBox2") as TextBox;
        TextBox pImg = GridView1.Rows[e.RowIndex].FindControl("TextBox3") as TextBox;
        TextBox price = GridView1.Rows[e.RowIndex].FindControl("TextBox4") as TextBox;
        TextBox pDesc = GridView1.Rows[e.RowIndex].FindControl("TextBox5") as TextBox;
        TextBox quantity = GridView1.Rows[e.RowIndex].FindControl("TextBox6") as TextBox;
        SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
        String updatedata = "UPDATE Product set category='" + category.Text + "', pName='" + pName.Text + "', pImg='" + pImg.Text + "',price='" + price.Text + "',pDesc='" + pDesc.Text + "',quantity='" + quantity.Text + "' where pId='" + pId.Text+"'";

        myConnection.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = myConnection;
        cmd.ExecuteNonQuery();
        Label10.Text = "Row Data Has Been Updated Successfully";
        GridView1.EditIndex = -1;
        SqlDataSourceViewAllProducts.DataBind();
        GridView1.DataSource = SqlDataSourceViewAllProducts;
        GridView1.DataBind();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label pId = GridView1.Rows[e.RowIndex].FindControl("Label2") as Label;
        SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
        String deletedata = "delete from Product where pId='" + pId.Text+"'";
        myConnection.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = deletedata;
        cmd.Connection = myConnection;
        cmd.ExecuteNonQuery();
        Label10.Text = "Row Data Has Been Deleted Successfully";
        GridView1.EditIndex = -1;
        SqlDataSourceViewAllProducts.DataBind();
        GridView1.DataSource = SqlDataSourceViewAllProducts;
        GridView1.DataBind();
    }
}