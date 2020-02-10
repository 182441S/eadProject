using EADProject.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EADProject
{
    public partial class StaffUpdatePlan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Name"] == null || Session["Name"].ToString() == "")
                {
                    Response.Redirect("StaffPlan.aspx");
                }

                LabelPlanName.Text = Session["Name"].ToString();
                DropDownListLocFirst.SelectedValue = Session["Location1"].ToString();
                DropDownListLocSecond.SelectedValue = Session["Location2"].ToString();
                DropDownListLocThird.SelectedValue = Session["Location3"].ToString();
                TextBoxPrice.Text = Session["Price"].ToString();
                TextBoxDuration.Text = Session["Duration"].ToString();
                TextBoxDescription.Text = Session["Description"].ToString();
            }
        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            String name = LabelPlanName.Text.ToString();
            String locationFirst = DropDownListLocFirst.SelectedValue;
            String locationSecond = DropDownListLocSecond.SelectedValue;
            String locationThird = DropDownListLocThird.SelectedValue;
            int price = int.Parse(TextBoxPrice.Text);
            int duration = int.Parse(TextBoxDuration.Text);
            String description = TextBoxDescription.Text.ToString();

            PlanDetails pd = new PlanDetails();
            int result = pd.UpdatePlanByName(name, locationFirst, locationSecond, locationThird, price, duration, description);

            if (result == 1)
            {
                Response.Redirect("StaffPlan.aspx");
            }
        }

        protected void ButtonCancel_Click(object sender, EventArgs e)
        {
            Session["Name"] = "";
            Session["Location1"] = "";
            Session["Location2"] = "";
            Session["Location3"] = "";
            Session["Price"] = "";
            Session["Duration"] = "";
            Session["Description"] = "";

            Response.Redirect("StaffPlan.aspx");
        }
    }
}