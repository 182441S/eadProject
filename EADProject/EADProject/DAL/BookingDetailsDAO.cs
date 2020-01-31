using EADProject.BLL;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace EADProject.DAL
{
    public class BookingDetailsDAO
    {
        private static BookingDetails Read(SqlDataReader dr)
        {
            string dateBooked = dr["DateBooked"].ToString();
            string name = dr["Name"].ToString();
            string duration = dr["Duration"].ToString();
            string startDate = dr["StartDate"].ToString();
            string endDate = dr["EndDate"].ToString();
            string price = dr["Price"].ToString();
            string location1 = dr["Location1"].ToString();
            string location2 = dr["Location2"].ToString();
            string location3 = dr["Location3"].ToString();

            BookingDetails booking = new BookingDetails
            {
                DateBooked = dateBooked,
                Name = name,
                Duration = duration,
                StartDate = startDate,
                EndDate = endDate,
                Price = price,
                Location1 = location1,
                Location2 = location2,
                Location3 = location3
            };

            return booking;
        }

        public int Insert(BookingDetails bd)
        {
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlStmt = "INSERT INTO BookingDetails (DateBooked, Name, Duration, StartDate, EndDate, Price, Location1, Location2, Location3)" +
                              "VALUES (@paraDateBooked, @paraName, @paraDuration, @paraStart, @paraEnd, @paraPrice, @paraLocation1, @paraLocation2, @paraLocation3)";

            int result = 0;
            SqlCommand sqlCmd = new SqlCommand(sqlStmt, myConn);

            sqlCmd.Parameters.AddWithValue("@paraDateBooked", bd.DateBooked);
            sqlCmd.Parameters.AddWithValue("@paraName", bd.Name);
            sqlCmd.Parameters.AddWithValue("@paraDuration", bd.Duration);
            sqlCmd.Parameters.AddWithValue("@paraStart", bd.StartDate);
            sqlCmd.Parameters.AddWithValue("@paraEnd", bd.EndDate);
            sqlCmd.Parameters.AddWithValue("@paraPrice", bd.Price);
            sqlCmd.Parameters.AddWithValue("@paraLocation1", bd.Location1);
            sqlCmd.Parameters.AddWithValue("@paraLocation2", bd.Location2);
            sqlCmd.Parameters.AddWithValue("@paraLocation3", bd.Location3);

            myConn.Open();
            result = sqlCmd.ExecuteNonQuery();

            myConn.Close();

            return result;
        }

        public List<BookingDetails> RetrieveAll()
        {
            List<BookingDetails> list = new List<BookingDetails>();

            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlStmt = "SELECT * FROM BookingDetails";

            SqlCommand sqlCmd = new SqlCommand(sqlStmt, myConn);

            myConn.Open();

            SqlDataReader dr = sqlCmd.ExecuteReader();
            while (dr.Read())
            {
                BookingDetails booking = Read(dr);
                list.Add(booking);
            }

            myConn.Close();

            return list;
        }
    }
}