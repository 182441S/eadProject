using EADProject.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EADProject.BLL
{
    public class C_Details
    {
        public string Name { get; set; }
        public string PassportNo { get; set; }
        public string Email { get; set; }
        public string Mobile { get; set; }
        public string CardNo { get; set; }
        public string ExpiryMonth { get; set; }
        public string ExpiryYear { get; set; }
        public string CCV { get; set; }

        public C_Details()
        {

        }

        public C_Details(string name, string passportNo, string email, string mobile, string cardNo, string expiryMonth, string expiryYear, string ccv)
        {
            Name = name;
            PassportNo = passportNo;
            Email = email;
            Mobile = mobile;
            CardNo = cardNo;
            ExpiryMonth = expiryMonth;
            ExpiryYear = expiryYear;
            CCV = ccv;
        }

        public C_Details getCustomerDetails(string a)
        {
            C_DetailsDAO dao = new C_DetailsDAO();
            return dao.RetrieveCustomerDetails(a);
        }

        public int insertCustomerDetails()
        {
            C_DetailsDAO dao = new C_DetailsDAO();
            int result = dao.Insert(this);
            return result;
        }
    }
}