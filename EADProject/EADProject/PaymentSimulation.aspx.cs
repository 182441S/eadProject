using EADProject.BLL;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace EADProject
{
    public partial class PaymentSimulation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        

        protected void Button1_ServerClick(object sender, EventArgs e)
        {
            TourGuide ist = new TourGuide();
            HtmlButton btn = (HtmlButton)sender;
            string name = btn.Attributes["Name"];
            string nric = btn.Attributes["Nric"];
            int phone =Convert.ToInt32(btn.Attributes["Phone"]);
            string email = btn.Attributes["Email"];
            int salary = Convert.ToInt32(btn.Attributes["Salary"]);


            Session["NAME"]= name;
            Session["NRIC"]= nric;
            Session["PHONE"]= phone;
            Session["EMAIL"]= email;
            Session["SALARY"]= salary;

            Response.Redirect("assignBonus.aspx");

            int re = ist.Update(Convert.ToInt32("9787978"), nric);



        }
    }
}