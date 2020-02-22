using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.IO;

namespace FinalProject
{
    public partial class admin : System.Web.UI.Page
    {
        SqlConnection conPI = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Processor.mdf;Integrated Security=True;User Instance=True");
        SqlConnection conG = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\graphicCards.mdf;Integrated Security=True;User Instance=True");
        SqlConnection conR = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\RAM.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmdP, cmdAG, cmdNG, cmdR;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void InsertBP_Click(object sender, EventArgs e)
        {
            cmdP = new SqlCommand("insert into Every values(@proid,@intid,@detid,@model,@core,@ht,@baseclock,@boost,@cache,@tdp,@socket,@ongrap,@motherprice,@arch,@img)",conPI);
            cmdP.Parameters.Add("@proid", SqlDbType.Int);
            cmdP.Parameters["@proid"].Value = Convert.ToInt32(Proc_id1.Text);
            cmdP.Parameters.Add("@intid", SqlDbType.VarChar);
            cmdP.Parameters["@intid"].Value = Intel_id1.Text;
            cmdP.Parameters.AddWithValue("@detid", Det_tp_id1.Text);
            cmdP.Parameters.AddWithValue("@model", Model1.Text);
            cmdP.Parameters.AddWithValue("@core", Core1.Text);
            cmdP.Parameters.Add("@ht", SqlDbType.Int);
            cmdP.Parameters["@ht"].Value = Convert.ToInt32(HT1.Text);
            cmdP.Parameters.Add("@baseclock", SqlDbType.Int);
            cmdP.Parameters["@baseclock"].Value = Convert.ToDecimal(Base_Clock1.Text);
            cmdP.Parameters.AddWithValue("@boost", Boost1.Text);
            cmdP.Parameters.AddWithValue("@cache", Cache1.Text);
            cmdP.Parameters.AddWithValue("@tdp", TDP1.Text);
            cmdP.Parameters.AddWithValue("@socket", Socket1.Text);
            cmdP.Parameters.AddWithValue("@ongrap", On_Brd_Graphic1.Text);
            cmdP.Parameters.AddWithValue("@motherprice", MoBrd_Price_Fact_1.Text);
            cmdP.Parameters.AddWithValue("@arch", Arch1.Text);
            cmdP.Parameters.AddWithValue("@img", Path_IMG1.Text);
            conPI.Open();
            if (cmdP.ExecuteNonQuery() > 0)
            {
                Response.Write("Record inserted");
            }
            else
            {
                Response.Write("record not inserted");
            }
            conPI.Close();
            Response.Redirect("admin.aspx");
        }

        protected void UpdateBP_Click(object sender, EventArgs e)
        {
            cmdP = new SqlCommand("update Every set Processor_id=@proid,Intels_id=@intid,Detailed_type_id=@detid,Model=@model,Core=@core,HT=@ht,Base_Clock=@baseclock,Boost=@boost,Cache=@cache,TDP=@tdp,Socket=@socket,Onboard_Graphics=@ongrap,Motherboard_price_factor=@motherprice,Architecture=@arch,image1=@img where Every_id=@everyid  ", conPI);
            cmdP.Parameters.Add("@proid", SqlDbType.Int);
            cmdP.Parameters["@proid"].Value = Convert.ToInt32(Proc_id1.Text);
            cmdP.Parameters.Add("@intid", SqlDbType.VarChar);
            cmdP.Parameters["@intid"].Value = Intel_id1.Text;
            cmdP.Parameters.AddWithValue("@detid", Det_tp_id1.Text);
            cmdP.Parameters.AddWithValue("@model", Model1.Text);
            cmdP.Parameters.AddWithValue("@core", Core1.Text);
            cmdP.Parameters.Add("@ht", SqlDbType.Int);
            cmdP.Parameters["@ht"].Value = Convert.ToInt32(HT1.Text);
            cmdP.Parameters.Add("@baseclock", SqlDbType.Int);
            cmdP.Parameters["@baseclock"].Value = Convert.ToDecimal(Base_Clock1.Text);
            cmdP.Parameters.AddWithValue("@boost", Boost1.Text);
            cmdP.Parameters.AddWithValue("@cache", Cache1.Text);
            cmdP.Parameters.AddWithValue("@tdp", TDP1.Text);
            cmdP.Parameters.AddWithValue("@socket", Socket1.Text);
            cmdP.Parameters.AddWithValue("@ongrap", On_Brd_Graphic1.Text);
            cmdP.Parameters.AddWithValue("@motherprice", MoBrd_Price_Fact_1.Text);
            cmdP.Parameters.AddWithValue("@arch", Arch1.Text);
            cmdP.Parameters.AddWithValue("@img", Path_IMG1.Text);
            cmdP.Parameters.Add("@everyid", SqlDbType.Int);
            cmdP.Parameters["@everyid"].Value = Convert.ToInt32(Every_id1.Text);
            conPI.Open();
            if ( cmdP.ExecuteNonQuery() > 0)

                Response.Redirect("intelprocessor.aspx");

            else

                Response.Write("record not updated");
            
            conPI.Close();
            Response.Redirect("admin.aspx");
        }

