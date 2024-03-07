using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace TechDynamo
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        string name, uname;
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\TechDynamo\TechDynamo\TechDynamo\App_Data\Database1.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from msg";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
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
                
            }
            con.Close();

            con.Open();

            string que1 = "insert into msg values ('"+name+"','" + TextBox6.Text + "')";
            SqlCommand cmd1 = new SqlCommand(que1, con);
            cmd1.ExecuteNonQuery();
            con.Close();
            Response.Redirect("WebForm4.aspx");
        }
    }
}