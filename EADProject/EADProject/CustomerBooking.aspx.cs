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
            BookingDetails bd = new BookingDetails();
            List<BookingDetails> bookingList = new List<BookingDetails>();

            bookingList = bd.GetAllBookings();

            GridViewBookings.Visible = true;
            GridViewBookings.DataSource = bookingList;
            GridViewBookings.DataBind();
        }
    }
}