        protected void DeleteBP_Click(object sender, EventArgs e)
        {
            cmdP=new SqlCommand("delete from Every where Every_id=@everyid",conPI);
            cmdP.Parameters.Add("@everyid", SqlDbType.Int);
            cmdP.Parameters["@everyid"].Value = Convert.ToInt32(Every_id1.Text);
            conPI.Open();
            if (cmdP.ExecuteNonQuery() > 0)
            {
                Response.Write("record deleted");
            }
            else
            {
                Response.Write("record not deleted");
            }
            conPI.Close();
            Response.Redirect("admin.aspx");
        }

        protected void AInsertBG_Click(object sender, EventArgs e)
        {
            cmdAG = new SqlCommand("insert into EveryGA values(@graphicsId,@amdId,@detailedId,@model,@gpu,@directX,@mantleApi,@vulkanApi,@openGl,@openCl,@pciExp,@amdPow,@fourKRes,@ddmaAudio,@hdmi,@trueAudio,@amdEye,@videoCodec,@gpuClock,@memoBand,@memoAmt,@streamProc,@reqPow,@amdCross,@formFacror,@highBand,@vsr,@amdFree,@amdLiquid,@frameRate,@amdZero,@amdHd3d,@memoInter,@img)",conG);
            cmdAG.Parameters.AddWithValue("@graphicsId",Graphic_id1.Text);
            cmdAG.Parameters.AddWithValue("@amdId",AMD_id1.SelectedValue);
            cmdAG.Parameters.AddWithValue("@detailedId",Det_tp_id2.SelectedValue);
            cmdAG.Parameters.AddWithValue("@model",Model2.Text);
            cmdAG.Parameters.AddWithValue("@gpu",GPU_Arch1.Text);
            cmdAG.Parameters.AddWithValue("@directX",DirectX1.Text);
            cmdAG.Parameters.AddWithValue("@mantleApi",Mantle_API1.SelectedValue);
            cmdAG.Parameters.AddWithValue("@vulkanApi",Vulkan_API1.SelectedValue);
            cmdAG.Parameters.AddWithValue("@openGl",Open_GL1.Text);
            cmdAG.Parameters.AddWithValue("@openCl",Open_CL1.Text);
            cmdAG.Parameters.AddWithValue("@pciExp",PCI_Exp_Ver1.SelectedValue);
            cmdAG.Parameters.AddWithValue("@amdPow",AMD_Pow_tech1.SelectedValue);
            cmdAG.Parameters.AddWithValue("@fourKRes",Resol_Supp1.Text);
            cmdAG.Parameters.AddWithValue("@ddmaAudio",DDMA_Aud1.SelectedValue);
            cmdAG.Parameters.AddWithValue("@hdmi",HDMI1.SelectedValue);
            cmdAG.Parameters.AddWithValue("@trueAudio",True_Aud1.SelectedValue);
            cmdAG.Parameters.AddWithValue("@amdEye",AMD_Eye_Tech1.Text);
            cmdAG.Parameters.AddWithValue("@videoCodec",Vid_Cod_Eng.SelectedValue);
            cmdAG.Parameters.AddWithValue("@gpuClock",GPU_Clc_Spe1.Text);
            cmdAG.Parameters.AddWithValue("@memoBand",Memo_Band1.Text);
            cmdAG.Parameters.AddWithValue("@memoAmt",Memo_Amt1.Text);
            cmdAG.Parameters.AddWithValue("@streamProc",Stre_Proc_Uni1.Text);
            cmdAG.Parameters.AddWithValue("@reqPow",Req_Pow_sup_Conn1.Text);
            cmdAG.Parameters.AddWithValue("@amdCross",AMD_Cros_Supp1.Text);
            cmdAG.Parameters.AddWithValue("@formFacror",Form_Fact1.Text);
            cmdAG.Parameters.AddWithValue("@highBand",High_Band_memo1.SelectedValue);
            cmdAG.Parameters.AddWithValue("@vsr",Ver_Sup_reso1.SelectedValue);
            cmdAG.Parameters.AddWithValue("@amdFree",AMD_Free_Tech1.SelectedValue);
            cmdAG.Parameters.AddWithValue("@amdLiquid",AMD_LiqVR_Tech1.SelectedValue);
            cmdAG.Parameters.AddWithValue("@frameRate",Fram_Rat_Tar_Contr1.SelectedValue);
            cmdAG.Parameters.AddWithValue("@amdZero",AMD_ZeroCo_Pow_Tech.SelectedValue);
            cmdAG.Parameters.AddWithValue("@amdHd3d",AMD_HD_3D_Tech1.SelectedValue);
            cmdAG.Parameters.AddWithValue("@memoInter",Memo_Inter1.Text);
            cmdAG.Parameters.AddWithValue("@img",Path_IMG2.Text);
            conG.Open();
            if (cmdP.ExecuteNonQuery() > 0)
            {
                Response.Write("Record inserted");
            }
            else
            {
                Response.Write("record not inserted");
            }
            conG.Close();
            Response.Redirect("admin.aspx");
        }

