<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CorsairFilterResult.aspx.cs" Inherits="FinalProject.CorsairFilterResult" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Memory Collection</title>
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
    <link href="jquery-ui%201.8.css" rel="stylesheet" type="text/css" />
    

</head>
<body>
    <form id="form1" runat="server">
    <nav class="w3-sidenav w3-white w3-animate-left w3-overlay bg-success" style="display:none;z-index:10" id="mySidenav">
 <i class="glyphicon glyphicon-home"></i>Home

  <a class="w3-padding" href="javascript:void(0)">MENU</a>
  <a class="w3-padding" href="javascript:void(0)">About</a>
  <a class="w3-padding" href="javascript:void(0)">Contact</a>
  <div class="w3-dropdown-hover">
    <a class="w3-padding" href="javascript:void(0)">Dropdown</a>
    <div class="w3-dropdown-content w3-white w3-card-4">
      <a href="javascript:void(0)">Link 1</a>
      <a href="javascript:void(0)">Link 2</a>
      <a href="javascript:void(0)">Link 3</a>
    </div>
   
  </div>
  <a class="w3-padding" href="javascript:void(0)">Support</a>

  
 
             
                          
                        
</nav>








<!-- Header with Blue Background-->

<div class=" w3-top w3-row w3-container w3-padding-16  bg-danger ">



 


 <!--The Side NAV -->
<div class="w3-overlay w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" id="myOverlay"></div>


<div class="w3-col "style="width:33%; margin-top: 0px;">
  <span class="w3-opennav w3-xxlarge" onclick="w3_open()">&#9776;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
   
    <asp:Label ID="title" runat="server" 
        CssClass="w3-accordion  w3-text-white w3-xlarge  w3-label w3-centered " 
        style="font-family:Segoe UI Light;" Height="0px" 
        Text="Memory" Width="84px"></asp:Label>
       <asp:Label ID="Label2" runat="server" 
        CssClass="w3-accordion  w3-text-white w3-xlarge  w3-label w3-centered " 
        style="font-family:Segoe UI Light;" Height="0px" 
        Text="Collection" Width="60px"></asp:Label>
       
 </div>  
 <!--SIDE NAV ENDS HERE-->   



 <!--SEARCH BOX-->
<asp:TextBox ID="ctext" runat="server" 
        CssClass="w3-input w3-border-red w3-centered w3-half text-danger w3-hover-shadow w3-col w3-round-large " 
        placeholder="Search By, Vengeance, Dominator,All.." Width="398px" style="margin-top: 0px;"></asp:TextBox>
<asp:Button ID="cbtn" CssClass=" btn btn-danger w3-round-large w3-card-2" style="font-family:Segoe UI Light" 
        runat="server" Height="37px"
        Width="49px" Text="GO" onclick="cbtn_Click"/>

&nbsp;


    <asp:Label ID="follow" runat="server" CssClass="w3-text-white w3-large w3-right-align" style="font-family: Segoe UI Light" Text="Follow Us On!"></asp:Label>
    <a href="#" class=" w3-hover-text-indigo w3-text-white w3-show-inline-block w3-right-align"><i class="fa fa-facebook-official w3-xlarge"></i></a>
    <a href="#" class=" w3-hover-text-purple w3-text-white w3-show-inline-block w3-right-align"><i class="fa fa-instagram  w3-xlarge"></i></a>
    <a href="#" class=" w3-hover-text-yellow w3-text-white w3-show-inline-block w3-right-align"><i class="fa fa-snapchat  w3-xlarge"></i></a>
    <a href="#" class=" w3-hover-text-red w3-text-white w3-show-inline-block w3-right-align"><i class="fa fa-pinterest-p  w3-xlarge"></i></a>
    <a href="#" class=" w3-hover-text-light-blue w3-text-white w3-show-inline-block w3-right-align"><i class="fa fa-twitter  w3-xlarge"></i></a>
    <a href="#" class=" w3-hover-text-indigo w3-text-white w3-show-inline-block w3-right-align"><i class="fa fa-linkedin  w3-xlarge"></i></a>
 
    
   <button class=" w3-right-align btn btn-outline-danger w3-round-large w3-card-2 text-white " type="button" data-toggle="modal"  data-target="#pp">Subscribe</button> 


      <!--subscribe modal-->

  


    
      
   
      
      






    
    <br />
    <br />
   





