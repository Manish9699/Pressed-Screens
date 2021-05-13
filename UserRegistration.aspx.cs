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

public partial class UserRegistration : System.Web.UI.Page
{  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
            myConnection.Open();
            string checkuser = "select count(*) from Customer Where userId='" + TextBox1.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, myConnection);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Response.Write("Username already exist");
            }
            myConnection.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Guid newGUID = Guid.NewGuid();
            SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
            myConnection.Open();
            string insertQuery = "insert into Customer(cId,cName,userId,password,dob,contactNo,address,email) values(@cId,@cName,@uName,@password,@dob,@contactNo,@address,@email)";
            SqlCommand com = new SqlCommand(insertQuery, myConnection);
            com.Parameters.AddWithValue("@cId", newGUID.ToString());
            com.Parameters.AddWithValue("@cName", TextBox4.Text);
            com.Parameters.AddWithValue("@uName", TextBox1.Text);
            com.Parameters.AddWithValue("@password", TextBox3.Text);
            com.Parameters.AddWithValue("@dob", TextBox8.Text);
            com.Parameters.AddWithValue("@contactNo", TextBox5.Text);
            com.Parameters.AddWithValue("@address", TextBox6.Text);
            com.Parameters.AddWithValue("@email", TextBox7.Text);

            com.ExecuteNonQuery();
            Response.Write("<script>alert('Registration Successful')</script>");
            myConnection.Close();

        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        
    }
}