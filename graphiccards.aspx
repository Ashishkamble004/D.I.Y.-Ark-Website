<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="graphiccards.aspx.cs" Inherits="FinalProject.graphiccards" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title> Graphic Ark (Nvidia & AMD collection)</title>
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


<style type="text/css">
    #btn12:hover 
    {
        border-bottom-color:Aqua;
        border-width:medium;
        position:fixed;
        
    }
     #btn23:hover 
    {
        border-bottom-color:Aqua;
        border-width:medium;
         position:fixed;
    }
     #btn34:hover 
    {
        border-bottom-color:Aqua;
        border-width:medium;
         position:fixed;
    }
    #mysidenav
    {
       opacity:0.5;
    }

</style>

















</head>
<body>
<form id="Form1" runat="server" visible="true">
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

<div class=" w3-top w3-row w3-container w3-padding-16 bg-success ">



 


 <!--The Side NAV -->
<div class="w3-overlay w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" id="myOverlay"></div>


    <div class="w3-col "style="width:33%; margin-top: 0px;">
    <span class="w3-opennav  w3-xxlarge" onclick="w3_open()">&#9776;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
   
    <asp:Label ID="title" runat="server" 
        CssClass="w3-accordion  w3-text-white w3-xlarge  w3-label w3-centered " 
        style="font-family:Segoe UI Light;" Height="0px" 
        Text="Graphic" Width="80px"></asp:Label>
    <asp:Label ID="Label2" runat="server" 
        CssClass="w3-accordion  w3-text-white w3-xlarge  w3-label w3-centered " 
        style="font-family:Segoe UI Light;" Height="0px" 
        Text="Cards " Width="60px"></asp:Label>
    <asp:Label ID="Label1" runat="server" 
        CssClass="w3-accordion  w3-text-white w3-xlarge  w3-label w3-centered " 
        style="font-family:Segoe UI Light;" Height="0px" 
        Text="Ark" Width="88px"></asp:Label>
    </div>  
 <!--SIDE NAV ENDS HERE-->   


 
 <!--SEARCH BOX-->
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:graphicstring %>" 
        
        SelectCommand="SELECT [Models] FROM [AllModels] WHERE ([Models] LIKE '%' + @Models + '%')">
        <SelectParameters>
            <asp:Parameter Name="Models" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>   
 

   

    
    <asp:TextBox ID="gtext" runat="server" 
        CssClass="w3-input w3-border-green w3-centered w3-half text-success w3-hover-shadow w3-col w3-round-large " 
        placeholder="Search By Product Name..." Width="398px" style="margin-top: 0px;"></asp:TextBox>
    <asp:Button ID="gbutton" CssClass=" btn btn-success w3-round-large w3-card-2" style="font-family:Segoe UI Light" 
        runat="server" Height="37px"
        Width="49px" Text="GO" OnClick="gbutton_Click" />

    &nbsp;


    <asp:Label ID="follow" runat="server" CssClass="w3-text-white w3-large w3-right-align" style="font-family: Segoe UI Light" Text="Follow Us On!"></asp:Label>
    <a href="#" class=" w3-hover-text-indigo w3-text-white w3-show-inline-block w3-right-align"><i class="fa fa-facebook-official w3-xlarge"></i></a>
    <a href="#" class=" w3-hover-text-purple w3-text-white w3-show-inline-block w3-right-align"><i class="fa fa-instagram  w3-xlarge"></i></a>
    <a href="#" class=" w3-hover-text-yellow w3-text-white w3-show-inline-block w3-right-align"><i class="fa fa-snapchat  w3-xlarge"></i></a>
    <a href="#" class=" w3-hover-text-red w3-text-white w3-show-inline-block w3-right-align"><i class="fa fa-pinterest-p  w3-xlarge"></i></a>
    <a href="#" class=" w3-hover-text-light-blue w3-text-white w3-show-inline-block w3-right-align"><i class="fa fa-twitter  w3-xlarge"></i></a>
    <a href="#" class=" w3-hover-text-indigo w3-text-white w3-show-inline-block w3-right-align"><i class="fa fa-linkedin  w3-xlarge"></i></a>
 
    <button class=" w3-right-align btn btn-success w3-round-large w3-card-2 text-white " type="button" data-toggle="modal"  data-target="#gp">Subscribe</button> 
   
 
 
        
    









    
    <br />
    <br />
   





</div> 
 
<!--header blue background div tag (end)-->

<div class="w3-padding-32"></div>
<div class=" w3-padding-16"></div>
<%--Dropdown will be here, if possible,--%> 










<!--dropdown starts starts-->
     <div class="navbtn btn-toolbar w3-dark-grey w3-large w3-round-medium">
                            <ul class="nav ">
                                    <li class="w3-dark-grey">
                                        <a class="w3-dark-grey w3-hover-text-green nav-link " href="Homepage.aspx">Home</a>
                                    </li>
                                      <li class="w3-dark-grey">
                                            <a class="w3-dark-grey w3-hover-text-green nav-link" href="intelprocessor.aspx">Processor Ark</a>
                                      </li>
                                    <li class="bg-success">
                                           <a class="bg-success w3-hover-text-green nav-link" href="graphiccards.aspx">Graphic cards</a>
                                      </li>
                                    <li class="w3-dark-grey ">
                                            <a class="w3-dark-grey w3-hover-text-green nav-link" href="corsair.aspx">Memory Collection</a>
                                    </li>
                                    <li class=" w3-dark-grey ">
                                            <a class="w3-dark-grey w3-hover-text-red" href="intelssd.aspx">SSD Collection</a>
                                    </li>
                                     <li class=" w3-dark-grey ">
                                            <a class="w3-dark-grey w3-hover-text-green nav-link" href="About.aspx">About Us</a>
                                    </li>
                                     <li class=" w3-dark-grey ">
                                            <a class="w3-dark-grey w3-hover-text-green nav-link" href="forum.aspx">D.I.Y Forum</a>
                                    </li>
                                    
                            </ul>
    </div>