</div> 
 
<!--header blue background div tag (end)-->

<div class="w3-padding-32"></div>
<div class=" w3-padding-16">
    <a  class="btn btn-outline-danger text-red w3-hover-text-white w3-medium " style="border-width:medium; font-size:larger;" href="corsair.aspx">Back</a>
    </div>
    
    
    
    <asp:DataList ID="DataList1" runat="server" BackColor="White" 
        BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        GridLines="Both">
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <ItemStyle BackColor="White" ForeColor="#003399" />
        <ItemTemplate>
            EveryCorsair_Id:
            <asp:Label ID="EveryCorsair_IdLabel" runat="server" 
                Text='<%# Eval("EveryCorsair_Id") %>' />
            <br />
            RAMs_Id:
            <asp:Label ID="RAMs_IdLabel" runat="server" Text='<%# Eval("RAMs_Id") %>' />
            <br />
            Corsair_Id:
            <asp:Label ID="Corsair_IdLabel" runat="server" 
                Text='<%# Eval("Corsair_Id") %>' />
            <br />
            Corsair_Detailed_Id:
            <asp:Label ID="Corsair_Detailed_IdLabel" runat="server" 
                Text='<%# Eval("Corsair_Detailed_Id") %>' />
            <br />
            Model:
            <asp:Label ID="ModelLabel" runat="server" Text='<%# Eval("Model") %>' />
            <br />
            Memory_Type:
            <asp:Label ID="Memory_TypeLabel" runat="server" 
                Text='<%# Eval("Memory_Type") %>' />
            <br />
            Package_contents:
            <asp:Label ID="Package_contentsLabel" runat="server" 
                Text='<%# Eval("Package_contents") %>' />
            <br />
            Density:
            <asp:Label ID="DensityLabel" runat="server" Text='<%# Eval("Density") %>' />
            <br />
            Speed:
            <asp:Label ID="SpeedLabel" runat="server" Text='<%# Eval("Speed") %>' />
            <br />
            Tested_Latency:
            <asp:Label ID="Tested_LatencyLabel" runat="server" 
                Text='<%# Eval("Tested_Latency") %>' />
            <br />
            Voltage:
            <asp:Label ID="VoltageLabel" runat="server" Text='<%# Eval("Voltage") %>' />
            <br />
            Package_Memory_Format:
            <asp:Label ID="Package_Memory_FormatLabel" runat="server" 
                Text='<%# Eval("Package_Memory_Format") %>' />
            <br />
            Pin_Out:
            <asp:Label ID="Pin_OutLabel" runat="server" Text='<%# Eval("Pin_Out") %>' />
            <br />
            Intel_XMP:
            <asp:Label ID="Intel_XMPLabel" runat="server" Text='<%# Eval("Intel_XMP") %>' />
            <br />
            Heatspreader:
            <asp:Label ID="HeatspreaderLabel" runat="server" 
                Text='<%# Eval("Heatspreader") %>' />
            <br />
            Compatibility:
            <asp:Label ID="CompatibilityLabel" runat="server" 
                Text='<%# Eval("Compatibility") %>' />
            <br />
            images:
            <asp:Label ID="imagesLabel" runat="server" Text='<%# Eval("images") %>' />
            <br />
            Memory:
            <asp:Label ID="MemoryLabel" runat="server" Text='<%# Eval("Memory") %>' />
            <br />
<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
    </asp:DataList>











    </form>
</body>
</html>
