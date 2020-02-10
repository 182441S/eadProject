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
    public class ReviewDAO
    {
        public Review RetrieveReviews()
        {
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection connect = new SqlConnection(DBConnect);

            string sqlStatement = "select * from Reviews";
            SqlDataAdapter da = new SqlDataAdapter(sqlStatement, connect);

            DataSet ds = new DataSet();

            da.Fill(ds);

            Review a = null;
            int recur_count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < recur_count; i++)
            {
                DataRow row = ds.Tables[0].Rows[i];
                string content = row["content"].ToString();

                a = new Review(content);
            }
            return a;
        }

        public int Insert(string a)
        {
            int result = 0;
            SqlCommand sqlCmd = new SqlCommand();

            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlStmt = "insert into Reviews Values(@paraContent)";
            sqlCmd = new SqlCommand(sqlStmt, myConn);
            sqlCmd.Parameters.AddWithValue("@paraContent", a);


            myConn.Open();
            result = sqlCmd.ExecuteNonQuery();

            myConn.Close();

            return result;
        }
    }
}