<!--THE FILTER DIV TAG SECTION-->
 <div>
    <div class="w3-col w3-card-4" style="width:27%;">  
        <div>
            <div style="width:100%">
                 <div>
                    <p class=" w3-responsive w3-xlarge text-success text-center text-capitalize" style="font-family:Segoe UI">Filter:</p>
                </div>
                 <hr class="w3-green" style="height:2px" />
                <div style="height:5px"></div>
                <div>
                    <div id="BrandFN">
                    <asp:Label ID="Label9" runat="server" class=" w3-responsive w3-padding w3-large " style="font-family:Segoe UI" Text="Brand" />
                    &nbsp;<a id="BrandAWD" href="#" class=" offset-sm-8"><span class="glyphicon glyphicon-chevron-down"></span></a>
                 <hr class="w3-green" style="height:2px" />
                </div>
                    <div id="BrandFP" class="w3-leftbar w3-rightbar w3-border-green" style="height:auto">   
                        <br /><asp:RadioButton ID="Brand_Cb1" runat="server" Text="NVIDIA Graphic Cards" GroupName="Brand" />
                        <br /><asp:RadioButton ID="Brand_Cb2" runat="server" Text="AMD Graphic Cards" GroupName="Brand" />
                        <br /><div id="BrandAWU"><a href="#" class=" offset-md-11"><span class="glyphicon glyphicon-chevron-up"></span></a></div>
                </div>
                </div>
                
                <div class="NVIDIA_GRAPHIC">
                    <div style="height:15px"></div>
                    <div class="">
                        <div id="NSeriesFN">
                        <asp:Label ID="Label8" runat="server" class=" w3-responsive w3-padding w3-large" style="font-family:Segoe UI" Text="Series" />
                        &nbsp;<a id="NSeriesAWD" href="#" class=" offset-sm-8"><span class="glyphicon glyphicon-chevron-down"></span></a>
                    <hr class="w3-green" style="height:2px" />
                    </div>
                        <div id="NSeriesFP" class="w3-leftbar w3-rightbar w3-border-green" style="height:auto">
                        <br /><asp:RadioButton ID="NS_Cb1" runat="server" Text="GeForce GTX Series" style="font-family:Segoe UI" GroupName="Series" />
                              
                        <br /><asp:RadioButton ID="NS_Cb2" runat="server" Text="GeForce GT series" style="font-family:Segoe UI" GroupName="Series" />
                              
                        <br /><asp:RadioButton ID="NS_Cb3" runat="server" Text="GeForce Series" style="font-family:Segoe UI" GroupName="Series" />
                              
                        <br /><div id="NSeriesAWU"><a href="#" class=" offset-md-11"><span class="glyphicon glyphicon-chevron-up"></span></a></div>
                    </div>
                    </div>

                    <div style="height:15px"></div>
                    <div class="">
                        <div id="NInterWidthFN">
                        <asp:Label ID="Label11" runat="server" class=" w3-responsive w3-padding w3-large " style="font-family:Segoe UI" Text="Interface Width" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;
                        <a id="NInterWidthAWD" href="#" class=""><span class="glyphicon glyphicon-chevron-down"></span></a>
                     <hr class="w3-green" style="height:2px" />
                    </div>
                        <div id="NInterWidthFP" class="w3-leftbar w3-rightbar w3-border-green" style="height:auto">
                        <br /><div id="NIW_D1"><asp:RadioButton ID="NIW_Cb1" runat="server" Text="64 bits" GroupName="InterWidth" /></div>
                        <div id="NIW_D2"><asp:RadioButton ID="NIW_Cb2" runat="server" Text="128 bits" style="font-family:Segoe UI" GroupName="InterWidth" /></div>
                        <div id="NIW_D3"><asp:RadioButton ID="NIW_Cb3" runat="server" Text="192 bits" style="font-family:Segoe UI" GroupName="InterWidth" /></div>
                        <div id="NIW_D4"><asp:RadioButton ID="NIW_Cb4" runat="server" Text="256 bits" style="font-family:Segoe UI" GroupName="InterWidth" /></div>
                        <div id="NInterWidthAWU"><a href="#" class=" offset-md-11"><span class="glyphicon glyphicon-chevron-up"></span></a></div>
                    </div>
                    </div>

                    <div style="height:15px"></div>
                    <div class="">
                        <div id="NStandMemoConfFN">
                        <asp:Label ID="Label13" runat="server" class=" w3-responsive w3-padding w3-large " style="font-family:Segoe UI" Text="Standard Memory Configration" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a id="NStandMemoConfAWD" href="#" class=""><span class="glyphicon glyphicon-chevron-down"></span></a>
                     <hr class="w3-green" style="height:2px" />
                    </div>
                        <div id="NStandMemoConfFP" class="w3-leftbar w3-rightbar w3-border-green" style="height:auto">
                        <br /><div id="NStdMC_D1"><asp:RadioButton ID="NStdMC_Cb1" runat="server" Text="512 MB" GroupName="StandMemoConf" /></div>
                        <div id="NStdMC_D2"><asp:RadioButton ID="NStdMC_Cb2" runat="server" Text="1 GB" style="font-family:Segoe UI" GroupName="StandMemoConf"/></div>
                        <div id="NStdMC_D3"><asp:RadioButton ID="NStdMC_Cb3" runat="server" Text="2 GB" style="font-family:Segoe UI" GroupName="StandMemoConf"/></div>
                        <div id="NStdMC_D4"><asp:RadioButton ID="NStdMC_Cb4" runat="server" Text="3 GB" style="font-family:Segoe UI" GroupName="StandMemoConf"/></div>
                        <div id="NStdMC_D5"><asp:RadioButton ID="NStdMC_Cb5" runat="server" Text="4 GB" style="font-family:Segoe UI" GroupName="StandMemoConf"/></div>
                        <div id="NStdMC_D6"><asp:RadioButton ID="NStdMC_Cb6" runat="server" Text="6 GB" style="font-family:Segoe UI" GroupName="StandMemoConf"/></div>
                        <div id="NStdMC_D7"><asp:RadioButton ID="NStdMC_Cb7" runat="server" Text="8 GB" style="font-family:Segoe UI" GroupName="StandMemoConf"/></div>
                        <div id="NStandMemoConfAWU"><a href="#" class=" offset-md-11"><span class="glyphicon glyphicon-chevron-up"></span></a></div>                        
                    </div>
                    </div> 
                </div>   <%--NVIDIA_GRAPHIC Filters Panels--------------------------------------------------%>
                   
                <div class="AMD_GRAPHIC">
                    <div style="height:15px"></div>
                    <div class="">
                        <div id="ASeriesFN">
                        <asp:Label ID="Lb5" runat="server" class=" w3-responsive w3-padding w3-large " style="font-family:Segoe UI" Text="Series" />
                <a id="ASeriesAWD" href="#" class=" offset-lg-8"><span class="glyphicon glyphicon-chevron-down"></span></a>
                    <hr class="w3-red" style="height:2px" />
                    </div>
                        <div id="ASeriesFP" class="w3-leftbar w3-rightbar w3-border-red" style="height:auto">
                        <br /><asp:RadioButton ID="AS_Cb1" runat="server" Text="AMD Radeon R9 Series" style="font-family:Segoe UI" GroupName="Series" />
                              
                        <br /><asp:RadioButton ID="AS_Cb2" runat="server" Text="AMD Radeon R7 series" style="font-family:Segoe UI" GroupName="Series" />
                              
                        <br /><asp:RadioButton ID="AS_Cb3" runat="server" Text="AMD Radeon R5 Series" style="font-family:Segoe UI" GroupName="Series" />
                              
                        <br /><asp:RadioButton ID="AS_Cb4" runat="server" Text="Radeon Pro Duo" style="font-family:Segoe UI" GroupName="Series" />

                        <br /><asp:RadioButton ID="AS_Cb5" runat="server" Text="AMD Radeon HD 7000 Series" style="font-family:Segoe UI" GroupName="Series" />
                            
                        <br /><div id="ASeriesAWU"><a href="#" class=" offset-md-11"><span class="glyphicon glyphicon-chevron-up"></span></a></div>
                    </div>
                    </div>

                    <div style="height:15px"></div>
                    <div class="">
                        <div id="ASubseriesFN">
                        <asp:Label ID="lb6" runat="server" class=" w3-responsive w3-padding w3-large " style="font-family:Segoe UI" Text="Sub-Series" />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <a id="ASubseriesAWD" href="#" class=""><span class="glyphicon glyphicon-chevron-down"></span></a>
                    <hr class="w3-red" style="height:2px" />
                    </div>
                        <div id="ASubseriesFP" class="w3-leftbar w3-rightbar w3-border-red" style="height:auto">
                        <br /><div id="ASubS_D1"><asp:RadioButton ID="ASubS_Cb1" runat="server" Text="R9 200 Series" style="font-family:Segoe UI" GroupName="SubSeries"/></div>
                              
                        <div id="ASubS_D2"><asp:RadioButton ID="ASubS_Cb2" runat="server" Text="R9 300 Series" style="font-family:Segoe UI" GroupName="SubSeries" /></div>
                              
                        <div id="ASubS_D3"><asp:RadioButton ID="ASubS_Cb3" runat="server" Text="R9 FURY Series" style="font-family:Segoe UI" GroupName="SubSeries" /></div>
                              
                        <div id="ASubS_D4"><asp:RadioButton ID="ASubS_Cb4" runat="server" Text="R9 NANO" style="font-family:Segoe UI" GroupName="SubSeries" /></div>
                              
                        <div id="ASubS_D5"><asp:RadioButton ID="ASubS_Cb5" runat="server" Text="R7 200 Series" style="font-family:Segoe UI" GroupName="SubSeries" /></div>
                              
                        <div id="ASubS_D6"><asp:RadioButton ID="ASubS_Cb6" runat="server" Text="R7 300 Series" style="font-family:Segoe UI" GroupName="SubSeries" /></div>

                        <div id="ASubS_D7"><asp:RadioButton ID="ASubS_Cb7" runat="server" Text="AMD Radeon HD 7990" style="font-family:Segoe UI" GroupName="SubSeries" /></div>

                        <div id="ASubS_D8"><asp:RadioButton ID="ASubS_Cb8" runat="server" Text="AMD Radeon HD 7900" style="font-family:Segoe UI" GroupName="SubSeries" /></div>

                        <div id="ASubS_D9"><asp:RadioButton ID="ASubS_Cb9" runat="server" Text="AMD Radeon HD 7800" style="font-family:Segoe UI" GroupName="SubSeries" /></div>

                        <div id="ASubS_D10"><asp:RadioButton ID="ASubS_Cb10" runat="server" Text="AMD Radeon HD 7700" style="font-family:Segoe UI" GroupName="SubSeries" /></div>

                              
                        <div id="ASubS_D0"><p class=" w3-responsive w3-large text-danger" style="font-family:MS Sans-Serif">No Sub-Series Available for above Selected Series..</p></div>
                        <div id="ASubseriesAWU"><a href="#" class=" offset-md-11"><span class="glyphicon glyphicon-chevron-up"></span></a></div>
                    </div>
                    </div>

                    <div style="height:15px"></div>
                    <div class="">
                        <div id="AGPUClockFN">
                        <asp:Label ID="Label5" runat="server" class=" w3-responsive w3-padding w3-large " style="font-family:Segoe UI" Text="GPU Clock Speed" />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <a id="AGPUClockAWD" href="#" class=""><span class="glyphicon glyphicon-chevron-down"></span></a>
                     <br />
              
                    <asp:TextBox ID="speed" runat="server" style = "border:0; font-weight:bold;" Enabled="False" BackColor="White"></asp:TextBox>
                 <div id = "slider-3"></div>



                   <hr class="w3-red" style="height:2px" />
                    </div>
                        <div id="AGPUClockFP" class="w3-leftbar w3-rightbar w3-border-red" style="height:auto">
                        <asp:Label ID="Label7" runat="server" Text="demo"></asp:Label>
                        <div id="AGPUClockAWU"><a href="#" class=""><span class="glyphicon glyphicon-chevron-up"></span></a></div>
                    </div>
                    </div>

                    <div style="height:15px"></div>
                    <div class="">
                        <div id="AMemoAmtFN">
                        <asp:Label ID="Label6" runat="server" class=" w3-responsive w3-padding w3-large " style="font-family:Segoe UI" Text="Memory Amount" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <a id="AMemoAmtAWD" href="#" class=""><span class="glyphicon glyphicon-chevron-down"></span></a>
                    <hr class="w3-red" style="height:2px" />
                    </div>
                        <div id="AMemoAmtFP" class="w3-leftbar w3-rightbar w3-border-red" style="height:auto">
                        <br /><div id="AMemoAmt_D1"><asp:RadioButton ID="AMemoAmt_Cb1" runat="server" Text="1 GB" style="font-family:Segoe UI" GroupName="MemoAmt" /></div>
                        <div id="AMemoAmt_D2"><asp:RadioButton ID="AMemoAmt_Cb2" runat="server" Text="2 GB" style="font-family:Segoe UI" GroupName="MemoAmt"/></div>
                        <div id="AMemoAmt_D3"><asp:RadioButton ID="AMemoAmt_Cb3" runat="server" Text="3 GB" style="font-family:Segoe UI" GroupName="MemoAmt"/></div>
                        <div id="AMemoAmt_D4"><asp:RadioButton ID="AMemoAmt_Cb4" runat="server" Text="4 GB" style="font-family:Segoe UI" GroupName="MemoAmt"/></div>
                        <div id="AMemoAmt_D5"><asp:RadioButton ID="AMemoAmt_Cb5" runat="server" Text="6 GB" style="font-family:Segoe UI" GroupName="MemoAmt"/></div>
                        <div id="AMemoAmt_D6"><asp:RadioButton ID="AMemoAmt_Cb6" runat="server" Text="8 GB" style="font-family:Segoe UI" GroupName="MemoAmt"/></div>
                        <div id="AMemoAmtAWU"><a href="#" class=" offset-md-11"><span class="glyphicon glyphicon-chevron-up"></span></a></div>
                    </div>
                    </div>
                </div>    <%--AMD_GRAPHIC Filters Panels--------------------------------------------------%>    
            </div>
        </div>
        <br /><br />
        <div class="AMD_GRAPHIC">
            <div class=" offset-sm-3">
        <asp:Button ID="AFilter_Sub_Btn" runat="server" 
                CssClass="w3-left-align btn btn-outline-danger w3-round-large " 
                style="border-width:medium; font-size:larger;" Text="Apply" onclick="AFilter_Sub_Btn_Click" 
                 />
        &nbsp; <a  class="w3-right-align btn btn-outline-warning w3-round-large " style="border-width:medium; font-size:larger;" href="graphiccards.aspx">Cancel</a>
        </div>
        </div>    <%--AMD_GRAPHIC filter button-----------------------------------------------------------%>
        
        <div class="NVIDIA_GRAPHIC">
            <div class=" offset-sm-3">
        <asp:Button ID="NFilter_Sub_Btn" runat="server" 
                CssClass="w3-left-align btn btn-outline-success w3-round-large " 
                style="border-width:medium; font-size:larger;" Text="Apply" onclick="NFilter_Sub_Btn_Click" 
                 />
        &nbsp; <a  class="w3-right-align btn btn-outline-danger w3-round-large " style="border-width:medium; font-size:larger;" href="graphiccards.aspx">Cancel</a>
        </div>
        </div>   <%--NVIDIA_GRAPHIC filter button-----------------------------------------------------------%>
    </div>


 
 

 <div class="w3-col w3-card" style="width:2%;">
        <!--for space dont do anything here-->
        </div>







