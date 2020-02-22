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
    public partial class corsair : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["speed1"] != null || Session["speed2"] != null || Session["size1"] != null || Session["size2"] != null || Session["size4"] != null || Session["size8"] != null || Session["size16"] != null || Session["size32"] != null || Session["size64"] != null || Session["size128"] != null)
                {
                    Session.Remove("size1");
                    Session.Remove("size2");
                    Session.Remove("size4");
                    Session.Remove("size8");
                    Session.Remove("size16");
                    Session.Remove("size32");
                    Session.Remove("size64");
                    Session.Remove("size128");
                    Session.Remove("speed1");
                    Session.Remove("speed2");
                }

            }
        }

       
        [WebMethod]
        public static string[] operation(string prefix)
        {

            List<string> processors = new List<string>();
            using (SqlConnection con = new SqlConnection())
            {


                con.ConnectionString = ConfigurationManager.ConnectionStrings["ramstring"].ConnectionString;
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "SELECT Model FROM [Every_Corsair] WHERE ([Model] LIKE '%' + @Model + '%')";
                    cmd.Parameters.AddWithValue("@Model", prefix);
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        while (sdr.Read())
                        {
                            processors.Add(string.Format("{0}", sdr["Model"]));
                        }
                    }
                    con.Close();
                }
            }
            return processors.ToArray();
        }

        protected void cbtn_Click(object sender, EventArgs e)
        {

            if (ctext.Text.StartsWith("A"))
                Response.Redirect("crslt.aspx");
            else
            Session["ctest"] = ctext.Text;
            Response.Redirect("cresult.aspx");
           



        }

        protected void dmseries_Click(object sender, EventArgs e)
        {
            Session["ctest"] = "Dominator";
             Response.Redirect("cresult.aspx");
        }

        protected void vgseries_Click(object sender, EventArgs e)
        {
            Session["ctest"] = "Vengeance";
            Response.Redirect("cresult.aspx");
        }

        protected void crseries_Click(object sender, EventArgs e)
        {
          
            Response.Redirect("crslt.aspx");
        }

        protected void rb1_Click(object sender, EventArgs e)
        {
           
             Session["ramdemo"]="CMK16GX4M4B3733C17";
            Response.Redirect("crsult.aspx");
        }

        protected void rb2_Click(object sender, EventArgs e)
        {

            Session["ramdemo"] = "CMK32GX4M4B3000C15";
            Response.Redirect("crsult.aspx");
        }

        protected void rb3_Click(object sender, EventArgs e)
        {
            Session["ramdemo"] = "CMK8GX4M2B4266C19";
            Response.Redirect("crsult.aspx");
        }

        protected void rb4_Click(object sender, EventArgs e)
        {

            Session["ramdemo"] = "CMK64GX4M4B3000C15";
            Response.Redirect("crsult.aspx");
        }

        protected void rb5_Click(object sender, EventArgs e)
        {

            Session["ramdemo"] = "CMD16GX3M4A3100C12";
            Response.Redirect("crsult.aspx");
        }

        protected void rb6_Click(object sender, EventArgs e)
        {
            Session["ramdemo"] = "CMD16GX4M4B3666C18";
            Response.Redirect("crsult.aspx");
        }

        protected void rb7_Click(object sender, EventArgs e)
        {
            Session["ramdemo"] = "CMD32GX4M4B3000C15";
            Response.Redirect("crsult.aspx");
        }

        protected void rb8_Click(object sender, EventArgs e)
        {
            Session["ramdemo"] = "CMD32GX4M4B3733C17";
            Response.Redirect("crsult.aspx");
        }

        protected void rb9_Click(object sender, EventArgs e)
        {
            Session["ramdemo"] = "CMD64GX3M8A2400C11";
            Response.Redirect("crsult.aspx");
        }

        protected void rb10_Click(object sender, EventArgs e)
        {

            Session["ramdemo"] = "CMD64GX3M8A2133C9";
            Response.Redirect("crsult.aspx");
        }

        protected void rb11_Click(object sender, EventArgs e)
        {
            Session["ramdemo"] = "CMD32GX3M4A2400C10";
            Response.Redirect("crsult.aspx");
        }

        protected void rb12_Click(object sender, EventArgs e)
        {
            Session["ramdemo"] = "CMD16GX3M4A1866C9";
            Response.Redirect("crsult.aspx");
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

        protected void Filter_Sub_Btn_Click(object sender, EventArgs e)
        {
            Session["speed1"] = TbS1.Value;

            Session["speed2"] = TbS2.Value;

            if (chkM1.Checked == true)
                Session["size1"] = Convert.ToInt32(chkM1.Text);
            if (chkM2.Checked == true)
                Session["size2"] = Convert.ToInt32(chkM2.Text);
            if (chkM3.Checked == true)
                Session["size4"] = Convert.ToInt32(chkM3.Text);
            if (chkM4.Checked == true)
                Session["size8"] = Convert.ToInt32(chkM4.Text);
            if (chkM5.Checked == true)
                Session["size16"] = Convert.ToInt32(chkM5.Text);
            if (chkM6.Checked == true)
                Session["size32"] = Convert.ToInt32(chkM6.Text);
            if (chkM7.Checked == true)
                Session["size64"] = Convert.ToInt32(chkM7.Text);
            if (chkM8.Checked == true)
                Session["size128"] = Convert.ToInt32(chkM8.Text);

            Response.Redirect("CorsairFilterResult.aspx");
        }


       
    }
}