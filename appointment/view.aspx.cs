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
    public partial class view : System.Web.UI.Page
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "select * from Appointment";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "Appointment");
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}