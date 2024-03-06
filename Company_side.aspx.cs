using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TechDynamos
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CompanyName.ReadOnly = true;
            CompanyEmail.ReadOnly = true;
            CompanyAddr.ReadOnly = true;
            CompanyContact.ReadOnly = true;
            AboutUs.ReadOnly = true;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            CompanyName.ReadOnly = false;
            CompanyEmail.ReadOnly = false;
            CompanyAddr.ReadOnly = false;
            CompanyContact.ReadOnly = false;
            AboutUs.ReadOnly = false;
            CompanyName.Style["border-color"] = "black";
            CompanyEmail.Style["border-color"] = "black";
            CompanyAddr.Style["border-color"] = "black";
            CompanyContact.Style["border-color"] = "black";
            AboutUs.Style["border-color"] = "black";
            CompanyName.Style["border-color"] = "black";
            CompanyEmail.Style["border-color"] = "black";
            CompanyAddr.Style["border-color"] = "black";
            CompanyContact.Style["border-color"] = "black";
            AboutUs.Style["border-color"] = "black";
            CompanyName.Style["color"] = "black";
            CompanyEmail.Style["color"] = "black";
            CompanyAddr.Style["color"] = "black";
            CompanyContact.Style["color"] = "black";
            AboutUs.Style["color"] = "black";
            CompanyName.Style["color"] = "black";
            CompanyEmail.Style["color"] = "black";
            CompanyAddr.Style["color"] = "black";
            CompanyContact.Style["color"] = "black";
            AboutUs.Style["color"] = "black";
        }
    }
}