<!--ALL Graphic INFO DETAIL START-->
        <div class="w3-col " style="width:69%">
      
  





      <!--Graphic INFO START-->
    <div class="w3-row" >
    <div class="page-header">
        <h3 class="text-success w3-xlarge" style="font-family:Segoe UI Light">NVIDIA Series   <span class="fa fa-angle-down"></span></h3>
    </div>
         <!--Heading-->    <div class="w3-row w3-xlarge w3-text-green" style="font-family:Segoe UI Light">GTX series
         
          &nbsp;&nbsp;
          <asp:Button ID="gtxseries" runat="server" 
                CssClass="w3-right-align btn w3-green w3-round-large w3-card-2 text-white " 
                Text="View All" onclick="gtxseries_Click" />
         <span class=" fa fa-arrow-circle-right"></span>
         
         </div>








         <div class="w3-row w3-hover-shadow w3-card-4" >
            <div class="w3-col w3-accordion w3-hover-shadow w3-center  w3-border w3-hover-border-green "  style="width:25%">
            <img src="nvidiagtx1080.jpeg" alt=""  style="height:120px ; width:105px"/><br />
                <div>
              
                    <br />
                    <asp:Table ID="gTable1" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                        <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-green " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">GeForce GTX 1080</asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-green " style="font-family:Segoe UI Light">Base Clock: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">1607 MHz</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-green " style="font-family:Segoe UI Light">Supported Technology: </asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light">SLI, CUDA, 3D Vision,  GPU Boost 2.0, GameStream, DirectX 12, Virtual Reality, Ansel</asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-green " style="font-family:Segoe UI Light">Boost:</asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">1733</asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />

                  


                    <asp:Button ID="btn1" runat="server" 
                    CssClass="  btn w3-green w3-round-large w3-card-2 text-white " 
                        Text="See Full Specs" onclick="btn1_Click"  />
                        <br />
                </div>
           </div>



















           <div class="w3-col w3-accordion w3-hover-shadow w3-center  w3-border w3-hover-border-green "  style="width:25%">
            <img src="msi.jpeg" alt=""  style="height:120px ; width:105px"/><br />
                <div>
              
                    <br />
                    <asp:Table ID="gTable2" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                        <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-green " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">GeForce GTX 1070</asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-green " style="font-family:Segoe UI Light">Base Clock: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">1506 MHz</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-green " style="font-family:Segoe UI Light">Supported Technology:</asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light">SLI, CUDA, 3D Vision, G-SYNC, GameStream, DirectX 12, Virtual Reality, Ansel</asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-green " style="font-family:Segoe UI Light">Boost:</asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">1683 MHz</asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />

                  


                    <asp:Button ID="gButton1" runat="server" 
                    CssClass="  btn w3-green w3-round-large w3-card-2 text-white " 
                        Text="See Full Specs" onclick="gButton1_Click"  />
                        <br />
                </div>
           </div>

           
            <div class="w3-col w3-accordion w3-hover-shadow w3-center  w3-border w3-hover-border-green "  style="width:25%">
            <img src="msi2.jpeg" alt=""  style="height:120px ; width:105px"/><br />
                <div>
              
                    <br />
                    <asp:Table ID="gTable3" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                        <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-green " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">GeForce GTX 1060</asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-green " style="font-family:Segoe UI Light">Base Clock: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">1506 MHz</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-green " style="font-family:Segoe UI Light">Supported Technology: </asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light">CUDA, 3D Vision,  Surround, MFAA, DSR, DirectX 12, Virtual Reality, Ansel</asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-green " style="font-family:Segoe UI Light">Boost:</asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">1708 MHz</asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />

                  


                    <asp:Button ID="gButton2" runat="server" 
                    CssClass=" btn w3-green w3-round-large w3-card-2 text-white " 
                        Text="See Full Specs" onclick="gButton2_Click"  />
                        <br />
                </div>
           </div>
          

           <div class="w3-col w3-accordion w3-hover-shadow w3-center  w3-border w3-hover-border-green "  style="width:25%">
            <img src="nvidia1050ti.jpeg" alt=""  style="height:120px ; width:105px"/><br />
                <div>
              
                    <br />
                    <asp:Table ID="gTable4" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                        <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-green " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">GeForce GTX 1050 Ti</asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-green " style="font-family:Segoe UI Light">Base Clock: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">1290 MHz</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-green " style="font-family:Segoe UI Light">Supported Technology:</asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light">CUDA, 3D Vision, PhysX, Ansel, GPU Boost 2.0, G-SYNC,,  GameStream</asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-green " style="font-family:Segoe UI Light">boost:</asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">1392 MHz </asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />

                  


                    <asp:Button ID="gButton3" runat="server" 
                    CssClass=" btn w3-green w3-round-large w3-card-2 text-white " 
                        Text="See Full Specs" onclick="gButton3_Click"  />
                        <br />
                </div>
           </div>

 </div> 
      
          
 




 <br />

    <!-- i5 SERIES SECTION Graphic INFO --->
       <div class="w3-row" >
         <!--Heading-->    <div class="w3-row w3-xlarge w3-text-green  " style="font-family:Segoe UI Light">GeForce Series
          &nbsp;&nbsp;
          <asp:Button ID="geforceseries" runat="server" 
                   CssClass="w3-right-align btn w3-green w3-round-large w3-card-2 text-white " 
                   Text="View All" onclick="geforceseries_Click" />
         <span class=" fa fa-arrow-circle-right"></span>
         
         
         </div>

         <div class="w3-row w3-hover-shadow w3-card-4" >
            <div class="w3-col w3-accordion w3-hover-shadow w3-center  w3-border w3-hover-border-green "  style="width:25%">
            <img src="nvidia710.jpeg" alt=""  style="height:120px ; width:105px"/><br />
                <div>
              
                    <br />
                    <asp:Table ID="gTable5" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                        <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-green " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">GeForce GT 740</asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-green " style="font-family:Segoe UI Light">Base Clock:</asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">993 MHz</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-green " style="font-family:Segoe UI Light">Supported Technology:</asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light"> CUDA, 3D Vision, PhysX, TXAA, Adaptive VSync, DirectX 12</asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-green " style="font-family:Segoe UI Light">Boost:</asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">N/A </asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />

                  


                    <asp:Button ID="gButton4" runat="server" 
                    CssClass=" btn w3-green w3-round-large w3-card-2 text-white " 
                        Text="See Full Specs" onclick="gButton4_Click"  />
                        <br />
                </div>
           </div>


            <div class="w3-col w3-accordion w3-hover-shadow w3-center  w3-border w3-hover-border-green "  style="width:25%">
            <img src="nvidia710.jpeg" alt=""  style="height:120px ; width:105px"/><br />
                <div>
              
                    <br />
                    <asp:Table ID="gTable6" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                        <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-green " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">GeForce GT 730-128 bits</asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-green " style="font-family:Segoe UI Light">Base Clock: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">700 MHz</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-green " style="font-family:Segoe UI Light">Supported Technology::</asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light"> CUDA, PhysX, FXAA, DirectX 12, Adaptive VSync, 3D Vision</asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-green " style="font-family:Segoe UI Light">Boost:</asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">N/A </asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />

                  


                    <asp:Button ID="gButton5" runat="server" 
                    CssClass=" btn w3-green w3-round-large w3-card-2 text-white " 
                        Text="See Full Specs" onclick="gButton5_Click"  />
                        <br />
                </div>
           </div>
           
        <div class="w3-col w3-accordion w3-hover-shadow w3-center  w3-border w3-hover-border-green "  style="width:25%">
            <img src="nvidia710.jpeg" alt=""  style="height:120px ; width:105px"/><br />
                <div>
              
                    <br />
                    <asp:Table ID="gTable7" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                        <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-green " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">GeForce GT 720 - DDR3</asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-green " style="font-family:Segoe UI Light">Base Clock: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">797 MHz</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-green " style="font-family:Segoe UI Light">Supported Technology: </asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light">CUDA, FXAA, 3D Vision, PhysX, Adaptive VSync, DirectX 12 </asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-green " style="font-family:Segoe UI Light">Boost:</asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">N/A </asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />

                  


                    <asp:Button ID="gButton6" runat="server" 
                    CssClass=" btn w3-green w3-round-large w3-card-2 text-white " 
                        Text="See Full Specs" onclick="gButton6_Click"  />
                        <br />
                </div>
           </div>
          <div class="w3-col w3-accordion w3-hover-shadow w3-center  w3-border w3-hover-border-green "  style="width:25%">
            <img src="nvidia710.jpeg" alt=""  style="height:120px ; width:105px"/><br />
                <div>
              
                    <br />
                    <asp:Table ID="gTable8" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                        <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-green " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">GeForce GT 610</asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-green " style="font-family:Segoe UI Light">Base Clock: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">810 MHz</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-green " style="font-family:Segoe UI Light">Supported Technology: </asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light"> CUDA,3D Vision, FXAA, PhysX, Adaptive VSync, DirectX 12</asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-green " style="font-family:Segoe UI Light">Boost:</asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">1620 MHz</asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />

                  


                    <asp:Button ID="gButton7" runat="server" 
                    CssClass=" btn w3-green w3-round-large w3-card-2 text-white " 
                        Text="See Full Specs" onclick="gButton7_Click"  />
                        <br />
                </div>
           </div>

  </div>
  
  
          <!--  SERIES SECTION Graphic INFO --->
       <div class="w3-row" >
        <div class="page-header">
              <h3 class="text-danger w3-xlarge" style="font-family:Segoe UI Light">AMD Series   <span class="fa fa-angle-down"></span></h3>
        </div>
         <!--Heading-->    <div class="w3-row w3-xlarge w3-text-red" style="font-family:Segoe UI Light">Radeon R9 Series
          &nbsp;&nbsp;
          <asp:Button ID="RDS" runat="server" 
                   CssClass="w3-right-align btn w3-red w3-round-large w3-card-2 text-white " 
                   Text="View All" onclick="RDS_Click"/>
         <span class=" fa fa-arrow-circle-right"></span>
         
         
         
         </div>
          <div class="w3-row w3-hover-shadow w3-card-4" >
         <div class="w3-col w3-accordion w3-hover-shadow w3-center  w3-border w3-hover-border-red "  style="width:25%">
            <img src="amd2.jpg" alt=""  style="height:120px ; width:105px"/><br />
                <div>
              
                    <br />
                    <asp:Table ID="gTable9" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                        <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">R9 290X</asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Base Clock: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">Up to 1000 MHz</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Memory Bandwidth:</asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light">Up to 352 GB/s </asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Memory Amount:</asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">Up to 8GB GDDR5 </asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />

                  


                    <asp:Button ID="gButton8" runat="server" 
                    CssClass="btn w3-red w3-round-large w3-card-2 text-white " 
                        Text="See Full Specs" onclick="gButton8_Click" />
                        <br />
                </div>
           </div>


           <div class="w3-col w3-accordion w3-hover-shadow w3-center  w3-border w3-hover-border-red "  style="width:25%">
            <img src="amd2.jpg" alt=""  style="height:120px ; width:105px"/><br />
                <div>
              
                    <br />
                    <asp:Table ID="gTable10" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                        <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">R9 280X</asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Base Clock:</asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">Up to 918  MHz</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Memory Bandwidth:</asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light">Up to 176 GB/s </asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Memory Amount:</asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">Up to 4GB GDDR5 </asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />

                  


                    <asp:Button ID="gButton9" runat="server" 
                    CssClass="btn w3-red w3-round-large w3-card-2 text-white " 
                        Text="See Full Specs" onclick="gButton9_Click" />
                        <br />
                </div>
           </div>
           
       <div class="w3-col w3-accordion w3-hover-shadow w3-center  w3-border w3-hover-border-red "  style="width:25%">
            <img src="amd2.jpg" alt=""  style="height:120px ; width:105px"/><br />
                <div>
              
                    <br />
                    <asp:Table ID="gTable11" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                        <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">R9 270X</asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Base Clock:</asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">Up to 1050 MHz</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Memory Bandwidth:</asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light"> Up to 179.2 GBP/s</asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Memory Amount:</asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">Up to 4GB GDDR5 </asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />

                  


                    <asp:Button ID="gButton10" runat="server" 
                    CssClass=" btn w3-red w3-round-large w3-card-2 text-white " 
                        Text="See Full Specs" onclick="gButton10_Click" />
                        <br />
                </div>
           </div>
          
            <div class="w3-col w3-accordion w3-hover-shadow w3-center  w3-border w3-hover-border-red "  style="width:25%">
            <img src="amd2.jpg" alt=""  style="height:120px ; width:105px"/><br />
                <div>
              
                    <br />
                    <asp:Table ID="gTable12" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                        <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">R9 390X</asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Base Clock:</asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">Up to 1050 MHz</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Memory Bandwidth:</asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light"> Up to 384 GB/s</asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Memory Amount:</asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">8GB GDDR5 </asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />

                  


                    <asp:Button ID="gButton11" runat="server" 
                    CssClass="btn w3-red w3-round-large w3-card-2 text-white " 
                        Text="See Full Specs" onclick="gButton11_Click"  />
                        <br />
                </div>
           </div>
       </div>
       </div>
  <br />
  <div class="w3-row w3-xlarge w3-text-red" style="font-family:Segoe UI Light">Radeon R7 Series
  &nbsp;&nbsp;
  <asp:Button ID="r7series" runat="server" 
          CssClass="w3-right-align btn w3-red w3-round-large w3-card-2 text-white " 
          Text="View All" onclick="r7series_Click"  />
         <span class=" fa fa-arrow-circle-right"></span>
  
  
  </div>
         <div class="w3-row w3-hover-shadow w3-card-4" >
         <div class="w3-col w3-accordion w3-hover-shadow w3-center  w3-border w3-hover-border-red"  style="width:25%">
            <img src="amd2.jpg" alt=""  style="height:120px ; width:105px"/><br />
                <div>
              
                    <br />
                    <asp:Table ID="Table1" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                        <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">R7 265</asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Base Clock:</asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">Up to 925 MHz</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Memory Bandwidth:</asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light">Up to 179.2 GB/s </asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Memory Amount:</asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">Up to 2GB GDDR5 </asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />

                  


                    <asp:Button ID="Button1" runat="server" 
                    CssClass="btn w3-red w3-round-large w3-card-2 text-white " 
                        Text="See Full Specs" onclick="Button1_Click"  />
                        <br />
                </div>
           </div>


           <div class="w3-col w3-accordion w3-hover-shadow w3-center  w3-border w3-hover-border-red "  style="width:25%">
            <img src="amd2.jpg" alt=""  style="height:120px ; width:105px"/><br />
                <div>
              
                    <br />
                    <asp:Table ID="Table2" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                        <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">R7 260X</asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Base Clock:</asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">Up to 1.01 GHz</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Memory Bandwidth:</asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light">Up to 104 GB/s </asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Memory Amount:</asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">Up to 2GB GDDR5 </asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />

                  


                    <asp:Button ID="Button2" runat="server" 
                    CssClass="btn w3-red w3-round-large w3-card-2 text-white " 
                        Text="See Full Specs" onclick="Button2_Click"  />
                        <br />
                </div>
           </div>
           
       <div class="w3-col w3-accordion w3-hover-shadow w3-center  w3-border w3-hover-border-red "  style="width:25%">
            <img src="amd2.jpg" alt=""  style="height:120px ; width:105px"/><br />
                <div>
              
                    <br />
                    <asp:Table ID="Table3" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                        <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">R7 250X</asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Base Clock:</asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">Up to 1.02 GHz</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Memory Bandwidth:</asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light">Up to 72 GB/s </asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Memory Amount:</asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">Up to 2GB GDDR5 </asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />

                  


                    <asp:Button ID="Button3" runat="server" 
                    CssClass="btn w3-red w3-round-large w3-card-2 text-white " 
                        Text="See Full Specs" onclick="Button3_Click" />
                        <br />
                </div>
           </div>
          
            <div class="w3-col w3-accordion w3-hover-shadow w3-center  w3-border w3-hover-border-red "  style="width:25%">
            <img src="amd2.jpg" alt=""  style="height:120px ; width:105px"/><br />
                <div>
              
                    <br />
                    <asp:Table ID="Table4" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                        <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">R7 370</asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Base Clock:</asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">Up to 975 MHz</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Memory Bandwidth:</asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light">Up to 179.2 GB/s </asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Memory Amount:</asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light"> 2GB or 4GB GDDR5</asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />

                  


                    <asp:Button ID="Button4" runat="server" 
                    CssClass="btn w3-red w3-round-large w3-card-2 text-white " 
                        Text="See Full Specs" onclick="Button4_Click" />
                        <br />
                </div>
           </div>
       </div>
       </div>

  
  
  </div>
    </div>

 </div> 
 <div class="w3-row w3-padding-4"></div>
 
 <div class="">
    
 
    <div class="w3-center w3-section">
   
    <hr />
    <div class="">
    <hr class="bg-success" style="height:3px">
    <asp:Button ID="compare" runat="server" CssClass="btn btn-outline-danger w3-large w3-round-large" Text="Go To Compare Products" />
    </div>
