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
    public partial class FilterResult : System.Web.UI.Page
    {
        string connsectionString = System.Configuration.ConfigurationSettings.AppSettings.Get("proccessorConn").ToString();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                FillDataList();
            }
        }

        private void FillDataList()
        {
            try
            {
                string subSeries = Session["SubSeries"] != null ? Convert.ToString(Session["SubSeries"]) : "";
                string arch = Session["Arch"] != null ? Convert.ToString(Session["Arch"]) : "";
                double baseC1 = Session["baseClo1"] != null ? Convert.ToDouble(Session["baseClo1"]) : 0.0;
                double baseC2 = Session["baseClo2"] != null ? Convert.ToDouble(Session["baseClo2"]) : 4.5;
                string series = Session["series"] != null ? Convert.ToString(Session["series"]) : "";
                int core = Session["Core"] != null ? Convert.ToInt32(Session["Core"]) : 0;


                SqlConnection conPI = new SqlConnection(connsectionString);
                SqlCommand cmd = new SqlCommand();
                conPI.Open();
                cmd.CommandText = "SELECT * FROM [Every] WHERE ([Base_Clock]<=@baseClo2 AND [Base_Clock]>=@baseClo1 AND ([Intels_id] LIKE '%' + @Intels_id + '%') AND ([Detailed_type_id] LIKE '%' + @Detailed_type_id + '%') AND ([Architecture] LIKE '%' + @Architecture + '%') AND ([Core] >= @Core))";
                cmd.Parameters.AddWithValue("baseClo1", baseC1);
                cmd.Parameters.AddWithValue("baseClo2", baseC2);
                cmd.Parameters.AddWithValue("Intels_id", series);
                cmd.Parameters.AddWithValue("Detailed_type_id", subSeries);
                cmd.Parameters.AddWithValue("Architecture", arch);
                cmd.Parameters.AddWithValue("Core", core);
                cmd.Connection = conPI;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);

                DataList1.DataSource = ds;
                DataList1.DataKeyField = "Every_id";
                DataList1.DataBind();
                conPI.Close();
            }
            catch (Exception ex)
            {

            }

        }

        protected void probutton_Click(object sender, EventArgs e)
        {
            Session["data"] = protext.Text;
            Response.Redirect("intelsearch.aspx");
        }
    }

};