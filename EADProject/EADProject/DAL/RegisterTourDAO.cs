using EADProject.BLL;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace EADProject.DAL
{
    public class RegisterTourDAO
    {
        public int Insert(string name, DateTime dob, int phone, string email, string password)
        {

            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlStmt = "Insert into Tour Values(@paraname,@paradob,@paraphone,@paraemail,@parapassword) ";
            SqlCommand sqlCmd = new SqlCommand(sqlStmt, myConn);

            sqlCmd = new SqlCommand(sqlStmt, myConn);
            sqlCmd.Parameters.AddWithValue("@paraname", name);
            sqlCmd.Parameters.AddWithValue("@paradob", dob);
            sqlCmd.Parameters.AddWithValue("@paraphone", phone);
            sqlCmd.Parameters.AddWithValue("@paraemail", email);
            sqlCmd.Parameters.AddWithValue("@parapassword", password);

            myConn.Open();
            int result = sqlCmd.ExecuteNonQuery();

            myConn.Close();
            return result;

        }
    }
}