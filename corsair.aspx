<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="corsair.aspx.cs" Inherits="FinalProject.corsair" %>

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
    <script type="text/javascript" src="corsairToggle.js"></script>
     <style>
          .ui-slider .ui-slider-range
          {
            background:#db4e32;   
          }
         </style>
        
            <script type="text/javascript">
                $(function () {
                    $("#slider-3").slider({
                        range: true,
                        min: 1,
                        max: 4333,
                        step: 1000,
                        animate: "slow",
                        values: [1, 4333],
                        slide: function (event, ui) {
                            $("#speed").val(" " + ui.values[0] + " MHz - " + ui.values[1] + " MHz");
                            $("#TbS1").val(ui.values[0]);
                            $("#TbS2").val(ui.values[1]);
                        }
                    });
                    $("#speed").val(" " + $("#slider-3").slider("values", 0) +
               " MHz - " + $("#slider-3").slider("values", 1) + " MHz");
                    $("#TbS1").val($("#slider-3").slider("values", 0));
                    $("#TbS2").val($("#slider-3").slider("values", 1));
                });
      </script>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ramstring %>" 
        SelectCommand="SELECT [Model] FROM [Every_Corsair] WHERE ([Model] LIKE '%' + @Model + '%')">
        <SelectParameters>
            <asp:Parameter Name="Model" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>













<!--dropdown starts starts-->
       <div class="navbtn btn-toolbar w3-dark-grey w3-large w3-round-medium">
                            <ul class="nav ">
                                    <li class="w3-dark-grey">
                                        <a class="w3-dark-grey w3-hover-text-red " href="homepage.aspx">Home</a>
                                    </li>
                                      <li class="w3-dark-grey">
                                            <a class="w3-dark-grey w3-hover-text-red " href="intelprocessor.aspx">Processor Ark</a>
                                      </li>
                                    <li class="w3-dark-grey">
                                           <a class="w3-dark-grey w3-hover-text-red" href="graphiccards.aspx">Graphic cards</a>
                                      </li>
                                    <li class="bg-danger ">
                                            <a class="bg-danger w3-hover-text-red" href="corsair.aspx">Memory Collection</a>
                                    </li>
                                     <li class=" w3-dark-grey ">
                                            <a class="w3-dark-grey w3-hover-text-red" href="intelssd.aspx">SSD Collection</a>
                                    </li>
                                     <li class=" w3-dark-grey ">
                                            <a class="w3-dark-grey w3-hover-text-red" href="About.aspx">About Us</a>
                                    </li>

                                     <li class=" w3-dark-grey ">
                                            <a class="w3-dark-grey w3-hover-text-red" href="forum.aspx">D.I.Y Forum</a>
                                    </li>
                                    
                            </ul>
                        </div>
