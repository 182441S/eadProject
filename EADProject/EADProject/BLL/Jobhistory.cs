using EADProject.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EADProject.BLL
{
    public class Jobhistory
    {
        public string TOURNAME { get; set; }
        public DateTime TOURDATE { get; set; }
        public DateTime STARTDATE { get; set; }
        public DateTime ENDDATE { get; set; }
        public string CUSTNAME { get; set; }




        public Jobhistory(string tourname, DateTime tourdate, DateTime startdate, DateTime enddate, string custname)
        {
            TOURNAME = tourname;
            TOURDATE = tourdate;
            STARTDATE = startdate;
            ENDDATE = enddate;
            CUSTNAME = custname;

        }

        public Jobhistory()
        {

        }

        public Jobhistory selectbydate(DateTime start,DateTime end)
        {
            ViewtourguideDetailsDAO dao = new ViewtourguideDetailsDAO();
            return dao.RetrieveBookingdetailsbyDate(start, end);

        }
    }



    
}