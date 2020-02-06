using EADProject.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EADProject
{
    public partial class CustomerCustomisePlan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["BookName"] == null || Session["BookName"].ToString() == "")
                {
                    Response.Redirect("CustomerPlan.aspx");
                }

                LabelPlanName.Text = Session["BookName"].ToString();
                LabelDuration.Text = Session["BookDuration"].ToString() + " days";
                LabelPrice.Text = "S$" + Session["BookPrice"].ToString();

                DropDownListFirst.Items.Remove(DropDownListFirst.Items.FindByValue("-1"));
                DropDownListFirst.Items.Add(Session["BookLocation1"].ToString());
                DropDownListFirst.Items.Add(Session["BookLocation2"].ToString());
                DropDownListFirst.Items.Add(Session["BookLocation3"].ToString());

                DropDownListSecond.Items.Remove(DropDownListSecond.Items.FindByValue("-1"));
                DropDownListSecond.Items.Add(Session["BookLocation1"].ToString());
                DropDownListSecond.Items.Add(Session["BookLocation2"].ToString());
                DropDownListSecond.Items.Add(Session["BookLocation3"].ToString());
                DropDownListSecond.Items.FindByValue(Session["BookLocation2"].ToString()).Selected = true;

                DropDownListThird.Items.Remove(DropDownListThird.Items.FindByValue("-1"));
                DropDownListThird.Items.Add(Session["BookLocation1"].ToString());
                DropDownListThird.Items.Add(Session["BookLocation2"].ToString());
                DropDownListThird.Items.Add(Session["BookLocation3"].ToString());
                DropDownListThird.Items.FindByValue(Session["BookLocation3"].ToString()).Selected = true;
            }
        }

        protected void ButtonCancel_Click(object sender, EventArgs e)
        {
            Session["BookName"] = "";
            Session["BookLocation1"] = "";
            Session["BookLocation2"] = "";
            Session["BookLocation3"] = "";
            Session["BookPrice"] = "";
            Session["BookDuration"] = "";
            Session["BookDescription"] = "";

            Response.Redirect("CustomerPlan.aspx");
        }

        protected void CalendarPlan_SelectionChanged(object sender, EventArgs e)
        {
            DateTime startDate = CalendarPlan.SelectedDate;

            if (startDate.Date < DateTime.Now.Date)
            {
                LabelStartDate.ForeColor = System.Drawing.Color.Red;
                LabelEndDate.ForeColor = System.Drawing.Color.Red;

                LabelStartDate.Text = "Error! Invalid start date.";
                LabelEndDate.Text = "Error! Invalid start date.";
            }
            else
            {
                string duration = Session["BookDuration"].ToString();
                double doubDuration = Double.Parse(duration);

                LabelStartDate.ForeColor = System.Drawing.Color.Black;
                LabelEndDate.ForeColor = System.Drawing.Color.Black;

                LabelStartDate.Text = CalendarPlan.SelectedDate.ToString("dddd, dd MMMM yyyy");
                LabelEndDate.Text = CalendarPlan.SelectedDate.AddDays(doubDuration).ToString("dddd, dd MMMM yyyy");
            }
        }

        protected void ButtonContinue_Click(object sender, EventArgs e)
        {
            string dateBooked = DateTime.Now.ToString("dddd, dd MMMM yyyy");
            string name = LabelPlanName.Text;
            string duration = LabelDuration.Text;
            string startDate = LabelStartDate.Text;
            string endDate = LabelEndDate.Text;
            string price = LabelPrice.Text;
            string location1 = DropDownListFirst.SelectedItem.Text;
            string location2 = DropDownListSecond.SelectedItem.Text;
            string location3 = DropDownListThird.SelectedItem.Text;

            BookingDetails bd = new BookingDetails(dateBooked, name, duration, startDate, endDate, price, location1, location2, location3);
            int result = bd.InsertBooking();

            //if (result == 1)
            //{
            //    Response.Redirect("Home.aspx");
            //}
        }

        protected void submit_ServerClick(object sender, EventArgs e)
        {
            C_Details r = new C_Details(name.Text, passNo.Text, email.Text, mobileNo.Text, cardNo.Text, month.Text, year.Text, ccv.Text);
            int result = r.insertCustomerDetails();

            if (result == 1)
            {
                Response.Redirect("BookingDetails.aspx");
            }
        }
    }
}