using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Configuration;
using System.IO;
using System.Data;
using System.Web.Security;

public partial class UserLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int flag = 0;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
        string s = "select * from Customer";
        SqlCommand com = new SqlCommand(s, con);
        con.Open();
        if (con.State == ConnectionState.Open)
        {
            SqlDataReader dtr;
            dtr = com.ExecuteReader();
            while (dtr.Read())
            {
                if (dtr[1].ToString().Equals(TextBox1.Text) && dtr[2].ToString().Equals(TextBox2.Text))
                {
                    Response.Cookies["userId"].Value = TextBox1.Text;
                    Response.Cookies["password"].Value = TextBox2.Text;
                    //Response.Cookies["role"].Value = dtr[2].ToString();
                    FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, false);
                    Response.Redirect("Home.aspx");
                }
                else if(TextBox1.Text=="admin" && TextBox2.Text=="admin")
                {
                    Response.Cookies["userId"].Value = TextBox1.Text;
                    Response.Cookies["password"].Value = TextBox2.Text;
                    FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, false);
                    Response.Redirect("Admin.aspx");
                }
                else
                {
                    Label1.Text = "your credential are incorrect";
                }
            }
        }
    }
}