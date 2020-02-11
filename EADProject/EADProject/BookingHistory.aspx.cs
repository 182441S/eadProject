using EADProject.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EADProject
{
    public partial class BookingHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void filter_ServerClick(object sender, EventArgs e)
        {
            DateTime startdate=Convert.ToDateTime(TextBox1.Text);
            DateTime enddate=Convert.ToDateTime(TextBox2.Text);

            Jobhistory dates = new Jobhistory();
            dates = dates.selectbydate(startdate, enddate);

            string names = dates.TOURNAME;
        }

    }
}