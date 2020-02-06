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
    {        protected void submit_ServerClick(object sender, EventArgs e)
        {
            C_Details r = new C_Details(name.Text, passNo.Text, email.Text, mobileNo.Text, cardNo.Text, month.Text, year.Text, ccv.Text);
            int result = r.insertCustomerDetails();

            if(result == 1)
            {
                Response.Redirect("CustomerBooking.aspx");
            }
        }
    }
}