using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace appointment
{
    public partial class Login : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\hp\c#projects\appointment\appointment\App_Data\regDatabase1.mdf;Integrated Security=True;Connect Timeout=30";
            con.Open();
        }

        protected void Unnamed5_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "Select * from Login where Email='" + txtemail.Text + "'and Password='" + txtpass.Text + "'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "Login");
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label1.Text = "Login Succesful";
            }
            else
            {
                Label1.Text = "Login unsucessful";
            }
             Response.Redirect("appointmentWebForm1.aspx");
        }

        protected void Unnamed7_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegWebForm.aspx");
        }
    }
}