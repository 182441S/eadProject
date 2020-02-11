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
            List<string> listNames = new List<string>();

            PlanDetails pd = new PlanDetails();
            listNames = pd.GetPlanNames();

            bool error = false;
                        
            LabelNameError.Visible = false;
            LabelLocationError.Visible = false;
            LabelPriceError.Visible = false;
            LabelDurationError.Visible = false;
            LabelDescError.Visible = false;

            if (TextBoxPlanName.Text == "")
            {
                error = true;

                LabelNameError.Text = "Name is required!";
                LabelNameError.Visible = true;
            }
            else
            {
                for (int i = 0; i < listNames.Count; i++)
                {
                    if (TextBoxPlanName.Text.ToUpper() == listNames[i].ToUpper())
                    {
                        error = true;
                    }
                }

                if (error)
                {
                    LabelNameError.Text = "Plan already exists!";
                    LabelNameError.Visible = true;
                }
            }

            if (DropDownListLocFirst.SelectedValue == "-1" ||
                DropDownListLocSecond.SelectedValue == "-1" ||
                DropDownListLocThird.SelectedValue == "-1")
            {
                error = true;

                LabelLocationError.Text = "Location not selected!";
                LabelLocationError.Visible = true;
            }
            else if (DropDownListLocFirst.SelectedValue == DropDownListLocSecond.SelectedValue ||
                DropDownListLocFirst.SelectedValue == DropDownListLocThird.SelectedValue ||
                DropDownListLocSecond.SelectedValue == DropDownListLocThird.SelectedValue)
            {
                error = true;

                LabelLocationError.Text = "Locations are the same!";
                LabelLocationError.Visible = true;
            }

            if (TextBoxPrice.Text == "")
            {
                error = true;

                LabelPriceError.Text = "Price is required!";
                LabelPriceError.Visible = true;
            }
            else
            {
                try
                {
                    int i = int.Parse(TextBoxPrice.Text);

                    if (i == 0)
                    {
                        error = true;

                        LabelPriceError.Text = "Price cannot be 0!";
                        LabelPriceError.Visible = true;
                    }
                }
                catch
                {
                    error = true;

                    LabelPriceError.Text = "Price must be a number!";
                    LabelPriceError.Visible = true;
                }
            }

            if (TextBoxDuration.Text == "")
            {
                error = true;

                LabelDurationError.Text = "Duration is required!";
                LabelDurationError.Visible = true;
            }
            else
            {
                try
                {
                    int i = int.Parse(TextBoxDuration.Text);

                    if (i == 0)
                    {
                        error = true;

                        LabelDurationError.Text = "Duration cannot be 0!";
                        LabelDurationError.Visible = true;
                    }
                }
                catch
                {
                    error = true;

                    LabelDurationError.Text = "Duration must be a number!";
                    LabelDurationError.Visible = true;
                }
            }

            if (TextBoxDescription.Text == "")
            {
                error = true;

                LabelDescError.Text = "Description is required!";
                LabelDescError.Visible = true;
            }            

            if (!error)
            {
                string name = TextBoxPlanName.Text.ToString();
                string locationFirst = DropDownListLocFirst.SelectedValue;
                string locationSecond = DropDownListLocSecond.SelectedValue;
                string locationThird = DropDownListLocThird.SelectedValue;
                int price = int.Parse(TextBoxPrice.Text);
                int duration = int.Parse(TextBoxDuration.Text);
                string description = TextBoxDescription.Text.ToString();

                PlanDetails pland = new PlanDetails(name, locationFirst, locationSecond, locationThird, price, duration, description);
                int result = pland.UpdatePlan();

                if (result == 1)
                {
                    Response.Redirect("StaffPlan.aspx");
                }
            }
        }

        protected void ButtonCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("StaffPlan.aspx");
        }
    }
}