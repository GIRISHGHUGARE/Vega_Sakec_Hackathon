using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace TechDynamo
{
    public partial class apply : System.Web.UI.Page
    {
        string uname;
        string email, name, course,title,comp_name;
        int id,stud_id;
        string contact;
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\TechDynamo\TechDynamo\TechDynamo\App_Data\Database1.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            if (Session["user"] != null)
            {
                uname = Session["user"].ToString();
            }
            string que = "select * from student where email = '" + uname + "'";
            SqlCommand cmd2 = new SqlCommand(que, con);
            SqlDataReader sr = cmd2.ExecuteReader();
            while (sr.Read())
            {
                name = sr.GetValue(1).ToString();
                stud_id = Convert.ToInt32(sr.GetValue(2));
                contact =sr.GetValue(3).ToString();
                course = sr.GetValue(6).ToString();
               
            }
            con.Close();
            con.Open();
            id = Convert.ToInt32(Request.QueryString["id"].ToString());
            string que1 = "select * from placements where id = '" + id + "'";
            SqlCommand cmd3 = new SqlCommand(que1, con);
            SqlDataReader sr1 = cmd3.ExecuteReader();
            while (sr1.Read())
            {
                title = sr1.GetValue(1).ToString();
                
                comp_name = sr1.GetValue(10).ToString();

            }

            con.Close();
            con.Open();
            string que2 = "insert into application  values ('" + stud_id+ "','" + name + "','" + comp_name + "','" + title + "','" + contact + "','" + uname + "','" + course + "')";
            SqlCommand cmd = new SqlCommand(que2, con);
            cmd.ExecuteNonQuery();
            Response.Redirect("s_events.aspx");
            con.Close();

        }
    }
}