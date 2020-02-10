using EADProject.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EADProject
{
    public partial class CustomerBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BookingDetails bd = new BookingDetails();
                List<BookingDetails> bookingList = new List<BookingDetails>();

                bookingList = bd.GetAllBookings();

                GridViewBookings.Visible = true;
                GridViewBookings.DataSource = bookingList;
                GridViewBookings.DataBind();

                Session["Colour"] = GridViewBookings.HeaderRow.Cells[0].BackColor;
            }
        }

        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            if (DropDownListParam.SelectedValue == "None")
            {
                BookingDetails bd = new BookingDetails();
                List<BookingDetails> bookingList = new List<BookingDetails>();

                bookingList = bd.GetAllBookings();

                LabelBookingError.Visible = false;

                GridViewBookings.Visible = true;
                GridViewBookings.DataSource = bookingList;
                GridViewBookings.DataBind();

            }
            else if (DropDownListParam.SelectedValue == "Date Booked")
            {
                BookingDetails bd = new BookingDetails();
                List<BookingDetails> bookingList = new List<BookingDetails>();

                bookingList = bd.GetBookingsByDate(TextBoxSearch.Text);

                if (!bookingList.Any())
                {
                    LabelBookingError.Text = "No bookings found!";
                    LabelBookingError.Visible = true;

                    GridViewBookings.Visible = false;
                }
                else
                {
                    LabelBookingError.Visible = false;

                    GridViewBookings.Visible = true;
                    GridViewBookings.DataSource = bookingList;
                    GridViewBookings.DataBind();
                }
            }
            else if (DropDownListParam.SelectedValue == "Plan Name")
            {
                BookingDetails bd = new BookingDetails();
                List<BookingDetails> bookingList = new List<BookingDetails>();

                bookingList = bd.GetBookingsByName(TextBoxSearch.Text);

                if (!bookingList.Any())
                {
                    LabelBookingError.Text = "No bookings found!";
                    LabelBookingError.Visible = true;

                    GridViewBookings.Visible = false;
                }
                else
                {
                    LabelBookingError.Visible = false;

                    GridViewBookings.Visible = true;
                    GridViewBookings.DataSource = bookingList;
                    GridViewBookings.DataBind();
                }                
            }
            else if (DropDownListParam.SelectedValue == "Start Date")
            {
                BookingDetails bd = new BookingDetails();
                List<BookingDetails> bookingList = new List<BookingDetails>();

                bookingList = bd.GetBookingsByStartDate(TextBoxSearch.Text);

                if (!bookingList.Any())
                {
                    LabelBookingError.Text = "No bookings found!";
                    LabelBookingError.Visible = true;

                    GridViewBookings.Visible = false;
                }
                else
                {
                    LabelBookingError.Visible = false;

                    GridViewBookings.Visible = true;
                    GridViewBookings.DataSource = bookingList;
                    GridViewBookings.DataBind();
                }                
            }
            else if (DropDownListParam.SelectedValue == "End Date")
            {
                BookingDetails bd = new BookingDetails();
                List<BookingDetails> bookingList = new List<BookingDetails>();

                bookingList = bd.GetBookingsByEndDate(TextBoxSearch.Text);

                if (!bookingList.Any())
                {
                    LabelBookingError.Text = "No bookings found!";
                    LabelBookingError.Visible = true;

                    GridViewBookings.Visible = false;
                }
                else
                {
                    LabelBookingError.Visible = false;

                    GridViewBookings.Visible = true;
                    GridViewBookings.DataSource = bookingList;
                    GridViewBookings.DataBind();
                }                
            }
        }

        protected void DropDownListParam_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownListParam.SelectedValue == "None")
            {
                TextBoxSearch.Text = "";

                GridViewBookings.HeaderRow.Cells[0].BackColor = System.Drawing.Color.FromName(Session["Colour"].ToString());
                GridViewBookings.HeaderRow.Cells[1].BackColor = System.Drawing.Color.FromName(Session["Colour"].ToString());
                GridViewBookings.HeaderRow.Cells[3].BackColor = System.Drawing.Color.FromName(Session["Colour"].ToString());
                GridViewBookings.HeaderRow.Cells[4].BackColor = System.Drawing.Color.FromName(Session["Colour"].ToString());
            }
            else if (DropDownListParam.SelectedValue == "Date Booked")
            {
                GridViewBookings.HeaderRow.Cells[0].BackColor = System.Drawing.Color.Cyan;
                
                GridViewBookings.HeaderRow.Cells[1].BackColor = System.Drawing.Color.FromName(Session["Colour"].ToString());
                GridViewBookings.HeaderRow.Cells[3].BackColor = System.Drawing.Color.FromName(Session["Colour"].ToString());
                GridViewBookings.HeaderRow.Cells[4].BackColor = System.Drawing.Color.FromName(Session["Colour"].ToString());
            }
            else if (DropDownListParam.SelectedValue == "Plan Name")
            {
                GridViewBookings.HeaderRow.Cells[1].BackColor = System.Drawing.Color.Cyan;

                GridViewBookings.HeaderRow.Cells[0].BackColor = System.Drawing.Color.FromName(Session["Colour"].ToString());
                GridViewBookings.HeaderRow.Cells[3].BackColor = System.Drawing.Color.FromName(Session["Colour"].ToString());
                GridViewBookings.HeaderRow.Cells[4].BackColor = System.Drawing.Color.FromName(Session["Colour"].ToString());
            }
            else if (DropDownListParam.SelectedValue == "Start Date")
            {
                GridViewBookings.HeaderRow.Cells[3].BackColor = System.Drawing.Color.Cyan;

                GridViewBookings.HeaderRow.Cells[0].BackColor = System.Drawing.Color.FromName(Session["Colour"].ToString());
                GridViewBookings.HeaderRow.Cells[1].BackColor = System.Drawing.Color.FromName(Session["Colour"].ToString());
                GridViewBookings.HeaderRow.Cells[4].BackColor = System.Drawing.Color.FromName(Session["Colour"].ToString());
            }
            else if (DropDownListParam.SelectedValue == "End Date")
            {
                GridViewBookings.HeaderRow.Cells[4].BackColor = System.Drawing.Color.Cyan;

                GridViewBookings.HeaderRow.Cells[0].BackColor = System.Drawing.Color.FromName(Session["Colour"].ToString());
                GridViewBookings.HeaderRow.Cells[1].BackColor = System.Drawing.Color.FromName(Session["Colour"].ToString());
                GridViewBookings.HeaderRow.Cells[3].BackColor = System.Drawing.Color.FromName(Session["Colour"].ToString());
            }
        }
    }
}