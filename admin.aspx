<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="FinalProject.admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css?parameter=1"/>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0/css/bootstrap.min.css? parameter=1"/>
    <link href="bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="myv4.css" rel="stylesheet" type="text/css" />
    <link href="bootstrap.min.css" rel="stylesheet" type="text/css" />
    
    <link href="myv4.min.css" rel="stylesheet" type="text/css" />

     <link href="w3.css" rel="stylesheet" type="text/css" />
    
    <link href="font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="gcss.css" rel="stylesheet" type="text/css" />
   
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
 
        <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.10.0.min.js" type="text/javascript"></script>
         <script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/jquery-ui.min.js" type="text/javascript"></script>
        <link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/themes/blitzer/jquery-ui.css"
            rel="Stylesheet" type="text/css" />
    <%--<script src="jquery-3.1.1.min.js" type="text/javascript"></script>--%>

    
</head>
<body>
    <form id="form1" runat="server">
    
    <div class="w3-top">
  <ul class="w3-navbar w3-dark-grey" id="myNavbar">
    <li class="w3-hide-medium w3-hide-large w3-opennav w3-right">
      <a class="w3-hover-black" href="javascript:void(0);">
        <i class="fa fa-bars"></i>
      </a>
    </li>
    <li class="w3-left-align w3-dark-grey"><a href="Homepage.aspx"><i class=" fa fa-home w3-large"></i>HOME</a></li>
    <li class="w3-hide-small w3-dark-grey"><a href="intelprocessor.aspx">PROCESSOR</a></li>
    <li class="w3-hide-small w3-dark-grey"><a href="graphiccards.aspx">GRAPHIC CARDS</a></li>
    <li class="w3-hide-small w3-dark-grey"><a href="memorycollection.aspx">MEMORY </a></li>
    <li class="w3-hide-small w3-dark-grey"><a href="about.aspx">ABOUT US</a></li>

    <li class="w3-hide-small w3-dark-grey"><a href="#contact"> CONTACT US</a></li>
    <li class="w3-hide-small w3-dark-grey"><a href="demo.aspx">D.I.Y FORUM</a></li>


  
  

  
    <li class=" w3-right w3-hide-small w3-dark-grey w3-round"><a href="admin.aspx">Welcome Admin</a></li>
  </ul>

  <!-- Navbar on small screens -->
  <div id="navDemo" class="w3-hide w3-hide-large w3-hide-medium">
    <ul class="w3-navbar w3-left-align w3-white">
      <li><a href="#about" onclick="toggleFunction()">PROCESSOR</a></li>
      <li><a href="#portfolio" onclick="toggleFunction()">GRAPHIC CARDS</a></li>
      <li><a href="#contact" onclick="toggleFunction()">CONTACT</a></li>
      <li><a href="#">SEARCH</a></li>
    </ul>
  </div>
</div>
    <div style="height:100px;"></div>
    <div class=" w3-center w3-section w3-border-light-grey">
        <p><h2>Select Operation :</h2></p>
        <br />
        <div id="Insert"><asp:RadioButton ID="InsertR" Text="Insert Into Database" GroupName="JustSelect" runat="server" /></div>
        <div id="Update"><asp:RadioButton ID="UpdateR" Text="Update Into Database" GroupName="JustSelect" runat="server" /></div>
        <div id="Delete"><asp:RadioButton ID="DeleteR" Text="Delete From Database" GroupName="JustSelect" runat="server" /></div>
        <br />
        <br />
        <div id="datab">
        <p><h2>Select Database :</h2></p>
        <br />
        <div id="ProcessorD"><asp:RadioButton ID="ProcessorDR" Text="Processor" GroupName="DSelect" runat="server" /></div>
        <div id="Graphic_CardD"><asp:RadioButton ID="Graphic_CardDR" Text="Graphic Card" GroupName="DSelect" runat="server" /></div>
        <div id="RAMD"><asp:RadioButton ID="RAMR" Text="RAM" GroupName="DSelect" runat="server" /></div>
        </div>
        <br />
        <br />


        <div id="Processor" class="">
        Processor : <br /><br />

        <div id="del">
        Processor Id = 
            <asp:DropDownList ID="Proc_id1" runat="server">
                <asp:ListItem Selected="True" Value="1">Intel</asp:ListItem>
            </asp:DropDownList>
            <br />
        Intel Id = 
            <asp:DropDownList ID="Intel_id1" runat="server">
                <asp:ListItem Value="111">Intel Celeron Processor</asp:ListItem>
                <asp:ListItem Value="112">Intel Pentium Processor</asp:ListItem>
                <asp:ListItem Value="113">Intel Core Processor</asp:ListItem>
                <asp:ListItem Value="114">Intel Xeon Processor</asp:ListItem>
            </asp:DropDownList>
            <br />
        Detailed Type Id = 
            <asp:DropDownList ID="Det_tp_id1" runat="server">
                <asp:ListItem Value="221">Celeron Processor</asp:ListItem>
                <asp:ListItem Value="222">Pentium Processor
