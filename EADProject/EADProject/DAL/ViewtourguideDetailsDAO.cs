using EADProject.BLL;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace EADProject.DAL
{
    public class ViewtourguideDetailsDAO
    {
        public TourGuide RetrieveTGDetailsbyID(string nric)
        {
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            //Step 2 -  Create a DataAdapter to retrieve data from the database table
            string sqlStmt = "Select * from TGDetails where nric = @paranri";
            SqlDataAdapter da = new SqlDataAdapter(sqlStmt, myConn);

            da.SelectCommand.Parameters.AddWithValue("@paranri", nric);

            //Step 3 -  Create a DataSet to store the data to be retrieved
            DataSet ds = new DataSet();

            //Step 4 -  Use the DataAdapter to fill the DataSet with data retrieved
            da.Fill(ds);



            //Step 5 -  Read data from DataSet to List
            TourGuide TG = null;
            int rec_cnt = ds.Tables[0].Rows.Count;
            if (rec_cnt==1)
            {
                DataRow row = ds.Tables[0].Rows[0];
                string name = row["Name"].ToString();
                string gender = row["Gender"].ToString();
                string dob = row["D.O.B"].ToString();
                string email = row["Email"].ToString();
                string phonestring = row["Phone"].ToString();
                int phone = Convert.ToInt32(phonestring);
                string dateregistered = row["Date Registered"].ToString();
                string salarystring = row["Salary"].ToString();
                int salary = Convert.ToInt32(salarystring);
                byte[] p =(byte[]) row["ProfilePicData"];
                string strBase64 = Convert.ToBase64String(p);








                TG = new TourGuide(nric,name,gender,dob,email,phone,dateregistered,salary,strBase64);
            }
            else
            {
                TG = null;
            }
            return TG;
            

        }

        public int Insertbonus(int bonus,string comments,string nric)
        {


            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlstmt = "Insert into Bonus Values(@paraNric,@paraBonus,@paraComments) ";
            SqlCommand sqlCmd = new SqlCommand(sqlstmt, myConn);

            sqlCmd.Parameters.AddWithValue("@paraNric", nric);
            sqlCmd.Parameters.AddWithValue("@paraBonus", bonus);
            sqlCmd.Parameters.AddWithValue("@paraComments", comments);

            myConn.Open();
            int result = sqlCmd.ExecuteNonQuery();

            myConn.Close();
            return result;

        }

        public int Updatesalary(int salary,string nric)
        {
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlstmt = "Update TGDetails Set Salary=(@paraSalary) Where nric=(@paraNric) ";
            SqlCommand sqlCmd = new SqlCommand(sqlstmt, myConn);

            sqlCmd.Parameters.AddWithValue("@paraNric", nric);
            sqlCmd.Parameters.AddWithValue("@paraSalary", salary);
            myConn.Open();
            int result = sqlCmd.ExecuteNonQuery();

            myConn.Close();
            return result;

        }
        public int Insertpic(byte[] pic,string nric)
        {


            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlstmt = "UPDATE TGDetails set ProfilePicData=(@Pic) Where nric=(@paraNric) ";
            SqlCommand sqlCmd = new SqlCommand(sqlstmt, myConn);

            sqlCmd.Parameters.AddWithValue("@Pic",pic);
            sqlCmd.Parameters.AddWithValue("@paraNric",nric);



            myConn.Open();
            int result = sqlCmd.ExecuteNonQuery();

            myConn.Close();
            return result;

        }



        public Jobhistory RetrieveBookingdetailsbyDate(DateTime startdate,DateTime enddate)
        {
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            //Step 2 -  Create a DataAdapter to retrieve data from the database table
            string sqlStmt = "Select * from BookingHistory where TourDate BETWEEN @parastart AND @paraend";
            SqlDataAdapter da = new SqlDataAdapter(sqlStmt, myConn);

            da.SelectCommand.Parameters.AddWithValue("@parastart", startdate);
            da.SelectCommand.Parameters.AddWithValue("@paraend", enddate);

            //Step 3 -  Create a DataSet to store the data to be retrieved
            DataSet ds = new DataSet();

            //Step 4 -  Use the DataAdapter to fill the DataSet with data retrieved
            da.Fill(ds);



            //Step 5 -  Read data from DataSet to List
            Jobhistory T = null;
            int rec_cnt = ds.Tables[0].Rows.Count;
            if (rec_cnt == 1)
            {
                DataRow row = ds.Tables[0].Rows[0];
                string Tourname = row["TourName"].ToString();
                DateTime Tourdate = Convert.ToDateTime(row["TourDate"]);
                DateTime Starttime = Convert.ToDateTime(row["StartTime"]);
                DateTime Endtime = Convert.ToDateTime(row["EndTime"]);
                string Custname = row["CustName"].ToString();
                








                T = new Jobhistory(Tourname, Tourdate, Starttime, Endtime,Custname);
            }
            else
            {
                T = null;
            }
            return T;


        }





    }
}