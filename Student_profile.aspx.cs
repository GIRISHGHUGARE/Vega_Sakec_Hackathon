using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TechDynamo
{
    public partial class Student_profile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\TechDynamo\TechDynamo\TechDynamo\App_Data\Database1.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            Save.Visible = false;
            Email.ReadOnly = true;
            Contact.ReadOnly = true;
            City.ReadOnly = true;

            con.Open();
            string que = "select * from student where id = 3";
            SqlCommand cmd2 = new SqlCommand(que, con);
            SqlDataReader sr = cmd2.ExecuteReader();
            while (sr.Read())
            {
                StudName.Text = sr.GetValue(1).ToString();
                StudID.Text = sr.GetValue(2).ToString();
                Contact.Text = sr.GetValue(3).ToString();
                Email.Text = sr.GetValue(4).ToString();
                CourseYear.Text = sr.GetValue(5).ToString();
                CourseName.Text = sr.GetValue(6).ToString();
                City.Text = sr.GetValue(7).ToString();
            }
            con.Close();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Email.ReadOnly = false;
            Contact.ReadOnly = false;
            City.ReadOnly = false;
            Email.Style["border-color"] = "black";
            Contact.Style["border-color"] = "black";
            Email.Style["color"] = "black";
            Contact.Style["color"] = "black";
            City.Style["border-color"] = "black";
            City.Style["color"] = "black";
            Save.Visible = true;
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            con.Open();
            string que3 = "UPDATE student SET email='" + Email.Text + "',contact='" + Contact.Text + "',city='" + City.Text + "' where id = 3";
            SqlCommand cmd = new SqlCommand(que3, con);

            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("student_profile.aspx");
        }
    }
}