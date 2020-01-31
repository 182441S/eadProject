using EADProject.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EADProject
{
    public partial class Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string query = "S0123456B";

            C_Details q = new C_Details();
            q = q.getCustomerDetails(query);
            lbName.Text = q.Name.ToString();
            lbPassport.Text = q.PassportNo.ToString();
            lbEmail.Text = q.Email.ToString();
            lbMobile.Text = q.Mobile.ToString();
            lbStart.Text = q.StartDate.ToString();
            lbEnd.Text = q.EndDate.ToString();
            lbOrigin.Text = q.Origin.ToString();
            lbCard.Text = q.CardNo.ToString();
        }

        protected void submit_ServerClick(object sender, EventArgs e)
        {
            C_Details r = new C_Details(name.Text, passNo.Text, email.Text, mobileNo.Text, dStart.Text, dEnd.Text, tFrom.Text, cardNo.Text, month.Text, year.Text, ccv.Text);
            int result = r.insertCustomerDetails();

            if(result == 1)
            {
                Response.Redirect("Details.aspx");
            }
        }
    }
}