        protected void AUpdateBG_Click(object sender, EventArgs e)
        {
            cmdAG = new SqlCommand("update EveryGA set GraphicsId=@graphicsId,AMd_id=@amdId,Detailed_id=@detailedId,Model=@model,GPU_Architecture=@gpu,DirectX=@directX,Mantle_API=@mantleApi,Vulkan_API=@vulkanApi,OpenGL=@openGl,OpenCL=@openCl,PCI_Experss_Version=@pciExp,AMD_Powertune_Technology=@amdPow,Four_K_Resolution_Support=@fourKRes,DDMA_Audio=@ddmaAudio,HDMI=@hdmi,Trueaudio_Technology=@trueAudio,AMD_Eyefinity_Technology=@amdEye,Video_Codec_Engine=@videoCodec,GPU_Clock_Speed=@gpuClock,Memory_Bandwidth=@memoBand,Memory_Amount=@memoAmt,Stream_Processing_Unit=@streamProc,Required_Power_Supply_Connector=@reqPow,AMD_Crossfire_Support=@amdCross,Form_Factor=@formFacror,High_Bandwidth_Memory=@highBand,VSR=@vsr,AMD_FreeSync_Technology=@amdFree,AMD_LiquidVR_technology=@amdLiquid,Frame_Rate_Target_Controll=@frameRate,AMD_ZeroCore_Power_Technology=@amdZero,AMD_HD3D_Technology=@amdHd3d,Memory_Interface=@memoInter,images=@img where EveryGA_id=@everyGA_id ",conG);
            cmdAG.Parameters.AddWithValue("@graphicsId", Graphic_id1.Text);
            cmdAG.Parameters.AddWithValue("@amdId", AMD_id1.SelectedValue);
            cmdAG.Parameters.AddWithValue("@detailedId", Det_tp_id2.SelectedValue);
            cmdAG.Parameters.AddWithValue("@model", Model2.Text);
            cmdAG.Parameters.AddWithValue("@gpu", GPU_Arch1.Text);
            cmdAG.Parameters.AddWithValue("@directX", DirectX1.Text);
            cmdAG.Parameters.AddWithValue("@mantleApi", Mantle_API1.SelectedValue);
            cmdAG.Parameters.AddWithValue("@vulkanApi", Vulkan_API1.SelectedValue);
            cmdAG.Parameters.AddWithValue("@openGl", Open_GL1.Text);
            cmdAG.Parameters.AddWithValue("@openCl", Open_CL1.Text);
            cmdAG.Parameters.AddWithValue("@pciExp", PCI_Exp_Ver1.SelectedValue);
            cmdAG.Parameters.AddWithValue("@amdPow", AMD_Pow_tech1.SelectedValue);
            cmdAG.Parameters.AddWithValue("@fourKRes", Resol_Supp1.Text);
            cmdAG.Parameters.AddWithValue("@ddmaAudio", DDMA_Aud1.SelectedValue);
            cmdAG.Parameters.AddWithValue("@hdmi", HDMI1.SelectedValue);
            cmdAG.Parameters.AddWithValue("@trueAudio", True_Aud1.SelectedValue);
            cmdAG.Parameters.AddWithValue("@amdEye", AMD_Eye_Tech1.Text);
            cmdAG.Parameters.AddWithValue("@videoCodec", Vid_Cod_Eng.SelectedValue);
            cmdAG.Parameters.AddWithValue("@gpuClock", GPU_Clc_Spe1.Text);
            cmdAG.Parameters.AddWithValue("@memoBand", Memo_Band1.Text);
            cmdAG.Parameters.AddWithValue("@memoAmt", Memo_Amt1.Text);
            cmdAG.Parameters.AddWithValue("@streamProc", Stre_Proc_Uni1.Text);
            cmdAG.Parameters.AddWithValue("@reqPow", Req_Pow_sup_Conn1.Text);
            cmdAG.Parameters.AddWithValue("@amdCross", AMD_Cros_Supp1.Text);
            cmdAG.Parameters.AddWithValue("@formFacror", Form_Fact1.Text);
            cmdAG.Parameters.AddWithValue("@highBand", High_Band_memo1.SelectedValue);
            cmdAG.Parameters.AddWithValue("@vsr", Ver_Sup_reso1.SelectedValue);
            cmdAG.Parameters.AddWithValue("@amdFree", AMD_Free_Tech1.SelectedValue);
            cmdAG.Parameters.AddWithValue("@amdLiquid", AMD_LiqVR_Tech1.SelectedValue);
            cmdAG.Parameters.AddWithValue("@frameRate", Fram_Rat_Tar_Contr1.SelectedValue);
            cmdAG.Parameters.AddWithValue("@amdZero", AMD_ZeroCo_Pow_Tech.SelectedValue);
            cmdAG.Parameters.AddWithValue("@amdHd3d", AMD_HD_3D_Tech1.SelectedValue);
            cmdAG.Parameters.AddWithValue("@memoInter", Memo_Inter1.Text);
            cmdAG.Parameters.AddWithValue("@img", Path_IMG2.Text);
            cmdAG.Parameters.AddWithValue("@everyGA_id", Convert.ToInt32(EveryGA_id.Text));
            conG.Open();
            if (cmdP.ExecuteNonQuery() > 0)
            {
                Response.Write("Record updated");
            }
            else
            {
                Response.Write("record not updated");
            }
            conG.Close();
            Response.Redirect("admin.aspx");
        }

