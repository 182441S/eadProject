using EADProject.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EADProject
{
    public partial class StaffEditPlan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            string name = TextBoxPlanName.Text.ToString();
            string locationFirst = DropDownListLocFirst.SelectedValue;
            string locationSecond = DropDownListLocSecond.SelectedValue;
            string locationThird = DropDownListLocThird.SelectedValue;
            int price = int.Parse(TextBoxPrice.Text);
            int duration = int.Parse(TextBoxDuration.Text);
            string description = TextBoxDescription.Text.ToString();

            PlanDetails pd = new PlanDetails(name, locationFirst, locationSecond, locationThird, price, duration, description);
            int result = pd.UpdatePlan();

            if (result == 1)
            {
                Response.Redirect("StaffPlan.aspx");
            }
        }

        protected void ButtonCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("StaffPlan.aspx");
        }
    }
}