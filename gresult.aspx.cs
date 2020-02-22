using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web.Services;
using System.Configuration;

namespace FinalProject
{
    public partial class gresult : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\graphicCards.mdf;Integrated Security=True;User Instance=True");

        SqlDataAdapter da;
        SqlCommand cmd;
        DataTable dt = new DataTable();
        DataTable dt1 = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            string abc = "";

            if (Session["test"] != null)
            {
                abc = Convert.ToString(Session["test"]);
               
            }


          
           
          
            
               
                con.Open();
                cmd = new SqlCommand("SELECT * FROM [EveryGA] WHERE ([Model] LIKE '%' + @Model + '%')", con);
                cmd.Parameters.AddWithValue("@Model", abc);



                da = new SqlDataAdapter(cmd);


                da.Fill(dt);

                dl1.DataBind();
                

                con.Close();
            }
          

        }

      
    }
