using EADProject.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace EADProject
{
    public partial class StaffPlan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Name"] = "";
            Session["Location1"] = "";
            Session["Location2"] = "";
            Session["Location3"] = "";
            Session["Price"] = "";
            Session["Duration"] = "";
            Session["Description"] = "";
        }

        protected void btnNewPlan_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("StaffEditPlan.aspx");
        }

        protected void deletePlan_ServerClick(object sender, EventArgs e)
        {

        }

        protected void editPlan_ServerClick(object sender, EventArgs e)
        {
            HtmlButton btn = (HtmlButton)sender;
            string name = btn.Attributes["Name"];
            string location1 = btn.Attributes["Location1"];
            string location2 = btn.Attributes["Location2"];
            string location3 = btn.Attributes["Location3"];
            string price = btn.Attributes["Price"];
            string duration = btn.Attributes["Duration"];
            string desc = btn.Attributes["Description"];

            Session["Name"] = name;
            Session["Location1"] = location1;
            Session["Location2"] = location2;
            Session["Location3"] = location3;
            Session["Price"] = price;
            Session["Duration"] = duration;
            Session["Description"] = desc;

            Response.Redirect("StaffUpdatePlan.aspx");
        }
    }
}