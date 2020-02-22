using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class demo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ytss = Convert.ToString(Session["SubSeries"]);
            string ytsqq = Convert.ToString(Session["Arch"]);
            string ytsww = Convert.ToString(Session["series"]);
            string ytsee = Convert.ToString(Session["Core"]);
            string ytseeq = Convert.ToString(Session["baseClo1"]);
            string ytseew = Convert.ToString(Session["baseClo2"]);
            Response.Write(ytss + " " + ytsqq + " " + ytsww + " " + ytsee + " " + ytseeq + " " + ytseew);
        }
    }
}