using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TechDynamo
{
   
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\TechDynamo\TechDynamo\TechDynamo\App_Data\Database1.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string que = "insert into company values ('" + comp_name.Text + "','" + comp_email.Text + "','" + comp_contact.Text + "','" + comp_add.Text + "','" + comp_pwd.Text + "','-')";
            SqlCommand cmd = new SqlCommand(que, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}