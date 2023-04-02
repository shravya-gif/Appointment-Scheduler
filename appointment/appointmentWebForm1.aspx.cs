using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Reflection.Emit;

namespace appointment
{
    public partial class appointmentWebForm1 : System.Web.UI.Page
    {

        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\hp\c#projects\appointment\appointment\App_Data\regDatabase1.mdf;Integrated Security=True";
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Appointment" + "(Name,LastName,Place,Number,calender)values(@Name,@LastName,@Place,@Number,@calender)", con);
            cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@LastName", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Place", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Number", TextBox4.Text);
            cmd.Parameters.AddWithValue("@calender", Calendar1.SelectedDate.ToString());
            cmd.ExecuteNonQuery();
            Label6.Text = "Register sucessful";
            Response.Redirect("MasterWebForm.aspx");
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }
    }
}