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
    public class C_DetailsDAO
    {        
        public int Insert(C_Details a)
        {
            int result = 0;
            SqlCommand sqlCmd = new SqlCommand();
            
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);
            
            string sqlStmt = "insert into Cust_Order_Details (name, email, mobile, passportNo, cardNo, expiryMonth, expiryYear, ccv) " +
                "values (@paraName, @paraEmail, @paraMobile, @paraPassportNo, @paraCardNo, @paraExpiryMonth, @paraExpiryYear, @paraCcv)";
            sqlCmd = new SqlCommand(sqlStmt, myConn);
            
            sqlCmd.Parameters.AddWithValue("@paraName", a.Name);
            sqlCmd.Parameters.AddWithValue("@paraEmail", a.Email);
            sqlCmd.Parameters.AddWithValue("@paraMobile", a.Mobile);
            sqlCmd.Parameters.AddWithValue("@paraPassportNo", a.PassportNo);
            sqlCmd.Parameters.AddWithValue("@paraCardNo", a.CardNo);    
            sqlCmd.Parameters.AddWithValue("@paraExpiryMonth", a.ExpiryMonth);
            sqlCmd.Parameters.AddWithValue("@paraExpiryYear", a.ExpiryYear);
            sqlCmd.Parameters.AddWithValue("@paraCcv", a.CCV);


            myConn.Open();
            result = sqlCmd.ExecuteNonQuery();
            
            myConn.Close();

            return result;
        }

        public C_Details RetrieveCustomerDetails(string passportNo)
        {
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection connect = new SqlConnection(DBConnect);

            string sqlStatement = "select * from Cust_Order_Details where passportNo = @paraPassportNo";
            SqlDataAdapter da = new SqlDataAdapter(sqlStatement, connect);

            da.SelectCommand.Parameters.AddWithValue("@paraPassportNo", passportNo);

            DataSet ds = new DataSet();

            da.Fill(ds);

            C_Details a = null;
            int recur_count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < recur_count; i++)
            {
                DataRow row = ds.Tables[0].Rows[i];
                string name = row["name"].ToString();
                string passport = row["passportNo"].ToString();
                string email = row["email"].ToString();
                string mobile = row["mobile"].ToString();
                string cardNo = row["cardNo"].ToString();
                string expiryMonth = row["expiryMonth"].ToString();
                string expiryYear = row["expiryYear"].ToString();
                string ccv = row["ccv"].ToString();

                a = new C_Details(name, passport, email, mobile, cardNo, expiryMonth, expiryYear, ccv);
            }
            return a;
        }
    }
}