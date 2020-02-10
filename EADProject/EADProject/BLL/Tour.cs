using EADProject.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EADProject.BLL
{
    public class Tour
    {
        public string Name { get; set; }
        public DateTime DOB { get; set; }
        public int Phone { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }

        public Tour(string name, DateTime dob, int phone, string email, string password)
        {
            Name = name;
            DOB = dob;
            Phone = phone;
            Email = email;
            Password = password;

        }

        public Tour()
        {

        }

        public Tour(string name, string password)
        {
            Name = name;
            Password = password;
        }

        public int AddCustomer(string name, DateTime dob, int phone, string email, string password)
        {
            RegisterTourDAO dao = new RegisterTourDAO();
            int result = dao.Insert(name, dob, phone, email, password);
            return result;
        }
    }
}