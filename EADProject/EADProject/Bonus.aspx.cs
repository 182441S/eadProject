using EADProject.BLL;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EADProject
{
    public partial class Bonus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["NRIC"] == null || Session["NRIC"].ToString() == null)
                {
                    Response.Redirect("PaymentSimulation.aspx");
                }
                else
                {
                    namelbl.Text = Session["NAME"].ToString();
                    nriclbl.Text = Session["NRIC"].ToString();
                    phonelbl.Text = Session["PHONE"].ToString();
                    emaillbl.Text = Session["EMAIL"].ToString();
                    salarytb.Text = Session["SALARY"].ToString();
                }
            }

        }
        protected void cancel_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("PaymentSimulation.aspx");

        }

        protected void saveBTTN_ServerClick(object sender, EventArgs e)
        {
            TourGuide ist = new TourGuide();
            string nric = Session["Nric"].ToString();


            if (FileUpload1.HasFiles)
            {

                //string s1 =Path.GetFileName(FileUpload1.FileName);
                //string path = Server.MapPath("images") + "/" + s1;
                //FileUpload1.SaveAs(path);


                HttpPostedFile postedfile = FileUpload1.PostedFile;
                Stream stream = postedfile.InputStream;
                BinaryReader binaryReader = new BinaryReader(stream);
                byte[] bytes = binaryReader.ReadBytes((int)stream.Length);
                //string s1 = Convert.ToBase64String(bytes);

                int picresult = ist.InsertProfilePic(bytes, nric);


            }








            int re = ist.Update(Convert.ToInt32(salarytb.Text), nric);

            if (bonusamttb.Text != "")
            {
                int result = ist.InsertTest(Convert.ToInt32(bonusamttb.Text), Commentstb.Text, nric);
            }

            Response.Redirect("PaymentSimulation.aspx");
        }
    }
}