using EADProject.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EADProject.BLL
{
    public class BookingDetails
    {
        public string DateBooked { get; set; }
        public string Name { get; set; }
        public string Duration { get; set; }
        public string StartDate { get; set; }
        public string EndDate { get; set; }
        public string Price { get; set; }
        public string Location1 { get; set; }
        public string Location2 { get; set; }
        public string Location3 { get; set; }

        public BookingDetails()
        {

        }

        public BookingDetails(string dateBooked, string name, string duration, string startDate, string endDate, string price, string location1, string location2, string location3)
        {
            DateBooked = dateBooked;
            Name = name;
            Duration = duration;
            StartDate = startDate;
            EndDate = endDate;
            Price = price;
            Location1 = location1;
            Location2 = location2;
            Location3 = location3;
        }

        public int InsertBooking()
        {
            BookingDetailsDAO dao = new BookingDetailsDAO();
            return (dao.Insert(this));
        }

        public List<BookingDetails> GetAllBookings()
        {
            BookingDetailsDAO dao = new BookingDetailsDAO();
            return dao.RetrieveAll();
        }
    }
}