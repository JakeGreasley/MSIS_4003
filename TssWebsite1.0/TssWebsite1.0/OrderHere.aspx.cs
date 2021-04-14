using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace TssWebsite1._0
{
    public partial class OrderHere : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        public void btnSubmit_Click(object sender, EventArgs e)
        {
            string emailFirst = tboxFirstName.Text;
            string emailMessage = tboxComment.Text;
            string emailSender = tboxEmail.Text;
            string toEmail = "troyolive197@gmail.com";

            MailAddress fromAddress = new MailAddress("troyolive197@gmail.com");
            MailAddress toAddress = new MailAddress(toEmail);

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential("troyolive197@gmail.com", "TroyO051400");

            MailMessage message = new MailMessage(fromAddress, toAddress);

            message.Subject = "Turf And Soil Solutions";

            message.Body = tboxComment.Text;

            smtp.Send(message);

            tboxFirstName.Text = "";
            tboxLastName.Text = "";
            tboxEmail.Text = "";
            tboxComment.Text = "";
        }
    }
}