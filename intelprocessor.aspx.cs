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
    public partial class intelprocessor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Core"] != null || Session["Arch"] != null || Session["SubSeries"] != null || Session["series"] != null || Session["baseClo1"] != null || Session["baseClo2"] != null)
                {
                    Session.Remove("baseClo1");
                    Session.Remove("baseClo2");
                    Session.Remove("Core");
                    Session.Remove("Arch");
                    Session.Remove("SubSeries");
                    Session.Remove("series");
                }

            }
        }

      
        protected void probutton_Click(object sender, EventArgs e)
        {

            Session["data"] = protext.Text;
            Response.Redirect("intelsearch.aspx");
        }

        protected void pb1_Click(object sender, EventArgs e)
        {
            Session["data"] = "Intel Core i7 6950X Processor Extreme Edition";
            Response.Redirect("intelsearch.aspx");
        }

        protected void pb4_Click(object sender, EventArgs e)
        {
            Session["data"] = "Intel Core i7 6900K Unlocked  ";
            Response.Redirect("intelsearch.aspx");
        }

        protected void pb5_Click(object sender, EventArgs e)
        {
            Session["data"] = "Intel Core i5 6400T ";
            Response.Redirect("intelsearch.aspx");
        }

        protected void pb10_Click(object sender, EventArgs e)
        {
            Session["data"] = "Intel  Core  i3 6100T ";
            Response.Redirect("intelsearch.aspx");
        }
        [WebMethod]
        public static string[] operation(string prefix)
        {

            List<string> processors = new List<string>();
            using (SqlConnection con = new SqlConnection())
            {
                
         
                con.ConnectionString = ConfigurationManager.ConnectionStrings["processorstring"].ConnectionString;
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "SELECT Model , Cache FROM [Every] WHERE ([Model] LIKE '%' + @Model + '%')";
                    cmd.Parameters.AddWithValue("@Model", prefix);
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        while (sdr.Read())
                        {
                            processors.Add(string.Format("{0}-{1}", sdr["Model"], sdr["Cache"]));
                        }
                    }
                    con.Close();
                }
            }
            return processors.ToArray();
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Filter_Sub_Btn_Click(object sender, EventArgs e)
        {
            
            
            if (S_Cb1.Checked == true)
            {
                Session["series"] = "111";
                Session["SubSeries"] = "221";
            }
            else if (S_Cb2.Checked == true)
            {
                Session["series"] = "112";
                Session["SubSeries"] = "222";
            }
            else if (S_Cb3.Checked == true)
                Session["series"] = "113";

            else if (S_Cb4.Checked == true)
                Session["series"] = "114";

            else
                Response.Write("Selecting any ONE of above is manatory..");


            if (SubS_Cb1.Checked == true)
                Session["SubSeries"] = "223";

            else if (SubS_Cb2.Checked == true)
                Session["SubSeries"] = "224";

            else if (SubS_Cb3.Checked == true)
                Session["SubSeries"] = "225";

            else if (SubS_Cb4.Checked == true)
                Session["SubSeries"] = "226";

            else if (SubS_Cb5.Checked == true)
                Session["SubSeries"] = "227";
     
            else if (SubS_Cb6.Checked == true)
                Session["SubSeries"] = "228";
            else
                Response.Write("Selecting any ONE of above is mandetory..");


            if (Arch_Cb1.Checked == true)
                Session["Arch"] = Arch_Cb1.Text;
            
            else if (Arch_Cb2.Checked == true)
                Session["Arch"] = Arch_Cb2.Text;
            
            else
                Response.Write("Selecting any ONE of above is mandetory..");


            if (Core_Cb1.Checked == true)
                Session["Core"] = "2";

            else if (Core_Cb2.Checked == true)
                Session["Core"] = "4";

            else if (Core_Cb3.Checked == true)
                Session["Core"] = "6";

            else if (Core_Cb4.Checked == true)
                Session["Core"] = "8";

            else if (Core_Cb5.Checked == true)
                Session["Core"] = "10";

            else if (Core_Cb6.Checked == true)
                Session["Core"] = "12";

            else if (Core_Cb7.Checked == true)
                Session["Core"] = "14";

            else if (Core_Cb8.Checked == true)
                Session["Core"] = "16";

            else if (Core_Cb9.Checked == true)
                Session["Core"] = "18";

            else if (Core_Cb10.Checked == true)
                Session["Core"] = "20";

            else if (Core_Cb11.Checked == true)
                Session["Core"] = "22";
           
            else
                Response.Write("Selecting any ONE of above is mandetory..");

            Session["baseClo1"] = TbS1.Value;

            Session["baseClo2"] = TbS2.Value;


            Response.Redirect("FilterResult.aspx");  
        }

        protected void pb2_Click(object sender, EventArgs e)
        {
            Session["data"] = "Intel Core i7 6850K Unlocked";
            Response.Redirect("intelsearch.aspx");
        }

        protected void pb3_Click(object sender, EventArgs e)
        {
            Session["data"] = "Intel Core i7 6800K Unlocked";
            Response.Redirect("intelsearch.aspx");
        }

        protected void pb6_Click(object sender, EventArgs e)
        {
            Session["data"] = "Intel Core i5 6685R ";
            Response.Redirect("intelsearch.aspx");
        }

        protected void pb7_Click(object sender, EventArgs e)
        {
            Session["data"] = "Intel Core i5 6585R ";
            Response.Redirect("intelsearch.aspx");
        }

        protected void pb8_Click(object sender, EventArgs e)
        {
            Session["data"] = "Intel Core i5 6600T ";
            Response.Redirect("intelsearch.aspx");
        }

        protected void pb9_Click(object sender, EventArgs e)
        {
            Session["data"] = "Intel Core i3 6098P ";
            Response.Redirect("intelsearch.aspx");
        }

        protected void pb11_Click(object sender, EventArgs e)
        {
            Session["data"] = "Intel Core i3 6100";
            Response.Redirect("intelsearch.aspx");
        }

        protected void pb12_Click(object sender, EventArgs e)
        {
            Session["data"] = "Intel Core i3 6320";
            Response.Redirect("intelsearch.aspx");
        }

        protected void corei7_Click(object sender, EventArgs e)
        {
            Session["data"] = "i7";
            Response.Redirect("intelsearch.aspx");
        }

        protected void corei3_Click(object sender, EventArgs e)
        {
            Session["data"] = "i3";
            Response.Redirect("intelsearch.aspx");
        }

        protected void corei5_Click(object sender, EventArgs e)
        {
            Session["data"] = "i5";
            Response.Redirect("intelsearch.aspx");
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

        protected void penpro_Click(object sender, EventArgs e)
        {
            Session["data"] = "pentium";
            Response.Redirect("intelsearch.aspx");
        }

        protected void celpro_Click(object sender, EventArgs e)
        {
            Session["data"] = "celeron";
            Response.Redirect("intelsearch.aspx");
        }

        protected void xeonpro_Click(object sender, EventArgs e)
        {
            Session["data"] = "xeon";
            Response.Redirect("intelsearch.aspx");
        }

        
    }
}