        protected void ADeleteBG_Click(object sender, EventArgs e)
        {
            cmdAG = new SqlCommand("delete from EveryGA where EveryGA_id=@everyGA_id", conG);
            cmdAG.Parameters.Add("@everyGA_id", SqlDbType.Int);
            cmdAG.Parameters["@everyGA_id"].Value = Convert.ToInt32(EveryGA_id.Text);
            conG.Open();
            if (cmdP.ExecuteNonQuery() > 0)
            {
                Response.Write("record deleted");
            }
            else
            {
                Response.Write("record not deleted");
            }
            conG.Close();
            Response.Redirect("admin.aspx");
        }

        protected void NInsertBG_Click(object sender, EventArgs e)
        {
            cmdNG = new SqlCommand("insert into EveryGn values(@graphicsId,@nvidiaId,@model,@cudaCore,@baseClock,@boostClock,@textureFillR,@standMemoConf,@standClock,@interWidth,@bandWidth,@graphicCardPow,@supportedTech)",conG);
            cmdNG.Parameters.AddWithValue("@graphicsId",Graphic_id2.Text);
            cmdNG.Parameters.AddWithValue("@nvidiaId",NVIDiA_id1.SelectedValue);
            cmdNG.Parameters.AddWithValue("@model",Model3.Text);
            cmdNG.Parameters.AddWithValue("@cudaCore",CUDA_Core1.Text);
            cmdNG.Parameters.AddWithValue("@baseClock",Base_Clock2.Text);
            cmdNG.Parameters.AddWithValue("@boostClock",Boost_Clock1.Text);
            cmdNG.Parameters.AddWithValue("@textureFillR",Text_Fil_Rate1.Text);
            cmdNG.Parameters.AddWithValue("@standMemoConf",Std_Memo_Conf1.SelectedValue);
            cmdNG.Parameters.AddWithValue("@standClock",Std_Clock1.Text);
            cmdNG.Parameters.AddWithValue("@interWidth",Int_Width1.SelectedValue);
            cmdNG.Parameters.AddWithValue("@bandWidth",Bandwidth1.Text);
            cmdNG.Parameters.AddWithValue("@graphicCardPow",Graphic_Crd_Pow1.Text);
            cmdNG.Parameters.AddWithValue("@supportedTech",Supp_Tech1.Text);
            conG.Open();
            if (cmdP.ExecuteNonQuery() > 0)
            {
                Response.Write("Record inserted");
            }
            else
            {
                Response.Write("record not inserted");
            }
            conG.Close();
            Response.Redirect("admin.aspx");
        }

