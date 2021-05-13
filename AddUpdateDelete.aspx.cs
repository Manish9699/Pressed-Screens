using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

public partial class AddUpdateDelete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
            myConnection.Open();           
            //String link = "~/images/" + Path.GetFileName(FileUpload1.FileName);
            //FileUpload1.SaveAs(Server.MapPath(link));
            //string s = FileUpload1.FileName;
            //FileUpload1.PostedFile.SaveAs(Server.MapPath(s));
            String query = "insert into Product(pId,category,pName,pDesc,pImg,price,quantity) Values(@pId,@category,@pName,@pDesc,@pImg,@price,@quantity)";
            SqlCommand cmd = new SqlCommand(query, myConnection);
            cmd.Parameters.AddWithValue("@pId", TextBox1.Text);
            cmd.Parameters.AddWithValue("@category", TextBox2.Text);
            cmd.Parameters.AddWithValue("@pName", TextBox3.Text);
            cmd.Parameters.AddWithValue("@pDesc", TextBox4.Text);
            cmd.Parameters.AddWithValue("@pImg", TextBox7.Text);
            cmd.Parameters.AddWithValue("@price", TextBox5.Text);
            cmd.Parameters.AddWithValue("@quantity", TextBox6.Text);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Product Successfully Added')</script>");
            myConnection.Close();

        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.ToString());
        }
    }
}
