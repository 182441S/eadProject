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
    public class LoginDAO
    {
        public Cust Verify(string email, string password)
        {
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlStmt = "Select * from Cust where email = @paraEmail, password = @paraPassword";
            SqlDataAdapter da = new SqlDataAdapter(sqlStmt, myConn);

            da.SelectCommand.Parameters.AddWithValue("@paraEmail", email);
            da.SelectCommand.Parameters.AddWithValue("@paraPassword", password);

            DataSet ds = new DataSet();

            da.Fill(ds);

            Cust emp = null;
            int rec_cnt = ds.Tables[0].Rows.Count;
            if (rec_cnt == 1)
            {
                DataRow row = ds.Tables[0].Rows[0];
                string Email = row["email"].ToString();
                string Password = row["password"].ToString();
                emp = new Cust(Email, Password);
            }
            else
            {
                emp = null;
            }

            return emp;
        }
    }
}