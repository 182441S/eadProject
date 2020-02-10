using EADProject.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;

namespace EADProject
{
    public partial class StaffStats : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Chart1.Series["SeriesStats"].Points.Clear();

                OverallPlanSales();
            }            
        }

        protected void TotalPlanSales()
        {
            BookingDetails bd = new BookingDetails();
            PlanDetails pd = new PlanDetails();

            List<string> planNames = pd.GetPlanNames();
            List<int> planSales = bd.GetPlanSales(planNames);

            Series series = Chart1.Series["SeriesStats"];

            for (int i = 0; i < planNames.Count; i++)
            {
                series.Points.AddXY(planNames[i], planSales[i]);
            }
        }

        protected void OverallPlanSales()
        {
            BookingDetails bd = new BookingDetails();

            List<string> listYears = new List<string>() { "2020", "2021", "2022" };
            List<int> totalSales = bd.GetTotalSales(listYears);

            Series series = Chart1.Series["SeriesStats"];

            for (int i = 0; i < listYears.Count; i++)
            {
                series.Points.AddXY(listYears[i], totalSales[i]);
            }
        }

        protected void DropDownListVariable_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownListVariable.SelectedValue == "Total Plan Sales")
            {
                Chart1.Series["SeriesStats"].Points.Clear();

                OverallPlanSales();
            }
            else if (DropDownListVariable.SelectedValue == "Individual Plan Sales")
            {
                Chart1.Series["SeriesStats"].Points.Clear();

                TotalPlanSales();
            }
        }
    }
}