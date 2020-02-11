using EADProject.BLL;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace EADProject.DAL
{
    public class PlanDetailsDAO
    {
        private static PlanDetails Read(SqlDataReader dr)
        {
            string name = dr["Name"].ToString();
            string locationFirst = dr["Location1"].ToString();
            string locationSecond = dr["Location2"].ToString();
            string locationThird = dr["Location3"].ToString();
            int price = int.Parse(dr["Price"].ToString());
            int duration = int.Parse(dr["Duration"].ToString());
            string description = dr["Description"].ToString();

            PlanDetails plan = new PlanDetails
            {
                Name = name,
                LocationFirst = locationFirst,
                LocationSecond = locationSecond,
                LocationThird = locationThird,
                Price = price,
                Duration = duration,
                Description = description
            };

            return plan;
        }

        public int Insert(PlanDetails pd)
        {
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlStmt = "INSERT INTO PlanDetails (Name, Location1, Location2, Location3, Price, Duration, Description)" +
                             "VALUES (@paraName, @paraLocation1, @paraLocation2, @paraLocation3, @paraPrice, @paraDuration, @paraDesc)";

            int result = 0;
            SqlCommand sqlCmd = new SqlCommand(sqlStmt, myConn);

            sqlCmd.Parameters.AddWithValue("@paraName", pd.Name);
            sqlCmd.Parameters.AddWithValue("@paraLocation1", pd.LocationFirst);
            sqlCmd.Parameters.AddWithValue("@paraLocation2", pd.LocationSecond);
            sqlCmd.Parameters.AddWithValue("@paraLocation3", pd.LocationThird);
            sqlCmd.Parameters.AddWithValue("@paraPrice", pd.Price);
            sqlCmd.Parameters.AddWithValue("@paraDuration", pd.Duration);
            sqlCmd.Parameters.AddWithValue("@paraDesc", pd.Description);

            myConn.Open();
            result = sqlCmd.ExecuteNonQuery();

            myConn.Close();

            return result;
        }

        public List<PlanDetails> RetrieveAll()
        {
            List<PlanDetails> list = new List<PlanDetails>();

            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlStmt = "SELECT * FROM PlanDetails";

            SqlCommand sqlCmd = new SqlCommand(sqlStmt, myConn);

            myConn.Open();

            SqlDataReader dr = sqlCmd.ExecuteReader();
            while (dr.Read())
            {
                PlanDetails plan = Read(dr);
                list.Add(plan);
            }

            myConn.Close();

            return list;
        }

        public int UpdatePlanDetails(string name, string location1, string location2, string location3, int price, int duration, string description)
        {
            string connStr = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(connStr);

            string sqlStmt = @"UPDATE PlanDetails SET Location1 = @paraLocation1, Location2 = @paraLocation2, Location3 = @paraLocation3, Price = @paraPrice, Duration = @paraDuration, Description = @paraDesc where Name = @paraName";

            int result = 0;
            SqlCommand sqlCmd = new SqlCommand(sqlStmt, myConn);
            sqlCmd.Parameters.AddWithValue("@paraName", name);
            sqlCmd.Parameters.AddWithValue("@paraLocation1", location1);
            sqlCmd.Parameters.AddWithValue("@paraLocation2", location2);
            sqlCmd.Parameters.AddWithValue("@paraLocation3", location3);
            sqlCmd.Parameters.AddWithValue("@paraPrice", price);
            sqlCmd.Parameters.AddWithValue("@paraDuration", duration);
            sqlCmd.Parameters.AddWithValue("@paraDesc", description);

            myConn.Open();
            result = sqlCmd.ExecuteNonQuery();
            myConn.Close();

            return result;
        }

        public List<String> GetPlanNames()
        {
            List<string> list = new List<string>();

            string connStr = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(connStr);

            string sqlStmt = @"SELECT Name FROM PlanDetails";

            SqlCommand sqlCmd = new SqlCommand(sqlStmt, myConn);

            myConn.Open();

            SqlDataReader dr = sqlCmd.ExecuteReader();
            while (dr.Read())
            {
                list.Add(dr["Name"].ToString());
            }

            myConn.Close();

            return list;
        }
    }
}