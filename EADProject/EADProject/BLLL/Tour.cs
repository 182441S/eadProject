using EADProject.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EADProject.BLLL
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
       
        public int AddCustomer(string name, DateTime dob, int phone, string email, string password)
        {
            RegisterDAO dao = new RegisterDAO();
            int result = dao.Insert(name, dob, phone, email, password);
            return result;
        }
    }
}