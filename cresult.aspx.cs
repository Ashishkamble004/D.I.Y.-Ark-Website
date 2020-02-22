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
    public partial class cresult : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\RAM.mdf;Integrated Security=True;User Instance=True; MultipleActiveResultSets=True;");

        SqlDataAdapter da;
        SqlCommand cmd;
        DataTable dt = new DataTable();
        DataTable dt1 = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

           
            string demo = "";
            if (Session["ctest"] != null)
            {
                demo = Convert.ToString(Session["ctest"]);
                con.Open();
                cmd = new SqlCommand("SELECT * FROM [Every_Corsair] WHERE ([Package_contents] LIKE '%' + @Package_contents + '%')", con);
                cmd.Parameters.AddWithValue("@Package_contents", demo);



                da = new SqlDataAdapter(cmd);


                da.Fill(dt);

                dl1.DataBind();


                con.Close();

            }
           
         

        }
            
        

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("corsair.aspx");
        }
    }
}