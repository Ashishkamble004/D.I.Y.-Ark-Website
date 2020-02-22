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
    public partial class compare : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Processor.mdf;Integrated Security=True;User Instance=True; MultipleActiveResultSets=True;");

        SqlDataReader dr,dr1;
        SqlCommand cmd,cmd1;
        SqlDataAdapter da,da1;
       
        DataTable dt = new DataTable();
        DataTable dt1 = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            
           
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
                    cmd.CommandText = "SELECT Model FROM [Every] WHERE ([Model] LIKE '%' + @Model + '%')";
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

        protected void cp_Click(object sender, EventArgs e)
        {
            string abc = pt1.Text;
            string def = pt2.Text;

            //string m, c, b, bo, ca, tdp, so, og, ar,h = "";
            //string m1, c1, b1, bo1, ca1, tdp1, so1, og1, ar1,h1 = "";

            con.Open();
            cmd = new SqlCommand("SELECT [Model], [Core], [HT], [Base_Clock], [Boost], [Cache], [TDP], [Socket], [Onboard_Graphics], [Architecture] FROM [Every] WHERE ([Model] LIKE '%' + @Model + '%')", con);
            cmd.Parameters.AddWithValue("@Model", abc);

            cmd1= new SqlCommand("SELECT [Model], [Core], [HT], [Base_Clock], [Boost], [Cache], [TDP], [Socket], [Onboard_Graphics], [Architecture] FROM [Every] WHERE ([Model] LIKE '%' + @Model + '%')", con);
            cmd1.Parameters.AddWithValue("@Model",def);

            //dr = cmd.ExecuteReader();
            //m = dr["[Model]"].ToString();
            //c = dr["[Core]"].ToString();
            //b = dr["[Base_Clock]"].ToString();
            //bo = dr["[Boost]"].ToString();
            //ca = dr["[Cache]"].ToString();
            //tdp = dr["[TDP]"].ToString();
            //so = dr["[Socket]"].ToString();
            //og = dr["[Onboard_Graphics]"].ToString();
            //h = dr["[HT]"].ToString();
            //ar = dr["[Architecture]"].ToString();
            //Response.Write(m + c + b + bo + ca + tdp + so + og + h + ar);
            //ml.Text = m;
            //cl.Text = c;
            //bl.Text = b;
            //bol.Text = bo;
            //cal.Text = ca;
            //tdpl.Text = tdp;
            //sol.Text = so;
            //ogl.Text = og;
            //hl.Text = h;
            //arl.Text = ar;




            //dr1 = cmd1.ExecuteReader();
            //m1 = dr1["[Model]"].ToString();
            //c1 = dr1["[Core]"].ToString();
            //b1 = dr1["[Base_Clock]"].ToString();
            //bo1 = dr1["[Boost]"].ToString();
            //ca1 = dr1["[Cache]"].ToString();
            //tdp1 = dr1["[TDP]"].ToString();
            //so1 = dr1["[Socket]"].ToString();
            //og1 = dr1["[Onboard_Graphics]"].ToString();
            //ar1 = dr1["[Architecture]"].ToString();
            //h1 = dr["[HT]"].ToString();


            //m1l.Text = m1;
            //c1l.Text = c1;
            //b1l.Text = b1;
           
            //bo1l.Text = bo1;
            //ca1l.Text = ca1;
            //tdp1l.Text = tdp1;
            //so1l.Text = so1;
            //og1l.Text = og1;
            //h1l.Text = h1;
            //ar1l.Text = ar1;


            da = new SqlDataAdapter(cmd);


            da.Fill(dt);

            dl1.DataBind();


            da1 = new SqlDataAdapter(cmd);
            da1.Fill(dt1);

            dl2.DataBind();

            
           


            con.Close();






            Table1.Visible = true;
            Table2.Visible = true;
        }
    }
}