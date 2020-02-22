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
    public partial class crslt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\RAM.mdf;Integrated Security=True;User Instance=True; MultipleActiveResultSets=True;");

            SqlDataAdapter da;
            SqlCommand cmd;
            DataTable dt = new DataTable();
            DataTable dt1 = new DataTable();

            string demo = "";
            if (Session["ramdemo"] != null)
            {
                demo = Convert.ToString(Session["ramdemo"]);
                con.Open();
                cmd = new SqlCommand("SELECT * FROM [Every_Corsair] WHERE ([Model] LIKE '%' + @Model + '%')", con);
                cmd.Parameters.AddWithValue("@Model", demo);



                da = new SqlDataAdapter(cmd);


                da.Fill(dt);

                dl1.DataBind();


                con.Close();

            }
        }

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Write("corsair.aspx");
        }
    }
}