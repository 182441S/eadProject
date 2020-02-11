using EADProject.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EADProject
{
    public partial class ViewTourguideDetails : System.Web.UI.Page
    {



        protected void Page_Load(object sender, EventArgs e)
        {
            namestring.Visible = false;
            nricstring.Visible = false;
            Label12.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;
        }

        protected void SearchBttn_Click(object sender, EventArgs e)
        {
            string nric = TGSearchTB.Text;
            TourGuide details = new TourGuide();

                details = details.SelectTourGuideByID(nric);
            if (details != null)
            {
                namestring.Visible = true;
                nricstring.Visible = true;
                Label12.Visible = true;
                Label3.Visible = true;
                Label4.Visible = true;
                Label5.Visible = true;
                Label6.Visible = true;

                error2.Visible = false;
                nameLBL.Text = details.Name.ToString();
                nricLBL.Text = details.NRIC.ToString();
                genderLBL.Text = details.Gender.ToString();
                dobLBL.Text = details.DOB.ToString();
                emailLBL.Text = details.EMAIL.ToString();
                phoneLBL.Text = details.PHONE.ToString();
                dateregisteredLBL.Text = details.DATEREGISTERED.ToString();
                Image1.ImageUrl = "data:Image/png;base64," + details.PIC;
            }
            else
            {
                error2.Text = "No such NRIC found in our Database";
                nameLBL.Text ="";
                nricLBL.Text = "";
                genderLBL.Text = "";
                dobLBL.Text = "";
                emailLBL.Text = "";
                phoneLBL.Text = "";
                dateregisteredLBL.Text = "";

            }
        }
    }
}