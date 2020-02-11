using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EADProject
{
    public partial class TGParticulars : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void PastJob_TextChanged(object sender, EventArgs e)
        {
            PastJob.TextMode = TextBoxMode.MultiLine;
            PastJob.Rows = 10;
        }

        protected void submitclick(object sender, EventArgs e)
        {
            Response.Redirect("LoginTG.aspx");
        }
    }
}