</div>
 </div>
 <div class="">
    <footer class="footer bg-faded bg-danger ">
      <div class="container  text-white">
        <p class=" w3-center text-white blockquote-footer w3-large" style="font-family:Segoe UI Light">Developed By: TheDeveloper Team.</p>
      </div>
    </footer>
    </div>
    <div class="modal fade p-md-4 well-lg w3-card-4 " id="gp" role="dialog">
    <div class="modal-dialog modal-lg  ">
        <div class="modal-content ">
           
                   
                    
             
                <div class="modal-body " style="font-family:MS Sans Serif">
                       <asp:TextBox ID="txtdeveloper" runat="server" 
                         Visible="False">thedeveloperark@gmail.com</asp:TextBox>
                        
                         <asp:TextBox ID="txtpassword" runat="server"  
                              TextMode="Password"
                               Visible="False">TheDeveloperArk@123</asp:TextBox>
                               <button class="close w3-xlarge w3-right-align" type="button" data-dismiss="modal">&times;</button>  
                    
                         <asp:Label ID="Label3" runat="server" CssClass="text-success text-responsive w3-text w3-large modal-title " style="font-family:MS Sans Serif" Text=" Subscribe To Our Newsletter::!!"></asp:Label> &nbsp; 
                         
                    <br /><hr />
                          <asp:Label ID="Label4" runat="server" CssClass="text-success text-responsive w3-text w3-large modal-title " style="font-family: Segoe UI" >Subscription to Our Newsletter, will get you Features Like::<br />
                                                                                                              <span class="glyphicon glyphicon-circle-arrow-right"></span>Daily Updates Of New and Upcoming Products!<br />
                                                                                                             <span class="glyphicon glyphicon-circle-arrow-right "></span>Product Reviews!<br />
                                                                                                               <span class="glyphicon glyphicon-circle-arrow-right "></span>And Forum Updates!<br />
                          </asp:Label>     <br />
                              
                            <asp:TextBox ID="txtsb" Cssclass="w3-input w3-round w3-display-center w3-border-green w3-hover-border-red" runat="server" Width="375px"></asp:TextBox>
                          &nbsp; 
                          <br />
                             <asp:Button ID="sb"  Cssclass="btn btn-outline-success w3-round" 
                         Text="Subscribe" runat="server"  OnClick="sb_Click"/>
                         <br />

                             <asp:Label ID="txtmessage" runat="server" Visible="False" >Hi, 
                                Welcome to D.I.Y Ark !! Your Subscription for our Newsletter is Activated!
                                    You will Recieve Weekly Updates from Us! Best of our content.
                                      We welcome you , to our community with warm regards.
                                                      -TheDeveloper.
   
      
      
                          </asp:Label>
                        

                    </div>
        </div>
    </div>
   
   </div>
   
