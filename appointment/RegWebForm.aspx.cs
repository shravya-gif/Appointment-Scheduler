using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace appointment
{
    public partial class RegWebForm : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
  
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString=@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\hp\c#projects\appointment\appointment\App_Data\regDatabase1.mdf;Integrated Security=True";
            con.Open();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Registration"+" (Name,Ph_No,Email,Password)values(@Name,@Ph_No,@Email,@Password)",con);
            cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Ph_No", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Email", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox4.Text);
            cmd.ExecuteNonQuery();
            Label5.Text = "Registered successfully";
            Response.Redirect("Login.aspx");
        }
    }
}