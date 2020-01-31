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
    public partial class CustomerPlan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bookPlan_ServerClick(object sender, EventArgs e)
        {
            HtmlButton btn = (HtmlButton)sender;
            string name = btn.Attributes["Name"];
            string location1 = btn.Attributes["Location1"];
            string location2 = btn.Attributes["Location2"];
            string location3 = btn.Attributes["Location3"];
            string price = btn.Attributes["Price"];
            string duration = btn.Attributes["Duration"];
            string desc = btn.Attributes["Description"];

            Session["BookName"] = name;
            Session["BookLocation1"] = location1;
            Session["BookLocation2"] = location2;
            Session["BookLocation3"] = location3;
            Session["BookPrice"] = price;
            Session["BookDuration"] = duration;
            Session["BookDescription"] = desc;

            Response.Redirect("CustomerCustomisePlan.aspx");
        }
    }
}