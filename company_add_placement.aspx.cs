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
    public partial class company_add_placement : System.Web.UI.Page
    {
        string uname, company_name;
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\TechDynamo\TechDynamo\TechDynamo\App_Data\Database1.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Save_Click(object sender, EventArgs e)
        {
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
                company_name = sr.GetValue(1).ToString();
               
            }
            con.Close();
            con.Open();
            string que1 = "insert into placements values ('" + PlaceTitle.Text + "','" + StartDate.Text + "','" + EndDate.Text + "','" + Salary.Text + "','"+Openings.Text+"','"+AboutUs.Text+"','"+KeyRespos.Text+"','"+Reqs.Text+"','" + Duration.SelectedItem.Text + "','"+company_name+"')";
            SqlCommand cmd = new SqlCommand(que1, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}