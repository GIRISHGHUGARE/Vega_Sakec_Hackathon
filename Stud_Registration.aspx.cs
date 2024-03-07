using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TechDynamo
{
    public partial class Stud_Registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\TechDynamo\TechDynamo\TechDynamo\App_Data\Database1.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string que = "insert into student values ('" + stud_name.Text + "','"+stud_id.Text+"','" + stud_contact.Text + "','"+stud_email.Text+"','" + stud_year.SelectedItem.Text + "','"+stud_course.Text+"','"+stud_city.Text+"','" + stud_pwd.Text + "')";
            SqlCommand cmd = new SqlCommand(que, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}