using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Net;
using System.Net.Mail;

namespace FinalProject
{
    public partial class Homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage Msg = new MailMessage();
                // Sender e-mail address.
                Msg.From = new MailAddress(txtUsername.Text);
                // Recipient e-mail address.
                Msg.To.Add(txtrecieve.Text);
                Msg.Subject = "A New FeedBack -- By--" + txtname.Text;
                Msg.Body = txtb.Text;
                // remote SMTP server IP.
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential(txtUsername.Text, txtpwd.Text);
                smtp.EnableSsl = true;
                smtp.Send(Msg);
                Msg = null;
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('ThankYou For Your Feedback!!.');", true);


            }
            catch (Exception ex)
            {
                Console.WriteLine("{0} Exception caught.", ex);
            }
        }
        public void test()
        {
            Response.Redirect("intelprocessor.aspx");
        }
        protected void subscribe_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage Msg = new MailMessage();
                // Sender e-mail address.
                Msg.From = new MailAddress(txtrecieve.Text);
                // Recipient e-mail address.
                Msg.To.Add(txtsubscribe.Text);
                Msg.Subject = "From TheDeveloper  @D.I.Y Ark--";
                Msg.Body = txtmessage.Text;
                // remote SMTP server IP.
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential(txtdeveloper.Text, txtpassword.Text);
                smtp.EnableSsl = true;
                smtp.Send(Msg);
                Msg = null;
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Subscription Sent');", true);

            }
            catch (Exception x)
            {
                Console.WriteLine("{0} Exception caught.", x);
            }
        }

        protected void lgbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("intelprocessor.aspx");
        }

        

       

       
       

      
       
    }
}