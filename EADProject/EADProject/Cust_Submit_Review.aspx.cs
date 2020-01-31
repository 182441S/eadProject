using EADProject.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EADProject
{
    public partial class Cust_Review : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void insertReview_ServerClick(object sender, EventArgs e)
        {
            Review a = new Review();
            int b = a.insertReview();

            Response.Redirect("Cust_View_Review.aspx");
        }
    }
}