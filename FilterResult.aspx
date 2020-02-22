<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FilterResult.aspx.cs" Inherits="FinalProject.FilterResult" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Filter Search</title>
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
    <nav class="w3-sidenav w3-white w3-animate-left w3-overlay" style="display:none;z-index:10" id="mySidenav">

  <div class="w3-row  w3-padding-8  w3-navbar" style="height:76px">
                            
                            <div class="w3-col  w3-section" style="width:33%"> &nbsp;
                     <asp:Button ID="demo" CssClass="btn w3-white" runat="server" Text="Navigation" 
                                    Height="46px" Width="153px"/>
                                
                            </div>
                            <div class="w3-col  w3-section"  style="width:33%">
                            <asp:Button ID="btn23" CssClass="btn w3-white  w3-show-inline-block" runat="server" 
                                    Text="Product" Height="46px" Width="153px"  />
                            
                            </div>
                         
                          <div class="w3-col w3-section"  style="width:33%">
                           
                           <asp:Button ID="btn34" CssClass="btn w3-white w3-hover-text-aqua" runat="server" 
                                  Text="About Us" Height="46px" Width="153px" />
                           
                            </div>
                        
                             
                        </div>
             
                          <hr class="w3-white" style="height:1px"/>
   
                    
                    
                    
                    
                        
</nav>








<!-- Header with Blue Background-->

<div class=" w3-top w3-row w3-container w3-padding-16 w3-blue w3-responsive ">



 


 <!--The Side NAV -->
<div class="w3-overlay w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" id="myOverlay"></div>


<div class="w3-col "style="width:33%; margin-top: 0px;">
  <span class="w3-opennav w3-xxlarge" onclick="w3_open()">&#9776;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
   
    <asp:Label ID="title" runat="server" 
        CssClass="w3-accordion  w3-text-white w3-xlarge  w3-label w3-centered " 
        style="font-family:Segoe UI Light;" Height="0px" 
        Text="Processors" Width="110px"></asp:Label>
        <asp:Label ID="title1" runat="server" 
        CssClass="w3-accordion w3-text-white   w3-xlarge  w3-label w3-centered " 
        style="font-family:Segoe UI Light; margin-left: 0px;" Height="0px" 
        Text="Ark" Width="114px"></asp:Label>
 </div>  
 <!--SIDE NAV ENDS HERE-->   



 <!--SEARCH BOX-->
<asp:TextBox ID="protext" runat="server" 
        CssClass="w3-input w3-border-blue w3-centered w3-half w3-text-blue w3-hover-shadow w3-col w3-round-large " 
        placeholder="Search Product..." Width="398px" style="margin-top: 0px;" 
     ></asp:TextBox>
<asp:Button ID="probutton" CssClass=" w3-btn w3-dark-grey w3-round-large" style="font-family:Segoe UI Light" 
        runat="server" Height="37px"
        Width="49px" Text="GO" onclick="probutton_Click" />

&nbsp;


    <asp:Label ID="follow" runat="server" CssClass="w3-text-white w3-large w3-right-align" style="font-family: Segoe UI Light" Text="Follow Us On!"></asp:Label>
    <a href="#" class=" w3-hover-text-indigo w3-show-inline-block w3-right-align"><i class="fa fa-facebook-official w3-xlarge"></i></a>
    <a href="#" class=" w3-hover-text-purple w3-show-inline-block w3-right-align"><i class="fa fa-instagram  w3-xlarge"></i></a>
    <a href="#" class=" w3-hover-text-yellow w3-show-inline-block w3-right-align"><i class="fa fa-snapchat  w3-xlarge"></i></a>
    <a href="#" class=" w3-hover-text-red w3-show-inline-block w3-right-align"><i class="fa fa-pinterest-p  w3-xlarge"></i></a>
    <a href="#" class=" w3-hover-text-light-blue w3-show-inline-block w3-right-align"><i class="fa fa-twitter  w3-xlarge"></i></a>
    <a href="#" class=" w3-hover-text-indigo w3-show-inline-block w3-right-align"><i class="fa fa-linkedin  w3-xlarge"></i></a>
 
     <button class=" w3-right-align btn w3-blue w3-round-large w3-card-2 text-white " type="button" data-toggle="modal"  data-target="#prp">Subscribe</button> 


      <!--subscribe modal-->

    
    <br />
    <br />
   





</div> 
  
                   
<!--header blue background div tag (end)-->

<div class="w3-padding-32"></div>
<div class=" w3-padding-16">
    <a  class="btn btn-outline-danger text-red w3-hover-text-white w3-medium " style="border-width:medium; font-size:larger;" href="intelprocessor.aspx">Back</a>
</div>


    <asp:Label ID="Error_Mess" runat="server" Text=""></asp:Label>


       
       
        
    <asp:DataList ID="DataList1" runat="server" BackColor="White" 
        BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
         GridLines="Both">
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <ItemStyle BackColor="White" ForeColor="#003399" />
        <ItemTemplate>
            Every_id:
            <asp:Label ID="Every_idLabel" runat="server" Text='<%# Eval("Every_id") %>' />
            <br />
            Processor_id:
            <asp:Label ID="Processor_idLabel" runat="server" 
                Text='<%# Eval("Processor_id") %>' />
            <br />
            Intels_id:
            <asp:Label ID="Intels_idLabel" runat="server" Text='<%# Eval("Intels_id") %>' />
            <br />
            Detailed_type_id:
            <asp:Label ID="Detailed_type_idLabel" runat="server" 
                Text='<%# Eval("Detailed_type_id") %>' />
            <br />
            Model:
            <asp:Label ID="ModelLabel" runat="server" Text='<%# Eval("Model") %>' />
            <br />
            Core:
            <asp:Label ID="CoreLabel" runat="server" Text='<%# Eval("Core") %>' />
            <br />
            HT:
            <asp:Label ID="HTLabel" runat="server" Text='<%# Eval("HT") %>' />
            <br />
            Base_Clock:
            <asp:Label ID="Base_ClockLabel" runat="server" Text='<%# Eval("Base_Clock") %>' />
            <br />
            Boost:
            <asp:Label ID="BoostLabel" runat="server" Text='<%# Eval("Boost") %>' />
            <br />
            Cache:
            <asp:Label ID="CacheLabel" runat="server" Text='<%# Eval("Cache") %>' />
            <br />
            TDP:
            <asp:Label ID="TDPLabel" runat="server" Text='<%# Eval("TDP") %>' />
            <br />
            Socket:
            <asp:Label ID="SocketLabel" runat="server" Text='<%# Eval("Socket") %>' />
            <br />
            Onboard_Graphics:
            <asp:Label ID="Onboard_GraphicsLabel" runat="server" 
                Text='<%# Eval("Onboard_Graphics") %>' />
            <br />
            Motherboard_price_factor:
            <asp:Label ID="Motherboard_price_factorLabel" runat="server" 
                Text='<%# Eval("Motherboard_price_factor") %>' />
            <br />
            Architecture:
            <asp:Label ID="ArchitectureLabel" runat="server" 
                Text='<%# Eval("Architecture") %>' />
            <br />
            image1:
            <asp:Label ID="image1Label" runat="server" Text='<%# Eval("image1") %>' />
            <br />
<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
    </asp:DataList>
       
    </form>
</body>
</html>
