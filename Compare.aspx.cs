using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Configuration;
using System.Data.SqlClient;

namespace admission
{
    public partial class SpecificationPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"
        Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MyDatabase.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ComBtn4_Click(object sender, EventArgs e)
        {
            if (ComDDL1.SelectedIndex == 0)
            {
                td1.Controls.Clear();
            }
            else
            {
                string mName, brand, netTech, lAnn, lSt, Bdim, bwei, bSim, dType, dSize, dRes, dPgls, POS, PCPU, CS, iMem, cPri, cSec, vid, feature, atype, speaker, wlan, bt, gps, nfc, radio, usb, sense, bws, java, sby, mPlay, color, TTime;
                cmd = new SqlCommand("select * from Mobile_info", con);
                con.Open();
                dr = cmd.ExecuteReader();
                StringBuilder html = new StringBuilder();
                html.Append("<table border=1 style=width: 100% ; height:100% ; table-layout: fixed>");
                while (dr.Read())
                {
                    mName = ComDDL1.SelectedItem.Text;

                    if (mName == dr["Mob_name"].ToString())
                    {
                        mName = dr["Mob_name"].ToString();
                        brand = dr["brand"].ToString();
                        netTech = dr["net_technology"].ToString();
                        lAnn = dr["launch_ann"].ToString();
                        lSt = dr["launch_status"].ToString();
                        Bdim = dr["b_dimension"].ToString();
                        bwei = dr["b_weight"].ToString();
                        bSim = dr["b_sim"].ToString();
                        dType = dr["dis_type"].ToString();
                        dSize = dr["dis_size"].ToString();
                        dRes = dr["dis_resolution"].ToString();
                        dPgls = dr["dis_pglass"].ToString();
                        POS = dr["platform_os"].ToString();
                        PCPU = dr["platform_cpu"].ToString();
                        CS = dr["card_slot"].ToString();
                        iMem = dr["internal_memory"].ToString();
                        cPri = dr["c_primary"].ToString();
                        cSec = dr["c_secondory"].ToString();
                        vid = dr["video"].ToString();
                        feature = dr["features"].ToString();
                        atype = dr["alert_type"].ToString();
                        speaker = dr["speaker"].ToString();
                        wlan = dr["wlan"].ToString();
                        bt = dr["bluetooth"].ToString();
                        gps = dr["gps"].ToString();
                        nfc = dr["nfc"].ToString();
                        radio = dr["radio"].ToString();
                        usb = dr["usb"].ToString();
                        sense = dr["sensors"].ToString();
                        bws = dr["browser"].ToString();
                        java = dr["java"].ToString();
                        sby = dr["standby"].ToString();
                        mPlay = dr["music_play"].ToString();
                        color = dr["color"].ToString();
                        TTime = dr["talk_time"].ToString();

                        //Displaying the data
                        html.Append("<tr>" + "<td>" + netTech + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + lAnn + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + lSt + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + Bdim + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + bwei + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + bSim + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + dType + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + dSize + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + dRes + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + dPgls + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + POS + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + PCPU + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + CS + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + iMem + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + cPri + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + cSec + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + vid + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + feature + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + atype + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + speaker + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + wlan + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + bt + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + gps + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + nfc + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + radio + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + usb + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + sense + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + bws + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + java + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + sby + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + mPlay + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + TTime + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + color + " " + "</td>" + "</tr>");
                        html.Append("<br>");
                    }

                }
                html.Append("</td>");
                html.Append("</tr>");
                html.Append("</table>");
                td1.Controls.Add(new Literal { Text = html.ToString() });
                con.Close();

            }
            if (ComDDL2.SelectedIndex == 0)
            {
                td2.Controls.Clear();
            }
            else
            {
                string mName, brand, netTech, lAnn, lSt, Bdim, bwei, bSim, dType, dSize, dRes, dPgls, POS, PCPU, CS, iMem, cPri, cSec, vid, feature, atype, speaker, wlan, bt, gps, nfc, radio, usb, sense, bws, java, sby, mPlay, color, TTime;
                cmd = new SqlCommand("select * from Mobile_info", con);
                con.Open();
                dr = cmd.ExecuteReader();
                StringBuilder html = new StringBuilder();
                html.Append("<table border=1 style=width: 100% ; height:100%  table-layout: fixed>");
                while (dr.Read())
                {
                    mName = ComDDL2.SelectedItem.Text;

                    if (mName == dr["Mob_name"].ToString())
                    {
                        mName = dr["Mob_name"].ToString();
                        brand = dr["brand"].ToString();
                        netTech = dr["net_technology"].ToString();
                        lAnn = dr["launch_ann"].ToString();
                        lSt = dr["launch_status"].ToString();
                        Bdim = dr["b_dimension"].ToString();
                        bwei = dr["b_weight"].ToString();
                        bSim = dr["b_sim"].ToString();
                        dType = dr["dis_type"].ToString();
                        dSize = dr["dis_size"].ToString();
                        dRes = dr["dis_resolution"].ToString();
                        dPgls = dr["dis_pglass"].ToString();
                        POS = dr["platform_os"].ToString();
                        PCPU = dr["platform_cpu"].ToString();
                        CS = dr["card_slot"].ToString();
                        iMem = dr["internal_memory"].ToString();
                        cPri = dr["c_primary"].ToString();
                        cSec = dr["c_secondory"].ToString();
                        vid = dr["video"].ToString();
                        feature = dr["features"].ToString();
                        atype = dr["alert_type"].ToString();
                        speaker = dr["speaker"].ToString();
                        wlan = dr["wlan"].ToString();
                        bt = dr["bluetooth"].ToString();
                        gps = dr["gps"].ToString();
                        nfc = dr["nfc"].ToString();
                        radio = dr["radio"].ToString();
                        usb = dr["usb"].ToString();
                        sense = dr["sensors"].ToString();
                        bws = dr["browser"].ToString();
                        java = dr["java"].ToString();
                        sby = dr["standby"].ToString();
                        mPlay = dr["music_play"].ToString();
                        color = dr["color"].ToString();
                        TTime = dr["talk_time"].ToString();

                        //Displaying the data
                        html.Append("<tr>" + "<td>" + netTech + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + lAnn + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + lSt + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + Bdim + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + bwei + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + bSim + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + dType + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + dSize + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + dRes + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + dPgls + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + POS + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + PCPU + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + CS + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + iMem + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + cPri + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + cSec + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + vid + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + feature + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + atype + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + speaker + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + wlan + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + bt + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + gps + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + nfc + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + radio + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + usb + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + sense + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + bws + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + java + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + sby + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + mPlay + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + TTime + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + color + " " + "</td>" + "</tr>");
                        html.Append("<br>");
                    }

                }
                html.Append("</td>");
                html.Append("</tr>");
                html.Append("</table>");
                td2.Controls.Add(new Literal { Text = html.ToString() });
                con.Close();

            }
            if (ComDDL3.SelectedIndex == 0)
            {
                td3.Controls.Clear();
            }
            else
            {
                string mName, brand, netTech, lAnn, lSt, Bdim, bwei, bSim, dType, dSize, dRes, dPgls, POS, PCPU, CS, iMem, cPri, cSec, vid, feature, atype, speaker, wlan, bt, gps, nfc, radio, usb, sense, bws, java, sby, mPlay, color, TTime;
                cmd = new SqlCommand("select * from Mobile_info", con);
                con.Open();
                dr = cmd.ExecuteReader();
                StringBuilder html = new StringBuilder();
                html.Append("<table border=1 style=width: 100% ; height:100%  table-layout: fixed>");
                while (dr.Read())
                {
                    mName = ComDDL3.SelectedItem.Text;

                    if (mName == dr["Mob_name"].ToString())
                    {
                        mName = dr["Mob_name"].ToString();
                        brand = dr["brand"].ToString();
                        netTech = dr["net_technology"].ToString();
                        lAnn = dr["launch_ann"].ToString();
                        lSt = dr["launch_status"].ToString();
                        Bdim = dr["b_dimension"].ToString();
                        bwei = dr["b_weight"].ToString();
                        bSim = dr["b_sim"].ToString();
                        dType = dr["dis_type"].ToString();
                        dSize = dr["dis_size"].ToString();
                        dRes = dr["dis_resolution"].ToString();
                        dPgls = dr["dis_pglass"].ToString();
                        POS = dr["platform_os"].ToString();
                        PCPU = dr["platform_cpu"].ToString();
                        CS = dr["card_slot"].ToString();
                        iMem = dr["internal_memory"].ToString();
                        cPri = dr["c_primary"].ToString();
                        cSec = dr["c_secondory"].ToString();
                        vid = dr["video"].ToString();
                        feature = dr["features"].ToString();
                        atype = dr["alert_type"].ToString();
                        speaker = dr["speaker"].ToString();
                        wlan = dr["wlan"].ToString();
                        bt = dr["bluetooth"].ToString();
                        gps = dr["gps"].ToString();
                        nfc = dr["nfc"].ToString();
                        radio = dr["radio"].ToString();
                        usb = dr["usb"].ToString();
                        sense = dr["sensors"].ToString();
                        bws = dr["browser"].ToString();
                        java = dr["java"].ToString();
                        sby = dr["standby"].ToString();
                        mPlay = dr["music_play"].ToString();
                        color = dr["color"].ToString();
                        TTime = dr["talk_time"].ToString();

                        //Displaying the data
                        html.Append("<tr>" + "<td>" + netTech + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + lAnn + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + lSt + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + Bdim + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + bwei + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + bSim + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + dType + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + dSize + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + dRes + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + dPgls + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + POS + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + PCPU + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + CS + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + iMem + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + cPri + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + cSec + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + vid + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + feature + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + atype + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + speaker + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + wlan + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + bt + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + gps + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + nfc + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + radio + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + usb + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + sense + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + bws + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + java + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + sby + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + mPlay + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + TTime + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + color + " " + "</td>" + "</tr>");
                        html.Append("<br>");
                    }

                }
                html.Append("</td>");
                html.Append("</tr>");
                html.Append("</table>");
                td3.Controls.Add(new Literal { Text = html.ToString() });
                con.Close();

            }
            if (ComDDL4.SelectedIndex == 0)
            {
                td4.Controls.Clear();
            }
            else
            {
                string mName, brand, netTech, lAnn, lSt, Bdim, bwei, bSim, dType, dSize, dRes, dPgls, POS, PCPU, CS, iMem, cPri, cSec, vid, feature, atype, speaker, wlan, bt, gps, nfc, radio, usb, sense, bws, java, sby, mPlay, color, TTime;
                cmd = new SqlCommand("select * from Mobile_info", con);
                con.Open();
                dr = cmd.ExecuteReader();
                StringBuilder html = new StringBuilder();
                html.Append("<table border=1 style=width: 100% ; height:100%  table-layout: fixed>");
                while (dr.Read())
                {
                    mName = ComDDL4.SelectedItem.Text;

                    if (mName == dr["Mob_name"].ToString())
                    {
                        mName = dr["Mob_name"].ToString();
                        brand = dr["brand"].ToString();
                        netTech = dr["net_technology"].ToString();
                        lAnn = dr["launch_ann"].ToString();
                        lSt = dr["launch_status"].ToString();
                        Bdim = dr["b_dimension"].ToString();
                        bwei = dr["b_weight"].ToString();
                        bSim = dr["b_sim"].ToString();
                        dType = dr["dis_type"].ToString();
                        dSize = dr["dis_size"].ToString();
                        dRes = dr["dis_resolution"].ToString();
                        dPgls = dr["dis_pglass"].ToString();
                        POS = dr["platform_os"].ToString();
                        PCPU = dr["platform_cpu"].ToString();
                        CS = dr["card_slot"].ToString();
                        iMem = dr["internal_memory"].ToString();
                        cPri = dr["c_primary"].ToString();
                        cSec = dr["c_secondory"].ToString();
                        vid = dr["video"].ToString();
                        feature = dr["features"].ToString();
                        atype = dr["alert_type"].ToString();
                        speaker = dr["speaker"].ToString();
                        wlan = dr["wlan"].ToString();
                        bt = dr["bluetooth"].ToString();
                        gps = dr["gps"].ToString();
                        nfc = dr["nfc"].ToString();
                        radio = dr["radio"].ToString();
                        usb = dr["usb"].ToString();
                        sense = dr["sensors"].ToString();
                        bws = dr["browser"].ToString();
                        java = dr["java"].ToString();
                        sby = dr["standby"].ToString();
                        mPlay = dr["music_play"].ToString();
                        color = dr["color"].ToString();
                        TTime = dr["talk_time"].ToString();

                        //Displaying the data
                        html.Append("<tr>" + "<td>" + netTech + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + lAnn + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + lSt + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + Bdim + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + bwei + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + bSim + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + dType + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + dSize + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + dRes + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + dPgls + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + POS + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + PCPU + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + CS + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + iMem + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + cPri + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + cSec + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + vid + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + feature + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + atype + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + speaker + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + wlan + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + bt + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + gps + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + nfc + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + radio + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + usb + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + sense + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + bws + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + java + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + sby + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + mPlay + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + TTime + " " + "</td>" + "</tr>");
                        html.Append("<tr>" + "<td>" + color + " " + "</td>" + "</tr>");
                        html.Append("<br>");
                    }

                }
                html.Append("</td>");
                html.Append("</tr>");
                html.Append("</table>");
                td4.Controls.Add(new Literal { Text = html.ToString() });
                con.Close();

            }

        }

    }
}