<script src="bootstrap.js" type="text/javascript"></script>
<script type="text/javascript">
    function w3_open() {
        document.getElementById("mySidenav").style.display = "block";
        document.getElementById("mySidenav").style.width = "500px";

        document.getElementById("myOverlay").style.display = "block";
    }
    function w3_close() {
        document.getElementById("mySidenav").style.display = "none";
        document.getElementById("myOverlay").style.display = "none";
    }
</script>
<script type="text/javascript">
    $(function () {
        $("[id$=gtext]").autocomplete({
            source: function (request, response) {
                $.ajax({
                    url: '<%=ResolveUrl("~/graphiccards.aspx/operation") %>',
                    data: "{ 'prefix': '" + request.term + "'}",
                    dataType: "json",
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    success: function (data) {
                        response($.map(data.d, function (item) {
                            return {
                                label: item.split('-')[0],
                                val: item.split('-')[1]
                            }
                        }))
                    },
                    error: function (response) {
                        alert(response.responseText);
                    },
                    failure: function (response) {
                        alert(response.responseText);
                    }
                });
            },
            select: function (e, i) {
                $("[id$=Every_id]").val(i.item.val);
            },
            minLength: 1
        });
    });  
</script>




  
    <script type="text/javascript" src="toggleGRAPHIC.js"></script>

 </form>      
    </body>
</html> 