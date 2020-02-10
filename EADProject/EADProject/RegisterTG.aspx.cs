using EADProject.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Drawing;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Web.Services.Description;

namespace EADProject
{
    public partial class RegisterTG : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void registerbtn_Click(object sender, EventArgs e)
        {
            Tour d = new Tour();
            int result = d.AddCustomer(tbName.Text, Convert.ToDateTime(tbDob.Text), Convert.ToInt32(tbPhone.Text), tbEmail.Text, tbPassword.Text);

            Response.Redirect("TGParticulars.aspx");
        }
    }
}