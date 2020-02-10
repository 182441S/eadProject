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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //private bool ValidateInput()
        //{
        //    bool result;
        //    message = String.Empty;

        //    if (tbName.Text == "")
        //    {
        //        message += "Name is empty!" + "<br/>";
        //    }
        //    if (tbDOB.Text == "")
        //    {
        //        message += "DOB is empty!" + "<br/>";
          
        //    }
        //    if (tbPhone.Text == "")
        //    {
        //        message += "Phone is empty!" + "<br/>";

        //    }
        //    if (tbEmail.Text == "")
        //    {
        //        message += "Email is empty!" + "<br/>";

        //    }
        //    if (tbPassword.Text == "")
        //    {
        //        message += "Password is empty!" + "<br/>";
        //    }
        //    return string(message);
        //    MessageBox.Show(Message);
        //}


        protected void registerbtn_Click(object sender, EventArgs e)
        {
            Cust d = new Cust();
            int result = d.AddCustomer(tbname.Text, Convert.ToDateTime(tbdob.Text), Convert.ToInt32(tbPhone.Text), tbEmail.Text, tbPassword.Text);

        }
    }
}