using EADProject.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EADProject.BLL
{
    public class TourGuide
    {
        public string NRIC { get; set; }
        public string Name { get; set; }
        public string Gender { get; set; }
        public string DOB { get; set; }
        public string EMAIL { get; set; }
        public int PHONE { get; set; }
        public string DATEREGISTERED { get; set; }
        public int SALARY { get; set; }
        public string PIC { get; set; }
        
        

        public TourGuide(string nric,string name,string gender,string dob,string email,int phone, string dateregistered,int salary,string pic)
        {
            NRIC = nric;
            Name = name;
            Gender = gender;
            DOB = dob;
            EMAIL = email;
            PHONE = phone;
            DATEREGISTERED = dateregistered;
            SALARY = salary;
            PIC = pic;
        }
       
        public TourGuide()
        {

        }

        public TourGuide SelectTourGuideByID(string nric)
        {
            ViewtourguideDetailsDAO dao = new ViewtourguideDetailsDAO();
            return dao.RetrieveTGDetailsbyID(nric);
        }

        public int InsertTest(int bonus,string comments,string nric)
        {
            ViewtourguideDetailsDAO dao = new ViewtourguideDetailsDAO();
            int result = dao.Insertbonus(bonus,comments ,nric);
            return result;
        }

        public int Update(int salary,string nric)
        {
            ViewtourguideDetailsDAO dao = new ViewtourguideDetailsDAO();
            int re = dao.Updatesalary(salary, nric);
            return re;
        }

        public int InsertProfilePic(byte[] pic,string nric)
        {
            ViewtourguideDetailsDAO dao = new ViewtourguideDetailsDAO();
            int r = dao.Insertpic(pic,nric);
            return r;
        }
    }
}