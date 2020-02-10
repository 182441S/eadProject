using EADProject.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EADProject.BLL
{
    public class Cust
    {
        public string Name { get; set; }
        public DateTime DOB { get; set; }
        public int Phone { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }

        public Cust(string name, DateTime dob, int phone, string email, string password)
        {
            Name = name;
            DOB = dob;
            Phone = phone;
            Email = email;
            Password = password;

        }
        public Cust()
        {

        }

        public Cust(string name, string password)
        {
            Name = name;
            Password = password;
        }

        public int AddCustomer(string name,DateTime dob,int phone,string email,string password)
        {
            RegisterDAO dao = new RegisterDAO();
            int result = dao.Insert(name,dob,phone,email,password);
            return result;
        }

        public Cust VerifyByID(string email, string password)
        {
            LoginDAO dao = new LoginDAO();
            return dao.Verify(email, password);
        }

        //public Cust Update(string name, DateTime dob, int phone, string password)
        //{
        //    RegisterDAO dao = new RegisterDAO();
        //    int result = dao.Update(name, dob, phone, password);
        //    return result;
        //}
    }
}