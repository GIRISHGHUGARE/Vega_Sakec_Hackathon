using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TechDynamo
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\TechDynamo\TechDynamo\TechDynamo\App_Data\Database1.mdf;Integrated Security=True");
        string pwd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_login_Click(object sender, EventArgs e)
        {
            conn.Open();
            string que = "select count(*) from company where email='" + txt_email.Text + "' ";
            SqlCommand cmd = new SqlCommand(que, conn);
            int output = Convert.ToInt32(cmd.ExecuteScalar());
            if (output == 1)
            {
                string que2 = "select password from company where email='" + txt_email.Text + "' ";
                SqlCommand cmd2 = new SqlCommand(que2, conn);
                SqlDataReader sr = cmd2.ExecuteReader();
                sr.Read();
                pwd = sr["password"].ToString();
                if (pwd == txt_pwd.Text)
                {
                    Session["user"] = txt_email.Text;
                    Response.Redirect("company_profile.aspx");
                }
                else
                {
                    lbl_error.Style["display"] = "visible";
                }

            }
            else
            {
                string que1 = "select count(*) from student where email='" + txt_email.Text + "' ";
                SqlCommand cmd1 = new SqlCommand(que1, conn);
                int output1 = Convert.ToInt32(cmd1.ExecuteScalar());
                if (output1 == 1)
                {
                    string que3 = "select password from student where email='" + txt_email.Text + "' ";
                    SqlCommand cmd3 = new SqlCommand(que3, conn);
                    SqlDataReader sr = cmd3.ExecuteReader();
                    sr.Read();
                    pwd = sr["password"].ToString();
                    if (pwd == txt_pwd.Text)
                    {
                        Session["user"] = txt_email.Text;
                        Response.Redirect("Student_profile.aspx");
                    }
                    else
                    {
                        lbl_error.Style["display"] = "visible";
                    }
                }

            }
        }
    }
}