        protected void NUpdateBG_Click(object sender, EventArgs e)
        {
            cmdNG = new SqlCommand("update EveryGn set GraphicsId=@graphicsId,nVIDIA_id=@nvidiaId,Model=@model,CUDA_Cores=@cudaCore,Base_Clock=@baseClock,Boost_Clock=@boostClock,Texture_Fill_Rate=@textureFillR,Standard_Memory_Config=@standMemoConf,Standard_Clock=@standClock,Interface_Width=@interWidth,Bandwidth=@bandWidth,Graphics_Card_Power=@graphicCardPow,Supported_Technologies=@supportedTech where EveryGn=@everyGN", conG);
            cmdNG.Parameters.AddWithValue("@graphicsId", Graphic_id2.Text);
            cmdNG.Parameters.AddWithValue("@nvidiaId", NVIDiA_id1.SelectedValue);
            cmdNG.Parameters.AddWithValue("@model", Model3.Text);
            cmdNG.Parameters.AddWithValue("@cudaCore", CUDA_Core1.Text);
            cmdNG.Parameters.AddWithValue("@baseClock", Base_Clock2.Text);
            cmdNG.Parameters.AddWithValue("@boostClock", Boost_Clock1.Text);
            cmdNG.Parameters.AddWithValue("@textureFillR", Text_Fil_Rate1.Text);
            cmdNG.Parameters.AddWithValue("@standMemoConf", Std_Memo_Conf1.SelectedValue);
            cmdNG.Parameters.AddWithValue("@standClock", Std_Clock1.Text);
            cmdNG.Parameters.AddWithValue("@interWidth", Int_Width1.SelectedValue);
            cmdNG.Parameters.AddWithValue("@bandWidth", Bandwidth1.Text);
            cmdNG.Parameters.AddWithValue("@graphicCardPow", Graphic_Crd_Pow1.Text);
            cmdNG.Parameters.AddWithValue("@supportedTech", Supp_Tech1.Text);
            cmdNG.Parameters.AddWithValue("@everyGN", Convert.ToInt32(EveryGN.Text));
            conG.Open();
            if (cmdP.ExecuteNonQuery() > 0)
            {
                Response.Write("Record updated");
            }
            else
            {
                Response.Write("record not updated");
            }
            conG.Close();
            Response.Redirect("admin.aspx");
        }

        protected void NDeleteBG_Click(object sender, EventArgs e)
        {
            cmdAG = new SqlCommand("delete from EveryGn where EveryGn=@everyGN", conG);
            cmdNG.Parameters.AddWithValue("@everyGN", Convert.ToInt32(EveryGN.Text));
            conG.Open();
            if (cmdP.ExecuteNonQuery() > 0)
            {
                Response.Write("record deleted");
            }
            else
            {
                Response.Write("record not deleted");
            }
            conG.Close();
            Response.Redirect("admin.aspx");
        }

