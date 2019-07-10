using QRCoder;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QRCodeApp
{
    public partial class frmQRcodeGenerate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnGenQR_Click(object sender, EventArgs e)
        {
            string code = txtCode.Text;
            //string code = "LevelID: 4, S/N:03BN, Location: Jewel@Changi Airport";
            QRCodeGenerator qrGen = new QRCodeGenerator();
            QRCodeGenerator.QRCode qrCode = qrGen.CreateQrCode(code, QRCodeGenerator.ECCLevel.Q);

            System.Web.UI.WebControls.Image imgQRcode = new System.Web.UI.WebControls.Image();
            imgQRcode.Height = 150;
            imgQRcode.Width = 150;

            using (System.Drawing.Bitmap bitmap = qrCode.GetGraphic(20))
            {
                using (MemoryStream ms = new MemoryStream())
                {
                    bitmap.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                    byte[] byteImage = ms.ToArray();
                    imgQRcode.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(byteImage);

                }
                PlaceHolder1.Controls.Add(imgQRcode);
            }
        }
    }
}