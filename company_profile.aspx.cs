using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace TechDynamo
{
    public partial class company_profile : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\TechDynamo\TechDynamo\TechDynamo\App_Data\Database1.mdf;Integrated Security=True");

        string uname;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            CompanyName.ReadOnly = true;
            CompanyEmail.ReadOnly = true;
            CompanyAddr.ReadOnly = true;
            CompanyContact.ReadOnly = true;
            AboutUs.ReadOnly = true;
            Save.Style["display"] = "none";
            
            con.Open();
            if (Session["user"] != null)
            {
                uname = Session["user"].ToString();
            }

            string que = "select * from company where email = '"+uname+"'";
            SqlCommand cmd2 = new SqlCommand(que, con);
            SqlDataReader sr = cmd2.ExecuteReader();
            while (sr.Read())
            {
                CompanyName.Text = sr.GetValue(1).ToString();
                CompanyEmail.Text = sr.GetValue(2).ToString();
                CompanyContact.Text = sr.GetValue(3).ToString();
                CompanyAddr.Text = sr.GetValue(4).ToString();
                AboutUs.Text = sr.GetValue(6).ToString();
            }
            con.Close();
        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            
            CompanyEmail.ReadOnly = false;
            CompanyAddr.ReadOnly = false;
            CompanyContact.ReadOnly = false;
            AboutUs.ReadOnly = false;
            Save.Style["display"] = "visible";

            CompanyEmail.Style["border-color"] = "black";
            CompanyAddr.Style["border-color"] = "black";
            CompanyContact.Style["border-color"] = "black";
            AboutUs.Style["border-color"] = "black";
            CompanyEmail.Style["border-color"] = "black";
            CompanyAddr.Style["border-color"] = "black";
            CompanyContact.Style["border-color"] = "black";
            AboutUs.Style["border-color"] = "black";
            CompanyEmail.Style["color"] = "black";
            CompanyAddr.Style["color"] = "black";
            CompanyContact.Style["color"] = "black";
            AboutUs.Style["color"] = "black";
            CompanyEmail.Style["color"] = "black";
            CompanyAddr.Style["color"] = "black";
            CompanyContact.Style["color"] = "black";
            AboutUs.Style["color"] = "black";
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            con.Open();
            string que3 = "UPDATE company SET name='" + CompanyName.Text + "',email='" + CompanyEmail.Text + "',contact='" + CompanyContact.Text + "',address='" + CompanyAddr.Text + "',about_us='" + AboutUs.Text + "' where id = 1";
            SqlCommand cmd = new SqlCommand(que3, con);

            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("company_profile.aspx");
        }
    }
}