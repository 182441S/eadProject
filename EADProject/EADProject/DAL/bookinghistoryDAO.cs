using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace EADProject.DAL
{
    public class bookinghistoryDAO
    {
        //public bookinghistory ShowBookingHistory()
        //{
        //    //Step 1 -  Define a connection to the database by getting
        //    //          the connection string from web.config
        //    string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
        //    SqlConnection myConn = new SqlConnection(DBConnect);

        //    //Step 2 -  Create a DataAdapter to retrieve data from the database table
        //    string sqlStmt = "Select * from BookingHistory";
        //    SqlDataAdapter da = new SqlDataAdapter(sqlStmt, myConn);

        //    //Step 3 -  Create a DataSet to store the data to be retrieved
        //    DataSet ds = new DataSet();

        //    //Step 4 -  Use the DataAdapter to fill the DataSet with data retrieved
        //    da.Fill(ds);
        //}
    }
}