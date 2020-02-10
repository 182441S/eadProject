using EADProject.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EADProject.BLL
{
    public class PlanDetails
    {
        public string Name { get; set; }
        public string LocationFirst { get; set; }
        public string LocationSecond { get; set; }
        public string LocationThird { get; set; }
        public int Price { get; set; }
        public int Duration { get; set; }
        public string Description { get; set; }

        public PlanDetails()
        {

        }

        public PlanDetails(string name, string locFirst, string locSecond, string locThird, int price, int duration, string desc)
        {
            Name = name;
            LocationFirst = locFirst;
            LocationSecond = locSecond;
            LocationThird = locThird;
            Price = price;
            Duration = duration;
            Description = desc;
        }

        public int UpdatePlan()
        {
            PlanDetailsDAO dao = new PlanDetailsDAO();
            return (dao.Insert(this));
        }

        public List<PlanDetails> GetAll()
        {
            PlanDetailsDAO dao = new PlanDetailsDAO();
            return dao.RetrieveAll();
        }

        public int UpdatePlanByName(string name, string loc1, string loc2, string loc3, int price, int duration, string desc)
        {
            PlanDetailsDAO dao = new PlanDetailsDAO();
            return dao.UpdatePlanDetails(name, loc1, loc2, loc3, price, duration, desc);
        }

        public List<string> GetPlanNames()
        {
            PlanDetailsDAO dao = new PlanDetailsDAO();
            return dao.GetPlanNames();
        }
    }
}