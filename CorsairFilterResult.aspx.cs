using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace FinalProject
{
    public partial class CorsairFilterResult : System.Web.UI.Page
    {
        string connsectionString = System.Configuration.ConfigurationSettings.AppSettings.Get("ramConn").ToString();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                FillDataList();
            }
        }

        private void FillDataList()
        {
            int sped1 = Session["speed1"] != null ? Convert.ToInt32(Session["speed1"]) : 0;
            int sped2 = Session["speed2"] != null ? Convert.ToInt32(Session["speed2"]) : 4333;
            int size1 = Session["size1"] != null ? Convert.ToInt32(Session["size1"]) : 0;
            int size2 = Session["size2"] != null ? Convert.ToInt32(Session["size2"]) : 0;
            int size4 = Session["size4"] != null ? Convert.ToInt32(Session["size4"]) : 0;
            int size8 = Session["size8"] != null ? Convert.ToInt32(Session["size8"]) : 0;
            int size16 = Session["size16"] != null ? Convert.ToInt32(Session["size16"]) : 0;
            int size32 = Session["size32"] != null ? Convert.ToInt32(Session["size32"]) : 0;
            int size64 = Session["size64"] != null ? Convert.ToInt32(Session["size64"]) : 0;
            int size128 = Session["size128"] != null ? Convert.ToInt32(Session["size128"]) : 0;


            SqlConnection con = new SqlConnection(connsectionString);
            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd.CommandText = "SELECT * FROM [Every_Corsair] WHERE (([Speed]<=@spd2 AND [Speed]>=@spd1) OR ([Memory]=@sz1 OR [Memory]=@sz2 OR [Memory]=@sz4 OR [Memory]=@sz8 OR [Memory]=@sz16 OR [Memory]=@sz32 OR [Memory]=@sz64 OR [Memory]=@sz128))";
            cmd.Parameters.AddWithValue("spd1", sped1);
            cmd.Parameters.AddWithValue("spd2", sped2);
            cmd.Parameters.AddWithValue("sz1", size1);
            cmd.Parameters.AddWithValue("sz2", size2);
            cmd.Parameters.AddWithValue("sz4", size4);
            cmd.Parameters.AddWithValue("sz8", size8);
            cmd.Parameters.AddWithValue("sz16", size16);
            cmd.Parameters.AddWithValue("sz32", size32);
            cmd.Parameters.AddWithValue("sz64", size64);
            cmd.Parameters.AddWithValue("sz128", size128);
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            DataList1.DataSource = ds;
            DataList1.DataKeyField = "EveryCorsair_Id";
            DataList1.DataBind();
            con.Close();
        }

        protected void cbtn_Click(object sender, EventArgs e)
        {

            if (ctext.Text.StartsWith("A"))
                Response.Redirect("crslt.aspx");
            else
                Session["ctest"] = ctext.Text;
            Response.Redirect("cresult.aspx");




        }
    }
}