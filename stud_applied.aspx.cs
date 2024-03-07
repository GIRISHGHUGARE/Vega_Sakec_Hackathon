using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace TechDynamo
{
    public partial class stud_applied : System.Web.UI.Page
    {
        string uname,comp_name;
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\TechDynamo\TechDynamo\TechDynamo\App_Data\Database1.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            if (Session["user"] != null)
            {
                uname = Session["user"].ToString();
            }

            string que = "select * from company where email = '" + uname + "'";
            SqlCommand cmd2 = new SqlCommand(que, con);
            SqlDataReader sr = cmd2.ExecuteReader();
            while (sr.Read())
            {
                comp_name = sr.GetValue(1).ToString();
               
            }
            con.Close();
        

            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from application where comp_name = '"+comp_name+"'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
            con.Close();
        }
    }
}