</asp:ListItem>
                <asp:ListItem Value="223">Core i3</asp:ListItem>
                <asp:ListItem Value="224">Core i5</asp:ListItem>
                <asp:ListItem Value="225">Core i7</asp:ListItem>
                <asp:ListItem Value="226">Xeon Processor
</asp:ListItem>
                <asp:ListItem Value="227">Xeon-EP series Processor</asp:ListItem>
                <asp:ListItem Value="228">Xeon-EX series Processor</asp:ListItem>
            </asp:DropDownList>
            <br />
        Model Name = <asp:TextBox ID="Model1" runat="server" ></asp:TextBox><br />
        Core = 
            <asp:DropDownList ID="Core1" runat="server">
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem>22</asp:ListItem>
            </asp:DropDownList>
            <br />
        HT = <asp:TextBox ID="HT1" runat="server" ></asp:TextBox><br />
        Base Clock = <asp:TextBox ID="Base_Clock1" runat="server" ></asp:TextBox><br />
        Boost = <asp:TextBox ID="Boost1" runat="server" ></asp:TextBox><br />
        Cache = <asp:TextBox ID="Cache1" runat="server" ></asp:TextBox><br />
        TDP = <asp:TextBox ID="TDP1" runat="server" ></asp:TextBox><br />
        Socket = <asp:TextBox ID="Socket1" runat="server" ></asp:TextBox><br />
        Onboard Graphics = <asp:TextBox ID="On_Brd_Graphic1" runat="server" ></asp:TextBox><br />
        Motherboard Price Factor = <asp:TextBox ID="MoBrd_Price_Fact_1" runat="server" ></asp:TextBox><br />
        Architecture = 
            <asp:DropDownList ID="Arch1" runat="server">
                <asp:ListItem>Skylake</asp:ListItem>
                <asp:ListItem>Broadwell-E</asp:ListItem>
                <asp:ListItem>Broadwell-EP</asp:ListItem>
            </asp:DropDownList>
            <br />
        Path of the Image = <asp:TextBox ID="Path_IMG1" runat="server" ></asp:TextBox><br /></div>
        <div id="where">Primary Search Id = <asp:TextBox ID="Every_id1" runat="server"></asp:TextBox></div>
        <br />
        <br />

        <asp:Button ID="InsertBP"
            runat="server" Text="Insert Into Processor" onclick="InsertBP_Click" />
        <asp:Button ID="UpdateBP"
            runat="server" Text="Update Into Processor" onclick="UpdateBP_Click" />
        <asp:Button ID="DeleteBP"
            runat="server" Text="Delete From Processor" onclick="DeleteBP_Click" /><br /><br />
        </div>
        <div id="Graphics">
        Graphics Card : <br /><br />
        
        Brand : <br /><br />
        <div id="GB1"><asp:RadioButton ID="BrandAMD1" runat="server" text="AMD" GroupName="Brand" /></div>
        <div id="GB2"><asp:RadioButton ID="BrandNVIDIA1" runat="server" text="NVIDIA" GroupName="Brand" /></div>

        <div id ="AMDG">AMD : <br /><br />
        <div id="del1">
        Graphics Id = <asp:TextBox ID="Graphic_id1" runat="server" ReadOnly="True" >2</asp:TextBox><br />
        AMD Id = 
            <asp:DropDownList ID="AMD_id1" runat="server">
                <asp:ListItem Value="111">AMD Radeon R9 Series</asp:ListItem>
                <asp:ListItem Value="112">AMD Radeon R7 Series</asp:ListItem>
                <asp:ListItem Value="113">AMD RadeonTM R5 Series</asp:ListItem>
                <asp:ListItem Value="114">Radeon Pro Duos </asp:ListItem>
                <asp:ListItem Value="115">AMD Radeon HD 7000 Series</asp:ListItem>
            </asp:DropDownList>
            <br />
        Detailed Type Id = 
            <asp:DropDownList ID="Det_tp_id2" runat="server">
                <asp:ListItem Value="221">R9200 Series</asp:ListItem>
                <asp:ListItem Value="222">R9 300 Series</asp:ListItem>
                <asp:ListItem Value="223">R9 FURY Series</asp:ListItem>
                <asp:ListItem Value="224">R9 NANO </asp:ListItem>
                <asp:ListItem Value="225">R7 200 Series</asp:ListItem>
                <asp:ListItem Value="226">R7 300 Series</asp:ListItem>
                <asp:ListItem Value="227">AMD Radeon HD 7900</asp:ListItem>
                <asp:ListItem Value="228">AMD Radeon HD 7800</asp:ListItem>
                <asp:ListItem Value="229">AMD Radeon HD 7700</asp:ListItem>
                <asp:ListItem Value="2210">AMD Radeon HD 7990</asp:ListItem>
            </asp:DropDownList>
            <br />
        Model Name = <asp:TextBox ID="Model2" runat="server" ></asp:TextBox><br />
        GPU Architecture = <asp:TextBox ID="GPU_Arch1" runat="server" ></asp:TextBox><br />
        DirectX = <asp:TextBox ID="DirectX1" runat="server" ></asp:TextBox><br />
        Mantle API = 
            <asp:DropDownList ID="Mantle_API1" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem Value="NULL">N/A</asp:ListItem>
            </asp:DropDownList>
            <br />
        Vulkan API = 
            <asp:DropDownList ID="Vulkan_API1" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem Value="NULL">N/A</asp:ListItem>
            </asp:DropDownList>
            <br />
        OpenGL = <asp:TextBox ID="Open_GL1" runat="server" ></asp:TextBox><br />
        OpenCL = <asp:TextBox ID="Open_CL1" runat="server" ></asp:TextBox><br />
        PCI Express Version = 
            <asp:DropDownList ID="PCI_Exp_Ver1" runat="server">
                <asp:ListItem>3</asp:ListItem>
            </asp:DropDownList>
            <br />
        AMD Powertune Technology =
        <asp:DropDownList ID="AMD_Pow_tech1" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem Value="NULL">N/A</asp:ListItem>
            </asp:DropDownList>
            <br />
        4K Resolution Support = <asp:TextBox ID="Resol_Supp1" runat="server" ></asp:TextBox><br />
        DDMA Audio = 
        <asp:DropDownList ID="DDMA_Aud1" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem Value="NULL">N/A</asp:ListItem>
            </asp:DropDownList>
            <br />
        HDMI = 
        <asp:DropDownList ID="HDMI1" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem Value="NULL">N/A</asp:ListItem>
            </asp:DropDownList>
            <br />
        TRUEAUDIO Technology =
        <asp:DropDownList ID="True_Aud1" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem Value="NULL">N/A</asp:ListItem>
            </asp:DropDownList>
            <br />
        AMD Eyefinity Technology = <asp:TextBox ID="AMD_Eye_Tech1" runat="server" ></asp:TextBox><br />
        Video Codec Engine (VCE) = 
        <asp:DropDownList ID="Vid_Cod_Eng" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem Value="NULL">N/A</asp:ListItem>
            </asp:DropDownList>
            <br />
        GPU Clock Speed = <asp:TextBox ID="GPU_Clc_Spe1" runat="server" ></asp:TextBox><br />
        Memory Bandwidth = <asp:TextBox ID="Memo_Band1" runat="server" ></asp:TextBox><br />
        Memory Amount = <asp:TextBox ID="Memo_Amt1" runat="server" ></asp:TextBox><br />
        Stream Processing Units = <asp:TextBox ID="Stre_Proc_Uni1" runat="server" ></asp:TextBox><br />
        Required Power Supply Connectores = <asp:TextBox ID="Req_Pow_sup_Conn1" runat="server" ></asp:TextBox><br />
        AMD Crossfire Support = <asp:TextBox ID="AMD_Cros_Supp1" runat="server" ></asp:TextBox><br />
        Form Factor = <asp:TextBox ID="Form_Fact1" runat="server" ></asp:TextBox><br />
        High-Bandwidth Memory (HBM) = 
        <asp:DropDownList ID="High_Band_memo1" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem Value="NULL">N/A</asp:ListItem>
            </asp:DropDownList>
            <br />
        Virtual Super Resolution (VSR) = 
        <asp:DropDownList ID="Ver_Sup_reso1" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem Value="NULL">N/A</asp:ListItem>
            </asp:DropDownList>
            <br />
        AMD FreeSync Technology = 
        <asp:DropDownList ID="AMD_Free_Tech1" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem Value="NULL">N/A</asp:ListItem>
            </asp:DropDownList>
            <br />
        AMD liquidVR technology = 
        <asp:DropDownList ID="AMD_LiqVR_Tech1" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem Value="NULL">N/A</asp:ListItem>
            </asp:DropDownList>
            <br />
        Frame Rate Target Control (FRTC) = 
        <asp:DropDownList ID="Fram_Rat_Tar_Contr1" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem Value="NULL">N/A</asp:ListItem>
            </asp:DropDownList>
            <br />
        AMD ZeroCore Power Technology = 
        <asp:DropDownList ID="AMD_ZeroCo_Pow_Tech" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem Value="NULL">N/A</asp:ListItem>
            </asp:DropDownList>
            <br />
        AMD HD3D Technology = 
        <asp:DropDownList ID="AMD_HD_3D_Tech1" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem Value="NULL">N/A</asp:ListItem>
            </asp:DropDownList>
            <br />
        Memory Interface = <asp:TextBox ID="Memo_Inter1" runat="server" ></asp:TextBox><br />
        Path of the Image = <asp:TextBox ID="Path_IMG2" runat="server" ></asp:TextBox><br /><br /></div>
        <div id="where1">Primary Search Id = <asp:TextBox ID="EveryGA_id" runat="server"></asp:TextBox></div>
        <br />
        <asp:Button ID="AInsertBG"
            runat="server" Text="Insert Into Graphics" onclick="AInsertBG_Click" />
        <asp:Button ID="AUpdateBG"
            runat="server" Text="Update Into Graphics" onclick="AUpdateBG_Click" />
        <asp:Button ID="ADeleteBG"
            runat="server" Text="Delete From Graphics" onclick="ADeleteBG_Click" /><br /><br />
        </div>
        <div id="NVIDIAG">NVIDIA : <br /><br />
        <div id="del2">
        Graphics Id = <asp:TextBox ID="Graphic_id2" runat="server" ReadOnly="True" >1</asp:TextBox><br />
        NVIDIA Id = 
            <asp:DropDownList ID="NVIDiA_id1" runat="server">
                <asp:ListItem Value="111">GeForce GTX</asp:ListItem>
                <asp:ListItem Value="112">GeForce GT</asp:ListItem>
                <asp:ListItem Value="113">GeForce</asp:ListItem>
            </asp:DropDownList>
            <br />
        Model Name = <asp:TextBox ID="Model3" runat="server" ></asp:TextBox><br />
        CUDA Core = <asp:TextBox ID="CUDA_Core1" runat="server" ></asp:TextBox><br />
        Base Clock = <asp:TextBox ID="Base_Clock2" runat="server" ></asp:TextBox><br />
        Boost Clock = <asp:TextBox ID="Boost_Clock1" runat="server" ></asp:TextBox><br />
        Texture Fill Rate = <asp:TextBox ID="Text_Fil_Rate1" runat="server" ></asp:TextBox><br />
        Standard Memory Configuration = 
            <asp:DropDownList ID="Std_Memo_Conf1" runat="server">
                <asp:ListItem>512 MB</asp:ListItem>
                <asp:ListItem>1 GB</asp:ListItem>
                <asp:ListItem>2 GB</asp:ListItem>
                <asp:ListItem>3GB</asp:ListItem>
                <asp:ListItem>4 GB</asp:ListItem>
                <asp:ListItem>6 GB</asp:ListItem>
                <asp:ListItem>8 GB</asp:ListItem>
            </asp:DropDownList>
            <br />
        Standard Clock = <asp:TextBox ID="Std_Clock1" runat="server" ></asp:TextBox><br />
        Interface Width = 
            <asp:DropDownList ID="Int_Width1" runat="server">
                <asp:ListItem>64-bit</asp:ListItem>
                <asp:ListItem>128-bit</asp:ListItem>
                <asp:ListItem>192-bit</asp:ListItem>
                <asp:ListItem>256-bit</asp:ListItem>
                <asp:ListItem>384-bit</asp:ListItem>
            </asp:DropDownList>
            <br />
        Bandwidth = <asp:TextBox ID="Bandwidth1" runat="server" ></asp:TextBox><br />
        Graphics Card Power = <asp:TextBox ID="Graphic_Crd_Pow1" runat="server" ></asp:TextBox><br />
        Supported Technologies = <asp:TextBox ID="Supp_Tech1" runat="server" ></asp:TextBox><br /></div>
        <div id="where2">Primary Search Id = <asp:TextBox ID="EveryGN" runat="server"></asp:TextBox></div>
        <br />
        <asp:Button ID="NInsertBG"
            runat="server" Text="Insert Into Graphics" onclick="NInsertBG_Click" />
        <asp:Button ID="NUpdateBG"
            runat="server" Text="Update Into Graphics" onclick="NUpdateBG_Click" />
        <asp:Button ID="NDeleteBG"
            runat="server" Text="Delete From Graphics" onclick="NDeleteBG_Click" /><br /><br />
        </div>
        </div>
        <div id="RAM">
        RAM : <br /><br />
        <div id="del3">
        RAM's Id = <asp:TextBox ID="RAM_id1" runat="server" 
                ReadOnly="True" >1</asp:TextBox><br />
        Corsair Id = 
            <asp:DropDownList ID="Corsair_id1" runat="server">
                <asp:ListItem Value="1">Dominator Platinum</asp:ListItem>
                <asp:ListItem Value="2">Vengeance LED Series</asp:ListItem>
                <asp:ListItem Value="3">Vengeance LPX Series</asp:ListItem>
                <asp:ListItem Value="4">XMS</asp:ListItem>
            </asp:DropDownList>
            <br />
        Detailed Type Id = 
            <asp:DropDownList ID="Det_tp_id3" runat="server">
                <asp:ListItem Value="1">Silver Heatspreader</asp:ListItem>
                <asp:ListItem Value="2">Black Heatspreader</asp:ListItem>
                <asp:ListItem Value="3">Chrome Heatspreader</asp:ListItem>
                <asp:ListItem Value="4">Red LED</asp:ListItem>
                <asp:ListItem Value="5">White LED</asp:ListItem>
                <asp:ListItem Value="6">Blue LED</asp:ListItem>
                <asp:ListItem Value="7">Black Heatspreader</asp:ListItem>
                <asp:ListItem Value="8">Blue Heatspreader</asp:ListItem>
                <asp:ListItem Value="9">Red Heatspreader</asp:ListItem>
                <asp:ListItem Value="10">XMS-DDR2</asp:ListItem>
                <asp:ListItem Value="11">XMS-DDR3</asp:ListItem>
            </asp:DropDownList>
            <br />
        Model Name = <asp:TextBox ID="Model4" runat="server" ></asp:TextBox><br />
        Memory Type = 
        <asp:DropDownList ID="Memo_Typ1" runat="server">
                <asp:ListItem>DDR2</asp:ListItem>
                <asp:ListItem>DDR3</asp:ListItem>
                <asp:ListItem>DDR4</asp:ListItem>
            </asp:DropDownList>
            <br />
        Package Contents = <asp:TextBox ID="Pack_Cont1" runat="server" ></asp:TextBox><br />
        Density = <asp:TextBox ID="Density1" runat="server" ></asp:TextBox><br />
        Speed = <asp:TextBox ID="Speed1" runat="server" ></asp:TextBox><br />
        Tested Latency = <asp:TextBox ID="Test_Lat1" runat="server" ></asp:TextBox><br />
        Voltage = <asp:TextBox ID="Volt1" runat="server" ></asp:TextBox><br />
        Package Memory Format = 
        <asp:DropDownList ID="Pack_Memo_Format1" runat="server">
                <asp:ListItem>DIMM</asp:ListItem>
                <asp:ListItem>Unbuffered DIMM</asp:ListItem>
            </asp:DropDownList>
            <br />
        Pin Out = <asp:TextBox ID="Pin_out1" runat="server" ></asp:TextBox><br />
        Intel XMP = <asp:TextBox ID="Intel_XMP1" runat="server" ></asp:TextBox><br />
        Heatspreader = <asp:TextBox ID="Heat_Spre1" runat="server" ></asp:TextBox><br />
        Compatibility = <asp:TextBox ID="Compat1" runat="server" ></asp:TextBox><br /></div>
        <div id="where3">Primary Search Id = <asp:TextBox ID="everyCor" runat="server"></asp:TextBox></div>
        <br />

        <asp:Button ID="InsertBR"
            runat="server" Text="Insert Into RAM" onclick="InsertBR_Click" />
        <asp:Button ID="UpdateBR"
            runat="server" Text="Update Into RAM" onclick="UpdateBR_Click" />
        <asp:Button ID="DeleteBR"
            runat="server" Text="Delete From RAM" onclick="DeleteBR_Click" /><br />
            
            <br />
        </div>
      <%--  <div id="SSD">
        SSD : <br /><br />
        RAM's Id = <asp:TextBox ID="TextBox1" runat="server" 
                ReadOnly="True" >1</asp:TextBox><br />
        Corsair Id = 
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="1">Dominator Platinum</asp:ListItem>
                <asp:ListItem Value="2">Vengeance LED Series</asp:ListItem>
                <asp:ListItem Value="3">Vengeance LPX Series</asp:ListItem>
                <asp:ListItem Value="4">XMS</asp:ListItem>
            </asp:DropDownList>
            <br />
        Detailed Type Id = 
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem Value="1">Silver Heatspreader</asp:ListItem>
                <asp:ListItem Value="2">Black Heatspreader</asp:ListItem>
                <asp:ListItem Value="3">Chrome Heatspreader</asp:ListItem>
                <asp:ListItem Value="4">Red LED</asp:ListItem>
                <asp:ListItem Value="5">White LED</asp:ListItem>
                <asp:ListItem Value="6">Blue LED</asp:ListItem>
                <asp:ListItem Value="7">Black Heatspreader</asp:ListItem>
                <asp:ListItem Value="8">Blue Heatspreader</asp:ListItem>
                <asp:ListItem Value="9">Red Heatspreader</asp:ListItem>
                <asp:ListItem Value="10">XMS-DDR2</asp:ListItem>
                <asp:ListItem Value="11">XMS-DDR3</asp:ListItem>
            </asp:DropDownList>
            <br />
        Model Name = <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox><br />
        Memory Type = 
        <asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem>DDR2</asp:ListItem>
                <asp:ListItem>DDR3</asp:ListItem>
                <asp:ListItem>DDR4</asp:ListItem>
            </asp:DropDownList>
            <br />
        Package Contents = <asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox><br />
        Density = <asp:TextBox ID="TextBox4" runat="server" ></asp:TextBox><br />
        Speed = <asp:TextBox ID="TextBox5" runat="server" ></asp:TextBox><br />
        Tested Latency = <asp:TextBox ID="TextBox6" runat="server" ></asp:TextBox><br />
        Voltage = <asp:TextBox ID="TextBox7" runat="server" ></asp:TextBox><br />
        Package Memory Format = 
        <asp:DropDownList ID="DropDownList4" runat="server">
                <asp:ListItem>DIMM</asp:ListItem>
                <asp:ListItem>Unbuffered DIMM</asp:ListItem>
            </asp:DropDownList>
            <br />
        Pin Out = <asp:TextBox ID="TextBox8" runat="server" ></asp:TextBox><br />
        Intel XMP = <asp:TextBox ID="TextBox9" runat="server" ></asp:TextBox><br />
        Heatspreader = <asp:TextBox ID="TextBox10" runat="server" ></asp:TextBox><br />
        Compatibility = <asp:TextBox ID="TextBox11" runat="server" ></asp:TextBox><br />
        <div id="Div2">Primary Search Id = <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox></div>
        <br />

        <asp:Button ID="Button1"
            runat="server" Text="Insert Into RAM" onclick="InsertBR_Click" />
        <asp:Button ID="Button2"
            runat="server" Text="Update Into RAM" onclick="UpdateBR_Click" />
        <asp:Button ID="Button3"
            runat="server" Text="Delete From RAM" onclick="DeleteBR_Click" /><br />
            
            <br />
        </div>--%>


    </div>

    <div id="test" style="display:none">
        hello
    </div>



    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.0.min.js"></script>
    <script type="text/javascript" src="AdminToggle.js"></script>
    </form>
</body>
</html>
