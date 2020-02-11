using EADProject.BLL;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;

namespace EADProject.DAL
{
    public class RegisterDAO
    {

            public int Insert(string name, DateTime dob, int phone, string email, string password)
            {

                string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
                SqlConnection myConn = new SqlConnection(DBConnect);

                string sqlStmt = "Insert into Cust Values(@paraname,@paradob,@paraphone,@paraemail,@parapassword) ";
                SqlCommand sqlCmd = new SqlCommand(sqlStmt,myConn);

                sqlCmd = new SqlCommand(sqlStmt,myConn);
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

        public int Update(Cust emp)
        {
            int result = 0;
            SqlCommand sqlCmd = new SqlCommand();

            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlStmt = "UPDATE Cust SET Name = @paraName, DOB = @paraDOB, Phone = @paraPhone, Password = @paraPassword where email = @paraEmail";
            sqlCmd = new SqlCommand(sqlStmt, myConn);

            sqlCmd.Parameters.AddWithValue("@paraName", emp.Name);
            sqlCmd.Parameters.AddWithValue("@paraDOB", emp.DOB);
            sqlCmd.Parameters.AddWithValue("@paraPhone", emp.Phone);
            sqlCmd.Parameters.AddWithValue("@paraPassword", emp.Password);

            myConn.Open();
            result = sqlCmd.ExecuteNonQuery();

            myConn.Close();

            return result;
        }

    }

}