        protected void InsertBR_Click(object sender, EventArgs e)
        {
            cmdR = new SqlCommand("insert into Every_Corsair values(@ramsId,@corsairId,@corDet,@model,@memoType,@packCont,@density,@speed,@testLaten,@voltage,@packMemo,@pinOut,@intelXmp,@heatSpred,@compat)", conR);
            cmdR.Parameters.AddWithValue("@ramsId",RAM_id1.Text);
            cmdR.Parameters.AddWithValue("@corsairId",Corsair_id1.SelectedValue);
            cmdR.Parameters.AddWithValue("@corDet",Det_tp_id3.SelectedValue);
            cmdR.Parameters.AddWithValue("@model",Model4.Text);
            cmdR.Parameters.AddWithValue("@memoType",Memo_Typ1.SelectedValue);
            cmdR.Parameters.AddWithValue("@packCont",Pack_Cont1.Text);
            cmdR.Parameters.AddWithValue("@density",Density1.Text);
            cmdR.Parameters.AddWithValue("@speed",Speed1.Text);
            cmdR.Parameters.AddWithValue("@testLaten",Test_Lat1.Text);
            cmdR.Parameters.AddWithValue("@voltage",Volt1.Text);
            cmdR.Parameters.AddWithValue("@packMemo",Pack_Memo_Format1.SelectedValue);
            cmdR.Parameters.AddWithValue("@pinOut",Pin_out1.Text);
            cmdR.Parameters.AddWithValue("@intelXmp",Intel_XMP1.Text);
            cmdR.Parameters.AddWithValue("@heatSpred",Heat_Spre1.Text);
            cmdR.Parameters.AddWithValue("@compat",Compat1.Text);
            conR.Open();
            if (cmdR.ExecuteNonQuery() > 0)
            {
                Response.Write("Record inserted");
            }
            else
            {
                Response.Write("record not inserted");
            }
            conR.Close();
            Response.Redirect("admin.aspx");
        }

        protected void UpdateBR_Click(object sender, EventArgs e)
        {
            cmdR = new SqlCommand("update Every_Corsair set RAMs_Id=@ramsId,Corsair_Id=@corsairId,Corsair_Detailed_Id=@corDet,Model=@model,Memory_Type=@memoType,Package_contents=@packCont,Density=@density,Speed=@speed,Tested_Latency=@testLaten,Voltage=@voltage,Package_Memory_Format=@packMemo,Pin_Out=@pinOut,Intel_XMP=@intelXmp,Heatspreader=@heatSpred,Compatibility=@compat where EveryCorsair_Id=@everyCor", conR);
            cmdR.Parameters.AddWithValue("@ramsId", RAM_id1.Text);
            cmdR.Parameters.AddWithValue("@corsairId", Corsair_id1.SelectedValue);
            cmdR.Parameters.AddWithValue("@corDet", Det_tp_id3.SelectedValue);
            cmdR.Parameters.AddWithValue("@model", Model4.Text);
            cmdR.Parameters.AddWithValue("@memoType", Memo_Typ1.SelectedValue);
            cmdR.Parameters.AddWithValue("@packCont", Pack_Cont1.Text);
            cmdR.Parameters.AddWithValue("@density", Density1.Text);
            cmdR.Parameters.AddWithValue("@speed", Speed1.Text);
            cmdR.Parameters.AddWithValue("@testLaten", Test_Lat1.Text);
            cmdR.Parameters.AddWithValue("@voltage", Volt1.Text);
            cmdR.Parameters.AddWithValue("@packMemo", Pack_Memo_Format1.SelectedValue);
            cmdR.Parameters.AddWithValue("@pinOut", Pin_out1.Text);
            cmdR.Parameters.AddWithValue("@intelXmp", Intel_XMP1.Text);
            cmdR.Parameters.AddWithValue("@heatSpred", Heat_Spre1.Text);
            cmdR.Parameters.AddWithValue("@compat", Compat1.Text);
            cmdR.Parameters.AddWithValue("@everyCor",Convert.ToInt32(everyCor.Text));
            conR.Open();
            if (cmdR.ExecuteNonQuery() > 0)
            {
                Response.Write("Record updated");
            }
            else
            {
                Response.Write("record not updated");
            }
            conR.Close();
            Response.Redirect("admin.aspx");
        }

        protected void DeleteBR_Click(object sender, EventArgs e)
        {
            cmdR = new SqlCommand("delete from Every_Corsair where EveryCorsair_Id=@everyCor", conR);
            cmdR.Parameters.AddWithValue("@everyCor", Convert.ToInt32(everyCor.Text));
            conR.Open();
            if (cmdR.ExecuteNonQuery() > 0)
            {
                Response.Write("record deleted");
            }
            else
            {
                Response.Write("record not deleted");
            }
            conR.Close();
            Response.Redirect("admin.aspx");
        }
    }
}