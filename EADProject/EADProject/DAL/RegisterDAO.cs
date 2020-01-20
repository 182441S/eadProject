using EADProject.BLLL;
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
        //public List<Cust> SelectAll()
        //{
        //    string DBConnect = ConfigurationManager.ConnectionStrings["Connstr"].ConnectionString;
        //    SqlConnection myConn = new SqlConnection(DBConnect);

        //    string sqlStmt = "Select * from Cust";
        //    SqlDataAdapater da = new SqlDataAdapater(sqlStmt, myConn);

        //    DataSet ds = new DataSet();

        //    da.Fill(ds);


        //}

        //public Cust Verify(string name, string password)
        //{
        //    string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
        //    SqlConnection myConn = new SqlConnection(DBConnect);

        //    string sqlStmt = "Select * from Cust where name = @paraName, password = @paraPassword";
        //    SqlDataAdapter da = new SqlDataAdapter(sqlStmt, myConn);

        //    da.SelectCommand.Parameters.AddWithValue("@paraName", name);
        //    da.SelectCommand.Parameters.AddWithValue("@paraPassword", password);

        //    DataSet ds = new DataSet();

        //    da.Fill(ds);

        //    Cust emp = null;
        //    int rec_cnt = ds.Tables[0].Rows.Count;
        //    if (rec_cnt == 1)
        //    {
        //        DataRow row = ds.Tables[0].Rows[0];
        //        string Name = row["name"].ToString();
        //        string Password = row["password"].ToString();
        //        emp = new Cust(Name, Password);
        //    }
        //    else
        //    {
        //        emp = null;
        //    }

        //    return emp;

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

            //public int Update(Cust emp)
            //{
            //    int result = 0;
            //    SqlCommand sqlCmd = new SqlCommand();

            //    string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            //    SqlConnection myConn = new SqlConnection(DBConnect);

            //    string sqlStmt = "UPDATE EMPLOYEE SET Name = @paraName, DOB = @paraDOB, Phone = @paraPhone, Email = @paraEmail, Password = @paraPassword";
            //    sqlCmd = new SqlCommand(sqlStmt, myConn);

            //    sqlCmd.Parameters.AddWithValue("@paraName", emp.Name);
            //    sqlCmd.Parameters.AddWithValue("@paraDOB", emp.DOB);
            //    sqlCmd.Parameters.AddWithValue("@paraPhone", emp.Phone);
            //    sqlCmd.Parameters.AddWithValue("@paraEmail", emp.Email);
            //    sqlCmd.Parameters.AddWithValue("@paraPassword", emp.Password);

            //    myConn.Open();
            //    result = sqlCmd.ExecuteNonQuery();

            //    myConn.Close();

            //    return result;
            //}
        
    }
}