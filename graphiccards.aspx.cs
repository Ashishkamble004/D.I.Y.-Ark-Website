using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Net;
using System.Net.Mail;

namespace FinalProject
{
    public partial class graphiccards : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void gbutton_Click(object sender, EventArgs e)
        {
            Session["test"] = gtext.Text;
        string ghj=gtext.Text;
            
            
            if (ghj.StartsWith("R"))
            {
                Response.Redirect("gresult.aspx");

            }
            else if (ghj.StartsWith("r"))
            {
                Response.Redirect("gresult.aspx");
            }
            else
            {
                Response.Redirect("gnvidiaresult.aspx");
            }
        }
        [WebMethod]
        public static string[] operation(string prefix)
        {

            List<string> processors = new List<string>();
            using (SqlConnection con = new SqlConnection())
            {


                con.ConnectionString = ConfigurationManager.ConnectionStrings["graphicstring"].ConnectionString;
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "SELECT [Models] FROM [AllModels] WHERE ([Models] LIKE '%' + @Models + '%')";
                    cmd.Parameters.AddWithValue("@Models", prefix);
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        while (sdr.Read())
                        {
                            processors.Add(string.Format("{0}", sdr["Models"]));
                        }
                    }
                    con.Close();
                }
            }
            return processors.ToArray();
        }

        protected void sb_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage Msg = new MailMessage();
                // Sender e-mail address.
                Msg.From = new MailAddress(txtdeveloper.Text);
                // Recipient e-mail address.
                Msg.To.Add(txtsb.Text);
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

        protected void NFilter_Sub_Btn_Click(object sender, EventArgs e)
        {
            if (NS_Cb1.Checked == true)
                Session["NSeries"] = "111";
            else if (NS_Cb2.Checked == true)
                Session["NSeries"] = "112";
            else if (NS_Cb3.Checked == true)
                Session["NSeries"] = "113";
            else
                Response.Write("Selecting any ONE of above is mandetory..");

            if (NIW_Cb1.Checked == true)
                Session["NInterWidth"] = "64";
            if (NIW_Cb2.Checked == true)
                Session["NInterWidth"] = "128";
            if (NIW_Cb3.Checked == true)
                Session["NInterWidth"] = "192";
            if (NIW_Cb4.Checked == true)
                Session["NInterWidth"] = "256";
            else
                Response.Write("Selecting any ONE of above is mandetory..");

            if (NStdMC_Cb1.Checked == true)
                Session["NStandMemoConf"] = "512";
            if (NStdMC_Cb2.Checked == true)
                Session["NStandMemoConf"] = "1";
            if (NStdMC_Cb3.Checked == true)
                Session["NStandMemoConf"] = "2";
            if (NStdMC_Cb4.Checked == true)
                Session["NStandMemoConf"] = "3";
            if (NStdMC_Cb5.Checked == true)
                Session["NStandMemoConf"] = "4";
            if (NStdMC_Cb6.Checked == true)
                Session["NStandMemoConf"] = "6";
            if (NStdMC_Cb7.Checked == true)
                Session["NStandMemoConf"] = "8";
            else
                Response.Write("Selecting any ONE of above is mandetory..");

            Response.Redirect("NvidiaFilterResult.aspx");
        }

        protected void AFilter_Sub_Btn_Click(object sender, EventArgs e)
        {
            if (AS_Cb1.Checked == true)
                Session["ASeries"] = "111";
            else if (AS_Cb2.Checked == true)
                Session["ASeries"] = "112";
            else if (AS_Cb3.Checked == true)
                Session["ASeries"] = "113";
            else if (AS_Cb4.Checked == true)
                Session["ASeries"] = "114";
            else if (AS_Cb5.Checked == true)
                Session["ASeries"] = "115";
            else
                Response.Write("Selecting any ONE of above is mandetory..");

            if (ASubS_Cb1.Checked == true)
                Session["ASubseries"] = "221";
            else if (ASubS_Cb2.Checked == true)
                Session["ASubseries"] = "222";
            else if (ASubS_Cb3.Checked == true)
                Session["ASubseries"] = "223";
            else if (ASubS_Cb4.Checked == true)
                Session["ASubseries"] = "224";
            else if (ASubS_Cb5.Checked == true)
                Session["ASubseries"] = "225";
            else if (ASubS_Cb6.Checked == true)
                Session["ASubseries"] = "226";
            else if (ASubS_Cb7.Checked == true)
                Session["ASubseries"] = "2212";
            else if (ASubS_Cb8.Checked == true)
                Session["ASubseries"] = "229";
            else if (ASubS_Cb9.Checked == true)
                Session["ASubseries"] = "2210";
            else if (ASubS_Cb10.Checked == true)
                Session["ASubseries"] = "2211";
            else
                Response.Write("Selecting any ONE of above is mandetory..");

            if (AMemoAmt_Cb1.Checked == true)
                Session["AMemoAmt"] = "1";
            else if (AMemoAmt_Cb2.Checked == true)
                Session["AMemoAmt"] = "2";
            else if (AMemoAmt_Cb3.Checked == true)
                Session["AMemoAmt"] = "3";
            else if (AMemoAmt_Cb4.Checked == true)
                Session["AMemoAmt"] = "4";
            else if (AMemoAmt_Cb5.Checked == true)
                Session["AMemoAmt"] = "6";
            else if (AMemoAmt_Cb6.Checked == true)
                Session["AMemoAmt"] = "8";
            else
                Response.Write("Selecting any ONE of above is mandetory..");

            Response.Redirect("AmdFilterResult.aspx");
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            Session["test"] = "GeForce GTX 1080";
            Response.Redirect("gnvidiaresult.aspx");
        }

        protected void gButton1_Click(object sender, EventArgs e)
        {
            Session["test"] = "GeForce GTX 1070";
            Response.Redirect("gnvidiaresult.aspx");
        }

        protected void gButton2_Click(object sender, EventArgs e)
        {
            Session["test"] = "GeForce GTX 1060";
            Response.Redirect("gnvidiaresult.aspx");
        }

        protected void gButton3_Click(object sender, EventArgs e)
        {
            Session["test"] = "GeForce GTX 1050 Ti";
            Response.Redirect("gnvidiaresult.aspx");
        }

        protected void gButton4_Click(object sender, EventArgs e)
        {

            Session["test"] = "GeForce GT 740";
            Response.Redirect("gnvidiaresult.aspx");
        }

        protected void gButton5_Click(object sender, EventArgs e)
        {
            Session["test"] = "GeForce GT 730-128 bits";
            Response.Redirect("gnvidiaresult.aspx");
        }

        protected void gButton6_Click(object sender, EventArgs e)
        {

            Session["test"] = "GeForce GT 720 - DDR3";
            Response.Redirect("gnvidiaresult.aspx");
        }

        protected void gButton7_Click(object sender, EventArgs e)
        {
            Session["test"] = "GeForce GT 610";
            Response.Redirect("gnvidiaresult.aspx");
        }

        protected void geforceseries_Click(object sender, EventArgs e)
        {
            Session["test"] = "GT ";
            Response.Redirect("gnvidiaresult.aspx");
        }

        protected void gtxseries_Click(object sender, EventArgs e)
        {
            Session["test"] = "GTX ";
            Response.Redirect("gnvidiaresult.aspx");
        }

       

        protected void RDS_Click(object sender, EventArgs e)
        {
            Session["test"] = "R9 ";
            Response.Redirect("gresult.aspx");
        }

        protected void gButton8_Click(object sender, EventArgs e)
        {
            Session["test"] = "R9 290X";
            Response.Redirect("gresult.aspx");
        }

        protected void r7series_Click(object sender, EventArgs e)
        {
            Session["test"] = "R7 ";
            Response.Redirect("gresult.aspx");
        }

        protected void gButton9_Click(object sender, EventArgs e)
        {
            Session["test"] = "R9 280X";
             Response.Redirect("gresult.aspx");
        }

        protected void gButton10_Click(object sender, EventArgs e)
        {
            Session["test"] = "R9 270X";
            Response.Redirect("gresult.aspx");
        }

        protected void gButton11_Click(object sender, EventArgs e)
        {
            Session["test"] = "R9 390X";
            Response.Redirect("gresult.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["test"] = "R7 265";
            Response.Redirect("gresult.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["test"] = "R7 260X";
            Response.Redirect("gresult.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session["test"] = "R7 250X";
             Response.Redirect("gresult.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session["test"] = "R7 370";
             Response.Redirect("gresult.aspx");
        }

       

       







    }
}