<!--THE FILTER DIV TAG SECTION-->
       <div class="w3-col w3-card-4" style="width:27%; height:auto;">
                        
            <div>
                    <p class=" w3-responsive w3-xlarge text-danger text-center text-capitalize" style="font-family:Segoe UI">Filter:</p>
                </div>
                <hr class="w3-red" style="height:2px" />
                 <asp:Label ID="disp" runat="server" Text="Speed: " CssClass="w3-large " style="font-family:Segoe UI "></asp:Label><br />
              
            <asp:TextBox ID="speed" runat="server" style = "border:0; font-weight:bold;" Enabled="False" BackColor="White"></asp:TextBox>
                 <div id = "slider-3"></div>

                 <asp:HiddenField ID="TbS1" runat="server" />
                <asp:HiddenField ID="TbS2" runat="server" />

                  <hr class="w3-red" style="height:2px" />
                
                  <div id="SizeFN">
                      <asp:Label ID="Label4" runat="server" Text="Size:(In GB)  " CssClass="w3-large " style="font-family:Segoe UI "></asp:Label>
                      <a id="SizeAWD" href="#" class=" offset-sm-8"><span class="glyphicon glyphicon-chevron-down"></span></a>
                      <hr class="w3-red" style="height:2px" />
                  </div>
                  <div id="SizeFP" class="w3-leftbar w3-rightbar w3-border-red" style="height:auto">
                    <div id="chkDM1"><asp:CheckBox ID="chkM1" runat="server" Text="1" /></div>
                    <div id="chkDM2"><asp:CheckBox ID="chkM2" runat="server" Text="2" /></div>
                    <div id="chkDM3"><asp:CheckBox ID="chkM3" runat="server" Text="4" /></div>
                    <div id="chkDM4"><asp:CheckBox ID="chkM4" runat="server" Text="8" /></div>
                    <div id="chkDM5"><asp:CheckBox ID="chkM5" runat="server" Text="16" /></div>
                    <div id="chkDM6"><asp:CheckBox ID="chkM6" runat="server" Text="32" /></div>
                    <div id="chkDM7"><asp:CheckBox ID="chkM7" runat="server" Text="64" /></div>
                    <div id="chkDM8"><asp:CheckBox ID="chkM8" runat="server" Text="128" /></div>
                    <div id="SizeAWU"><a href="#" class=" offset-md-11"><span class="glyphicon glyphicon-chevron-up"></span></a></div>
                  </div>
                  
        <br /><br />
         <div class=" offset-sm-3">
        <asp:Button ID="Filter_Sub_Btn" runat="server" 
                CssClass="w3-right-align btn btn-outline-danger w3-round-large " 
                style="border-width:medium; font-size:larger;" Text="Apply" onclick="Filter_Sub_Btn_Click"
                 />
        &nbsp; <a  class="btn btn-outline-warning w3-round-large " style="border-width:medium; font-size:larger;" href="intelprocessor.aspx">Cancel</a>
                
    <br />
    <br />
        </div>
        
        </div>


        <div class="w3-col w3-card" style="width:2%;">
        <!--for space dont do anything here-->
        </div>
        

   















