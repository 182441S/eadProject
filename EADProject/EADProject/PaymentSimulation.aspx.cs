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
    public partial class PaymentSimulation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void saveBTTN_ServerClick(object sender, EventArgs e)
        {
            TourGuide ist = new TourGuide();


            HttpPostedFile postedfile = FileUpload1.PostedFile;
            Stream stream = postedfile.InputStream;
            BinaryReader binaryReader = new BinaryReader(stream);
            byte[] bytes =binaryReader.ReadBytes((int)stream.Length);
            string nric = "S1234567A";
            int picresult = ist.InsertProfilePic(bytes,nric);


            int re = ist.Update(Convert.ToInt32(salarytb.Text),"S1234567A");

            if (bonusamttb.Text != "")
            {
                int result = ist.InsertTest(Convert.ToInt32(bonusamttb.Text), Commentstb.Text);
            }
        }
    }
}