<!--ALL Graphic INFO DETAIL START-->
        <div class="w3-col " style="width:69%">
      
  

      <!--ram INFO START-->
    <div class="w3-row" >
         <!--Heading-->    <div class="w3-row w3-xlarge text-danger" style="font-family:Segoe UI Light">Vengeance Series
         
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="vgseries" runat="server" 
                 CssClass="w3-right-align btn w3-red w3-round-large w3-card-2 text-white " 
                 Text="View All" onclick="vgseries_Click"/>
         <span class=" fa fa-arrow-circle-right"></span>
         
         
         </div>








         <div class="w3-row w3-hover-shadow w3-card-4" >
            <div class="w3-col w3-accordion w3-hover-shadow w3-center  w3-border w3-hover-border-red "  style="width:25%">
            <img src="ramimages/vengeance.jpg" alt=""  style="height:120px ; width:110px"/><br />
                <div>
              
                    <br />
                    <asp:Table ID="rTable1" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                        <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">CMK16GX43733C17</asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Memory Type: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">DDR4</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Package Contents: </asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light">4 x 4GB memory modules & Vengeance Airflow</asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Speed: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">3733MHz</asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />

                  


                    <asp:Button ID="rb1" runat="server" 
                    CssClass=" btn w3-red w3-round-large w3-card-2 text-white " 
                        Text="See Full Specs" onclick="rb1_Click"  />
                        <br />
                </div>
           </div>


          















           <div class="w3-col w3-accordion w3-hover-shadow w3-center  w3-border w3-hover-border-red "  style="width:25%">
            <img src="ramimages/vengeance1.jpg" alt=""  style="height:120px ; width:110px"/><br />
                <div>
              
                    <br />
                    <asp:Table ID="rTable2" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                        <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">CMK32GX43000C15</asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Memory Type: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">DDR4</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Package Contents: </asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light">4 x 8GB memory modules & Vengeance Airflow</asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Speed: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">3000MHz</asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />

                  


                    <asp:Button ID="rb2" runat="server" 
                   CssClass=" btn w3-red w3-round-large w3-card-2 text-white "  
                        Text="See Full Specs" onclick="rb2_Click"  />
                        <br />
                </div>
           </div>

           
            <div class="w3-col w3-accordion w3-hover-shadow w3-center  w3-border w3-hover-border-red "  style="width:25%">
            <img src="ramimages/vengeance1.jpg" alt=""  style="height:120px ; width:110px"/><br />
                <div>
              
                    <br />
                    <asp:Table ID="rTable3" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                        <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">CMK8GX44266C19</asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Memory Type: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">DDR4</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Package Contents: </asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light">2 x 4GB memory modules & Vengeance Airflow</asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Speed: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">4266MHz</asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />

                  


                    <asp:Button ID="rb3" runat="server" 
                   CssClass=" btn w3-red w3-round-large w3-card-2 text-white "  
                        Text="See Full Specs" onclick="rb3_Click"  />
                        <br />
                </div>
           </div>
          

           <div class="w3-col w3-accordion w3-hover-shadow w3-center  w3-border w3-hover-border-red "  style="width:25%">
            <img src="ramimages/vengeance.jpg" alt=""  style="height:120px ; width:110px"/><br />
                <div>
              
                    <br />
                    <asp:Table ID="rTable4" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                        <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">CMK64GX43000C15</asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Memory Type: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">DDR4</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Package Contents: </asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light">4 x 16GB memory modules & Vengeance Airflow</asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Speed: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">3000MHz</asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />

                  


                    <asp:Button ID="rb4" runat="server" 
                    CssClass=" btn w3-red w3-round-large w3-card-2 text-white "  
                        Text="See Full Specs" onclick="rb4_Click"  />
                        <br />
                </div>
           </div>

 </div> 
      
          
 





    <!-- i5 SERIES SECTION Graphic INFO --->
       <div class="w3-row" >
         <!--Heading-->    <div class="w3-row w3-xlarge text-danger  " style="font-family:Segoe UI Light">Dominator Series
         
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="dmseries" runat="server" 
                   CssClass="w3-right-align btn w3-red w3-round-large w3-card-2 text-white " 
                   Text="View All" onclick="dmseries_Click" />
         <span class=" fa fa-arrow-circle-right"></span>
         
         
         </div>

         <div class="w3-row w3-hover-shadow w3-card-4" >
            <div class="w3-col w3-accordion w3-hover-shadow w3-center  w3-border w3-hover-border-red "  style="width:25%">
            <img src="ramimages/dominator1.jpg" alt=""  style="height:120px ; width:110px"/><br />
                <div>
              
                    <br />
                    <asp:Table ID="rTable5" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                        <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">CMD16GX33100C12</asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Memory Type: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">DDR3</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Package Contents: </asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light">4 x 4GB memory modules & Dominator Airflow Platinum Fan</asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Speed: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">3100MHz</asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />

                  


                    <asp:Button ID="rb5" runat="server" 
                     CssClass=" btn w3-red w3-round-large w3-card-2 text-white "  
                        Text="See Full Specs" onclick="rb5_Click"  />
                        <br />
                </div>
           </div>


            <div class="w3-col w3-accordion w3-hover-shadow w3-center  w3-border w3-hover-border-red "  style="width:25%">
            <img src="ramimages/dominator1.jpg" alt=""  style="height:120px ; width:110px"/><br />
                <div>
              
                    <br />
                    <asp:Table ID="rTable6" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                       <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">CMD16GX43666C18</asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Memory Type: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">DDR4</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Package Contents: </asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light">4 x 4GB memory modules & Dominator Airflow Platinum LED Fan</asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Speed: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">3666MHz</asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />

                  


                    <asp:Button ID="rb6" runat="server" 
                    CssClass=" btn w3-red w3-round-large w3-card-2 text-white "  
                        Text="See Full Specs" onclick="rb6_Click"  />
                        <br />
                </div>
           </div>
           
        <div class="w3-col w3-accordion w3-hover-shadow w3-center  w3-border w3-hover-border-red "  style="width:25%">
            <img src="ramimages/dominator1.jpg" alt=""  style="height:120px ; width:110px"/><br />
                <div>
              
                    <br />
                    <asp:Table ID="rTable7" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                        <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">CMD32GX43000C15</asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Memory Type: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">DDR4</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Package Contents: </asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light">4 x 8GB memory modules & Dominator Airflow Platinum LED Fan</asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Speed: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">3000MHz</asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />

                  


                    <asp:Button ID="rb7" runat="server" 
                     CssClass=" btn w3-red w3-round-large w3-card-2 text-white "  
                        Text="See Full Specs" onclick="rb7_Click"  />
                        <br />
                </div>
           </div>
          <div class="w3-col w3-accordion w3-hover-shadow w3-center  w3-border w3-hover-border-red "  style="width:25%">
            <img src="ramimages/dominator1.jpg" alt=""  style="height:120px ; width:110px"/><br />
                <div>
              
                    <br />
                    <asp:Table ID="rTable8" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                       <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">CMD32GX43733C17</asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Memory Type: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">DDR4</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Package Contents: </asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light">4 x 8GB memory modules & Dominator Airflow Platinum LED Fan</asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Speed: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">3733MHz</asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />

                  


                    <asp:Button ID="rb8" runat="server" 
                   CssClass=" btn w3-red w3-round-large w3-card-2 text-white "  
                        Text="See Full Specs" onclick="rb8_Click"  />
                        <br />
                </div>
           </div>

  </div>
  
  
          <!--  SERIES SECTION Graphic INFO --->
       <div class="w3-row" >
         <!--Heading-->    <div class="w3-row w3-xlarge text-danger" style="font-family:Segoe UI Light">Corsair Modules
         
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="crseries" runat="server" 
                 CssClass="w3-right-align btn w3-red w3-round-large w3-card-2 text-white " 
                 Text="View All" onclick="crseries_Click"/>
         <span class=" fa fa-arrow-circle-right"></span>
         
         
         </div>

         <div class="w3-col w3-accordion w3-hover-shadow w3-center  w3-border w3-hover-border-red "  style="width:25%">
            <img src="ramimages/corsair.jpg" alt=""  style="height:120px ; width:110px"/><br />
                <div>
              
                    <br />
                    <asp:Table ID="rTable9" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                       <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">CMD64GX32400C11</asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Memory Type: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">DDR3</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Package Contents: </asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light">8 x 8GB memory modules</asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Speed: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">2400MHz</asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />

                  


                    <asp:Button ID="rb9" runat="server" 
                    CssClass=" btn w3-red w3-round-large w3-card-2 text-white "  
                        Text="See Full Specs" onclick="rb9_Click"  />
                        <br />
                </div>
           </div>


           <div class="w3-col w3-accordion w3-hover-shadow w3-center  w3-border w3-hover-border-red "  style="width:25%">
            <img src="ramimages/corsair1.jpg" alt=""  style="height:120px ; width:110px"/><br />
                <div>
              
                    <br />
                    <asp:Table ID="rTable10" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                       <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">CMD64GX32133C9</asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Memory Type: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">DDR3</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Package Contents: </asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light">8 x 8GB memory modules</asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Speed: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">2133MHz</asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />

                  


                    <asp:Button ID="rb10" runat="server" 
                    CssClass=" btn w3-red w3-round-large w3-card-2 text-white "  
                        Text="See Full Specs" onclick="rb10_Click"  />
                        <br />
                </div>
           </div>
           
       <div class="w3-col w3-accordion w3-hover-shadow w3-center  w3-border w3-hover-border-red "  style="width:25%">
            <img src="ramimages/corsair.jpg" alt=""  style="height:120px ; width:110px"/><br />
                <div>
              
                    <br />
                    <asp:Table ID="rTable11" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                        <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">CMD32GX32400C10</asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Memory Type: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">DDR3</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Package Contents: </asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light">4 x 8GB memory modules</asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Speed: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">2400MHz</asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />

                  


                    <asp:Button ID="rb11" runat="server" 
                     CssClass=" btn w3-red w3-round-large w3-card-2 text-white "  
                        Text="See Full Specs" onclick="rb11_Click"  />
                        <br />
                </div>
           </div>
          
            <div class="w3-col w3-accordion w3-hover-shadow w3-center  w3-border w3-hover-border-red "  style="width:25%">
            <img src="ramimages/corsair.jpg" alt=""  style="height:120px ; width:110px"/><br />
                <div>
              
                    <br />
                    <asp:Table ID="rTable12" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                       <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">CMD16GX31866C9</asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Memory Type: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">DDR3</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Package Contents: </asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light">4 x 4GB memory modules</asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-red " style="font-family:Segoe UI Light">Speed: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">1866MHz</asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />

                  


                    <asp:Button ID="rb12" runat="server" 
                    CssClass=" btn w3-red w3-round-large w3-card-2 text-white "  
                        Text="See Full Specs" onclick="rb12_Click"  />
                        <br />
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

    <hr class="bg-danger" style="height:3px">
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


    <div class="modal fade p-md-4 well-lg w3-card-4 " id="pp" role="dialog">
    <div class="modal-dialog modal-lg  ">
        <div class="modal-content ">
           
                   
                    
             
                <div class="modal-body " style="font-family:MS Sans Serif">
                       <asp:TextBox ID="txtdeveloper" runat="server" 
                         Visible="False">thedeveloperark@gmail.com</asp:TextBox>
                        
                         <asp:TextBox ID="txtpassword" runat="server"  
                              TextMode="Password"
                               Visible="False">TheDeveloperArk@123</asp:TextBox>
                               <button class="close w3-xlarge w3-right-align" type="button" data-dismiss="modal">&times;</button>  
                    
                         <asp:Label ID="Label1" runat="server" CssClass="text-danger table-responsive w3-text w3-large modal-title " style="font-family:MS Sans Serif" Text=" Subscribe To Our Newsletter::!!"></asp:Label> &nbsp; 
                         
                    <br /><hr />
                          <asp:Label ID="Label3" runat="server" CssClass="text-danger table-responsive w3-text w3-large modal-title " style="font-family: Segoe UI" >Subscription to Our Newsletter, will get you Features Like::<br />
                                                                                                              <span class="glyphicon glyphicon-circle-arrow-right"></span>Daily Updates Of New and Upcoming Products!<br />
                                                                                                             <span class="glyphicon glyphicon-circle-arrow-right "></span>Product Reviews!<br />
                                                                                                               <span class="glyphicon glyphicon-circle-arrow-right "></span>And Forum Updates!<br />
                          </asp:Label>     <br />
                              
                            <asp:TextBox ID="txtsb" 
                           Cssclass="w3-input w3-round w3-display-center text-danger w3-border-red w3-hover-border-red" 
                           runat="server" Width="375px" ></asp:TextBox>
                          &nbsp; 
                          <br />
                             <asp:Button ID="sb"  Cssclass="btn btn-outline-danger w3-round" 
                         Text="Subscribe" runat="server" onclick="sb_Click"  />
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
      $('dropdown-toggle').dropdown();
  </script>  
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
        $("[id$=ctext]").autocomplete({
            source: function (request, response) {
                $.ajax({
                    url: '<%=ResolveUrl("~/corsair.aspx/operation") %>',
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

 </form>         
</body>
</html>
