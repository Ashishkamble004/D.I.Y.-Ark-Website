<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="intelprocessor.aspx.cs" Inherits="FinalProject.intelprocessor" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Processor Ark (Intel Series)</title>
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
            
    <script type="text/javascript" src="toggle.js"></script>
         <style>
          .ui-slider .ui-slider-range
          {
            background:#2997e5;   
          }
         </style>
        
            <script type="text/javascript">
                $(function () {
                    $("#slider-3").slider({
                        range: true,
                        min: 1,
                        max: 4.5,
                        step: .2,
                        animate: "slow",
                        values: [1, 4.5],
                        slide: function (event, ui) {
                            $("#speed").val(" " + ui.values[0] + " - " + ui.values[1]);
                            $("#TbS1").val(ui.values[0]);
                            $("#TbS2").val(ui.values[1]);
                        }
                    });
                    $("#speed").val(" " + $("#slider-3").slider("values", 0) +
               " - " + $("#slider-3").slider("values", 1));
                    $("#TbS1").val($("#slider-3").slider("values", 0));
                    $("#TbS2").val($("#slider-3").slider("values", 1));
                });
      </script>


</head>
<body>
    <form runat="server" id="form1">
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
  <span class="w3-opennav w3-xxlarge" onclick="w3_open()">&#9776;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
 
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

 

   


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:processorstring %>" 
        onselecting="SqlDataSource1_Selecting" 
        SelectCommand="SELECT [Model] FROM [Every] WHERE ([Model] LIKE '%' + @Model + '%')">
        <SelectParameters>
            <asp:Parameter Name="Model" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>


    
    <br />
    <br />
   





</div> 
  
                   
<!--header blue background div tag (end)-->

<div class="w3-padding-32"></div>
<div class=" w3-padding-16"></div>
    
   
       
       
        
    
      





<!--dropdown starts starts-->
  
                            <div class="nav btn-toolbar w3-dark-grey w3-large w3-round-medium">
                            <ul class="nav ">
                                    <li class="w3-dark-grey ">
                                        <a class="w3-dark-grey w3-hover-text-aqua nav-link" href="Homepage.aspx">Home</a>
                                    </li>
                                      <li class="w3-blue">
                                            <a class="w3-blue w3-hover-text-aqua active nav-link" href="intelprocessor.aspx">Processor Ark</a>
                                      </li>
                                    <li class=" w3-dark-grey">
                                           <a class="w3-dark-grey w3-hover-text-aqua nav-link" href="graphiccards.aspx">Graphic cards</a>
                                      </li>
                                    <li class="w3-dark-grey ">
                                            <a class="w3-dark-grey w3-hover-text-aqua nav-link" href="corsair.aspx">Memory Collection</a>
                                    </li>
                                    <li class=" w3-dark-grey ">
                                            <a class="w3-dark-grey w3-hover-text-red" href="intelssd.aspx">SSD Collection</a>
                                    </li>
                                     <li class=" w3-dark-grey ">
                                            <a class="w3-dark-grey w3-hover-text-aqua nav-link" href="About.aspx">About Us</a>
                                    </li>
                                     <li class=" w3-dark-grey ">
                                            <a class="w3-dark-grey w3-hover-text-aqua nav-link" href="forum.aspx">D.I.Y Forum</a>
                                    </li>
                                    
                            </ul>
                        </div>

<!--THE FILTER DIV TAG SECTION-->

    <div class="w3-col  w3-card-4" style="width:27%;">  
            

        <div class=" w3-hover-shadow">
            <div style="width:100%">
                <div>
                    <p class=" w3-responsive w3-xlarge text-info text-center text-capitalize" style="font-family:Segoe UI">Filter:</p>
                </div>
                <hr class="w3-blue" style="height:2px" />
                 <asp:Label ID="disp" runat="server" Text="Base Clock:(In Ghz) " CssClass="w3-large " style="font-family:Segoe UI "></asp:Label><br />
              
            <asp:TextBox ID="speed" runat="server" style = "border:0; font-weight:bold;" Enabled="False" BackColor="White"></asp:TextBox>
                 <div id = "slider-3"></div>
                  <hr class="w3-blue" style="height:2px" />


                <asp:HiddenField ID="TbS1" runat="server" />
                <asp:HiddenField ID="TbS2" runat="server" />

               
               
               
                <div style="height:5px"></div>
                <div class="">
                    <div id="SeriesFN">
                        <asp:Label ID="Lb5" runat="server" class=" w3-responsive w3-padding w3-large " style="font-family:Segoe UI" Text="Series" />
                       <a id="SeriesAWD" href="#" class=" offset-sm-8"><span class="glyphicon glyphicon-chevron-down"></span></a>
                         <hr class="w3-blue" style="height:2px" />
                    </div>
                    <div id="SeriesFP" class="w3-leftbar w3-rightbar w3-border-blue" style="height:auto">
                        <br /><asp:RadioButton ID="S_Cb1" runat="server" Text=" Celeron Processors" style="font-family:Segoe UI" GroupName="Series" />
                              
                        <br /><asp:RadioButton ID="S_Cb2" runat="server" Text="Pentium Processors" style="font-family:Segoe UI" GroupName="Series" />
                              
                        <br /><asp:RadioButton ID="S_Cb3" runat="server" Text="Core Processors" style="font-family:Segoe UI" GroupName="Series" />
                              
                        <br /><asp:RadioButton ID="S_Cb4" runat="server" Text="Xeon Processors" style="font-family:Segoe UI" GroupName="Series" />
                            
                        <br /><div id="SeriesAWU"><a href="#" class=" offset-md-11"><span class="glyphicon glyphicon-chevron-up"></span></a></div>
                    </div>
                </div>


                <div style="height:15px"></div>
                <div class="">
                    <div id="SubseriesFN">
                        <asp:Label ID="lb6" runat="server" class=" w3-responsive w3-padding w3-large panel-title" style="font-family:Segoe UI" Text="Sub-Series" />
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <a id="SubseriesAWD" href="#" ><span class="glyphicon glyphicon-chevron-down"></span></a>
                      <hr class="w3-blue" style="height:2px" />
                    </div>
                    
                    <div id="SubseriesFP" class="w3-leftbar w3-rightbar w3-border-blue" style="height:auto">
                        <br /><div id="SubS_D1"><asp:RadioButton ID="SubS_Cb1" runat="server" Text=" Core i3 Processors" GroupName="SubSeries"/></div>                              
                        <div id="SubS_D2"><asp:RadioButton ID="SubS_Cb2" runat="server" Text="Core i5 Processors" style="font-family:Segoe UI" GroupName="SubSeries" /></div>                              
                        <div id="SubS_D3"><asp:RadioButton ID="SubS_Cb3" runat="server" Text="Core i7 Processors" style="font-family:Segoe UI" GroupName="SubSeries" /></div>                              
                        <div id="SubS_D4"><asp:RadioButton ID="SubS_Cb4" runat="server" Text="Xeon Series Processors" style="font-family:Segoe UI" GroupName="SubSeries" /></div>                            
                        <div id="SubS_D5"><asp:RadioButton ID="SubS_Cb5" runat="server" Text="Xeon-EP Series Processors" style="font-family:Segoe UI" GroupName="SubSeries" /></div>      
                        <div id="SubS_D6"><asp:RadioButton ID="SubS_Cb6" runat="server" Text="Xeon-EX Series Processors" style="font-family:Segoe UI" GroupName="SubSeries" /></div>
                        <div id="SubS_D0"><p class=" w3-responsive w3-large text-danger" style="font-family:Segoe UI">* No Sub-Series Available for above Selected Series..</p></div>
                        <div id="SubseriesAWU"><a href="#" class=" offset-md-11 offset-md-2"><span class="glyphicon glyphicon-chevron-up"></span></a></div>
                    </div>
                </div>

                
                   

                <div style="height:15px"></div>
                <div>
                    <div id="ArchitectureFN">
                        <asp:Label ID="Label8" runat="server" class=" w3-responsive w3-padding w3-large " style="font-family:Segoe UI" Text="Architecture" />
                        &nbsp;&nbsp;<a id="ArchitectureAWD" href="#" class=" offset-sm-6"><span class="glyphicon glyphicon-chevron-down"></span></a>
                    <hr class="w3-blue" style="height:2px" />
                    </div>

                    <div id="ArchitectureFP" class="w3-leftbar w3-rightbar w3-border-blue" style="height:auto">
                        <br /><div id="Arch_D1"><asp:RadioButton ID="Arch_Cb1" runat="server" Text="Skylake" style="font-family:Segoe UI" GroupName="Arch" /></div>
                        <div id="Arch_D2"><asp:RadioButton ID="Arch_Cb2" runat="server" Text="Broadwell-E" style="font-family:Segoe UI" GroupName="Arch" /></div>
                        <div id="ArchitectureAWU"><a href="#" class=" offset-md-11"><span class="glyphicon glyphicon-chevron-up"></span></a></div>
                    </div>
                </div>

                <div style="height:15px"></div>
                <div>
                    <div id="CoreFN">
                        <asp:Label ID="Label2" runat="server" class=" w3-responsive w3-padding w3-large " style="font-family:Segoe UI" Text="Cores" />
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a id="CoreAWD" href="#" class=" offset-sm-7"><span class="glyphicon glyphicon-chevron-down"></span></a>
                    <hr class="w3-blue" style="height:2px" />
                    </div>
                    <div id="CoreFP" class="w3-leftbar w3-rightbar w3-border-blue" style="height:auto">
                        <br /><div id="Core_D1"><asp:RadioButton ID="Core_Cb1" runat="server" Text="2 Cores" GroupName="Core" /></div>
                        <div id="Core_D2"><asp:RadioButton ID="Core_Cb2" runat="server" Text="4 Cores" style="font-family:Segoe UI" GroupName="Core"/></div>
                        <div id="Core_D3"><asp:RadioButton ID="Core_Cb3" runat="server" Text="6 Cores" style="font-family:Segoe UI" GroupName="Core"/></div>
                        <div id="Core_D4"><asp:RadioButton ID="Core_Cb4" runat="server" Text="8 Cores" style="font-family:Segoe UI" GroupName="Core"/></div>
                        <div id="Core_D5"><asp:RadioButton ID="Core_Cb5" runat="server" Text="10 Cores" style="font-family:Segoe UI" GroupName="Core"/></div>
                        <div id="Core_D6"><asp:RadioButton ID="Core_Cb6" runat="server" Text="12 Cores" style="font-family:Segoe UI" GroupName="Core"/></div>
                        <div id="Core_D7"><asp:RadioButton ID="Core_Cb7" runat="server" Text="14 Cores" style="font-family:Segoe UI" GroupName="Core"/></div>
                        <div id="Core_D8"><asp:RadioButton ID="Core_Cb8" runat="server" Text="16 Cores" style="font-family:Segoe UI" GroupName="Core"/></div>
                        <div id="Core_D9"><asp:RadioButton ID="Core_Cb9" runat="server" Text="18 Cores" GroupName="Core"/></div>
                        <div id="Core_D10"><asp:RadioButton ID="Core_Cb10" runat="server" Text="20 Cores" style="font-family:Segoe UI" GroupName="Core"/></div>
                        <div id="Core_D11"><asp:RadioButton ID="Core_Cb11" runat="server" Text="22 Cores" style="font-family:Segoe UI" GroupName="Core"/></div>
                        <div id="CoreAWU"><a href="#" class=" offset-md-11"><span class="glyphicon glyphicon-chevron-up"></span></a></div>
                    </div>
                </div>

            </div>
     
        <br /><br />
        <div class=" offset-sm-3">
        <asp:Button ID="Filter_Sub_Btn" runat="server" 
                CssClass="w3-left-align btn btn-outline-info w3-round-large " 
                style="border-width:medium; font-size:larger;" Text="Apply" onclick="Filter_Sub_Btn_Click" 
                 />
        &nbsp; <a  class="w3-right-align btn btn-outline-danger w3-round-large " style="border-width:medium; font-size:larger;" href="intelprocessor.aspx">Cancel</a>
                
    <br />
    <br />
        </div>
    </div>



    </div>

 <div class="w3-col w3-card" style="width:2%;">
        <!--for space dont do anything here-->
        </div>
<!--ALL PROCESSOR INFO DETAIL START-->
        <div class="w3-col " style="width:69%">
      
  

      <!--i7 PROCESSOR INFO START-->
    <div class="w3-row" >
         <!--Heading-->    <div class="w3-row w3-xlarge w3-text-blue" style="font-family:Segoe UI Light">i7series
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="corei7" runat="server" CssClass="w3-right-align btn w3-blue w3-round-large w3-card-2 text-white " Text="View All" onclick="corei7_Click" />
         <span class=" fa fa-arrow-circle-right"></span>


            
        </div>




         <div class="w3-row w3-hover-shadow w3-card-4" >
            <div class="w3-col w3-accordion w3-hover-shadow w3-center  w3-border w3-hover-border-blue "  style="width:25%">
            <img src="i7unlocked.jpg" alt="i7 3980"  style="height:120px ; width:105px"/><br />
                <div>
              
                    <br />
                    <asp:Table ID="Table1" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                        <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">Intel Core i7 6950X Processor Extreme</asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Base Clock: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">3 GHz</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Cache:</asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light">25 MB</asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Boost:</asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">4 GHz</asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />

                  


                    <asp:Button ID="pb1" runat="server" 
                    CssClass="btn w3-blue w3-round-large w3-card-2 text-white " 
                        Text="See Full Specs" onclick="pb1_Click" />
                        <br />
                </div>
           </div>




















            <div class="w3-col  w3-accordion w3-center  w3-hover-shadow  w3-border w3-hover-border-blue "  style="width:25%">
          <img src="i7unlocked.jpg" alt="i7 3980"  style="height:120px ; width:105px"/><br />
                <div>
                  
                      <br />
                    <asp:Table ID="Table2" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                        <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">Intel Core i7 6850K Unlocked</asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Base Clock: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">3.6 GHz</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Cache:</asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light">15 MB</asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Boost:</asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">4 GHz</asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />
                   
                    
                    <asp:Button ID="pb2" runat="server" 
                          CssClass="btn w3-blue w3-round-large w3-card-2 text-white " Text="See Full Specs" 
                          onclick="pb2_Click" />
                </div>
           </div>
          

           
             <div class="w3-col w3-accordion w3-center  w3-hover-shadow  w3-border w3-hover-border-blue"  style="width:25%">
           <img src="i7unlocked.jpg"  alt="i7 3980"  style="height:120px ; width:105px"/><br />
                
                 
                 <br />
                    <asp:Table ID="Table3" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                        <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">Intel Core i7 6800K Unlocked</asp:TableCell>
                        </asp:TableHeaderRow>
                       
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Base Clock: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">3.6</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Cache:</asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light">15 MB </asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Boost:</asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">3.8 GHz</asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />
                    <asp:Button ID="pb3" runat="server" 
                     CssClass="btn w3-blue w3-round-large w3-card-2 text-white " Text="See Full Specs" 
                     onclick="pb3_Click" />
                
           </div>
          

            <div class="w3-col w3-accordion w3-center  w3-hover-shadow  w3-border w3-hover-border-blue"  style="width:25%">
          <img src="i7unlocked.jpg"  alt="i7 3980"  style="height:120px ; width:105px"/>
             
          <br />
           
                
               
                   <br />
                    <asp:Table ID="Table4" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                        <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">Intel Core i7 6900K Unlocked  </asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Base Clock: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">3.4 GHz</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Cache:</asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light">20 MB</asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Boost:</asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">4 GHz</asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />
                    <asp:Button ID="pb4" runat="server" 
                    CssClass="btn w3-blue w3-round-large w3-card-2 text-white " 
                    Text="See Full Specs" onclick="pb4_Click" 
                   />
           </div>
        
       </div>

 </div> 
 <br />
 <!-- i5 SERIES SECTION PROCESSOR INFO --->
       <div class="w3-row" >
         <!--Heading-->    <div class="w3-row w3-xlarge w3-text-blue  " style="font-family:Segoe UI Light">i5series
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="corei5" runat="server" 
                   CssClass="w3-right-align btn w3-blue w3-round-large w3-card-2 text-white " 
                   Text="View All" onclick="corei5_Click" />
         <span class=" fa fa-arrow-circle-right"></span>
         </div>

         <div class="w3-row w3-hover-shadow w3-card-4" >
            <div class="w3-col  w3-accordion w3-center   w3-hover-shadow  w3-border w3-hover-border-blue"  style="width:25%">
         <img src="i5logo.jpeg"  alt="i7 3980"  style="height:120px ; width:105px"/><br />
                
                  
                      <br />
                    <asp:Table ID="Table5" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                        <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">Intel Core i5 6400T </asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Base Clock: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">2.2 GHz</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Cache:</asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light">6 MB</asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Boost:</asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">2.8 GHz </asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />
                    <asp:Button ID="pb5" runat="server" 
                    CssClass="btn w3-blue w3-round-large w3-card-2 text-white " Text="See Full Specs" 
                    onclick="pb5_Click" />
               
           </div>


            <div class="w3-col  w3-accordion w3-center  w3-hover-shadow  w3-border w3-hover-border-blue"  style="width:25%">
          <img src="i5logo.jpeg"  alt="i7 3980"  style="height:120px ; width:105px"/><br />
                
                 
                  <br />
                    <asp:Table ID="Table6" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                        <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">Intel Core i5 6685R </asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Base Clock: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">2.8 GHz</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Cache:</asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light">6 MB</asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Boost:</asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">3.6 GHz</asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />
                    <asp:Button ID="pb6" runat="server" 
                    CssClass="btn w3-blue w3-round-large w3-card-2 text-white " Text="See Full Specs" 
                    onclick="pb6_Click" />
           </div>
          
           
        <div class="w3-col w3-accordion w3-center  w3-hover-shadow  w3-border w3-hover-border-blue"  style="width:25%">
           <img src="i5logo.jpeg"  alt="i7 3980"  style="height:120px ; width:105px"/><br />
               
                   
                      <br />
                    <asp:Table ID="Table7" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                        <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">Intel Core i5 6585R </asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Base Clock: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">3.2 GHz</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Cache:</asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light">6 MB</asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Boost:</asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">3.8 GHZ</asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />
                    <asp:Button ID="pb7" runat="server" 
                CssClass="btn w3-blue w3-round-large w3-card-2 text-white " Text="See Full Specs" 
                onclick="pb7_Click" />
               
           </div>
          
            <div class="w3-col w3-accordion w3-center  w3-hover-shadow  w3-border w3-hover-border-blue"  style="width:25%">
          <img src="i5logo.jpeg"  alt="i7 3980"  style="height:120px ; width:105px"/><br />
               
                   
                      <br />
                    <asp:Table ID="Table8" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                        <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">Intel Core i5 6600T </asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Base Clock: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">2.7 GHz</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Cache:</asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light">6 MB</asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Boost:</asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">3.5 GHz</asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />
                    <asp:Button ID="pb8" runat="server" 
                    CssClass="btn w3-blue w3-round-large w3-card-2 text-white " Text="See Full Specs" 
                    onclick="pb8_Click" />
                
           </div>
        
       </div>

  </div>
  <br />
   <!-- i3 SERIES SECTION PROCESSOR INFO --->
       <div class="w3-row" >
         <!--Heading-->    <div class="w3-row w3-xlarge w3-text-blue" style="font-family:Segoe UI Light">i3series
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="corei3" runat="server" 
                   CssClass="w3-right-align btn w3-blue w3-round-large w3-card-2 text-white " 
                   Text="View All" onclick="corei3_Click" />
         <span class=" fa fa-arrow-circle-right"></span>
         
         
         </div>

         <div class="w3-row w3-hover-shadow w3-card-4" >
            <div class="w3-col  w3-accordion w3-center  w3-hover-shadow  w3-border w3-hover-border-blue"  style="width:25%">
         <img src="i3logo.jpeg" alt="i3 3980"  style="height:120px ; width:105px"/><br />
                
                 
                      <br />
                    <asp:Table ID="Table9" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                        <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">Intel Core i3 6098P </asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Base Clock: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">3.6 GHz</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Cache:</asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light">3 MB</asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Boost:</asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">N/A </asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />
                    <asp:Button ID="pb9" runat="server" 
                    CssClass="btn w3-blue w3-round-large w3-card-2 text-white " Text="See Full Specs" 
                    onclick="pb9_Click" />
               
           </div>


            <div class="w3-col w3-accordion w3-center w3-hover-shadow  w3-border w3-hover-border-blue"  style="width:25%">
          <img src="i3logo.jpeg" alt="i7 3980"  style="height:120px ; width:105px"/><br />
                
                 
                  <br />
                    <asp:Table ID="Table10" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                        <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">Intel  Core  i3 6100T </asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Base Clock: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">3.2 GHz</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Cache:</asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light">3 MB</asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Boost:</asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">N/A</asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />
                    <asp:Button ID="pb10" runat="server" 
                    CssClass="btn w3-blue w3-round-large w3-card-2 text-white " 
                    Text="See Full Specs" onclick="pb10_Click"
                   />

           </div>
          
           
        <div class="w3-col w3-accordion w3-center  w3-hover-shadow  w3-border w3-hover-border-blue"  style="width:25%">
           <img src="i3logo.jpeg" alt="i7 3980"  style="height:120px ; width:105px"/><br />
               
                   
                      <br />
                    <asp:Table ID="Table11" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                        <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">Intel Core i3 6100</asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Base Clock: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">3.7 GHz</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Cache:</asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light">3 MB</asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Boost:</asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">N/A</asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />
                    <asp:Button ID="pb11" runat="server" 
                CssClass="btn w3-blue w3-round-large w3-card-2 text-white " Text="See Full Specs" 
                onclick="pb11_Click" />
               
           </div>
          
            <div class="w3-col w3-accordion w3-center  w3-hover-shadow  w3-border w3-hover-border-blue"  style="width:25%">
          <img src="i3logo.jpeg" alt="i7 3980"  style="height:120px ; width:105px"/><br />
               
                   
                      <br />
                    <asp:Table ID="Table12" runat="server" CssClass="w3-table" CellPadding="1" CellSpacing="1">
                        <asp:TableHeaderRow>
                         <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Model Name: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">Intel Core i3 6320</asp:TableCell>
                        </asp:TableHeaderRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">Base Clock: </asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">3.9 GHz</asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">cache:</asp:TableCell>
                        <asp:TableCell style="font-family:Segoe UI Light">4 MB</asp:TableCell>
                        </asp:TableRow>
                      
                        <asp:TableFooterRow>
                          <asp:TableCell CssClass="w3-text-blue " style="font-family:Segoe UI Light">boost:</asp:TableCell>
                        <asp:TableCell  style="font-family:Segoe UI Light">N/A </asp:TableCell>
                        </asp:TableFooterRow>
                    </asp:Table>
                     <br />
                    <asp:Button ID="pb12" runat="server" 
                    CssClass="btn w3-blue w3-round-large w3-card-2 text-white " Text="See Full Specs" 
                    onclick="pb12_Click" />
                
           </div>
        
       </div>
  



  
  
  </div>
    </div>

 <div class="w3-row w3-padding-4"></div>
 
 <div class="w3-center w3-section">
 <br />
 <br />
 <hr class="w3-blue" style="height:3px" />
     <asp:Label ID="decrp" runat="server" CssClass="w3-center text-primary w3-xlarge" style=" font-family:Segoe UI Light" Text="Explore Other Series of Intel Processors"></asp:Label>
     <br />
    <br />
 <asp:Button ID="penpro" 
         CssClass=" btn w3-blue w3-round-large w3-card-2 text-white w3-large" 
         style=" font-family:Segoe UI Light" runat="server" Text="Pentium Processors" 
         onclick="penpro_Click" />
 &nbsp;&nbsp;&nbsp;
 <asp:Button ID="celpro" 
         CssClass="btn w3-blue w3-round-large w3-card-2 text-white w3-large" 
         style=" font-family:Segoe UI Light" runat="server" Text="Celeron Processors" 
         onclick="celpro_Click" />
 &nbsp;&nbsp;&nbsp;
 <asp:Button ID="xeonpro" 
         CssClass="btn w3-blue w3-round-large w3-card-2 text-white w3-large" 
         style=" font-family:Segoe UI Light" runat="server" Text="Xeon Processors" 
         onclick="xeonpro_Click" />

    <div class="w3-center w3-section">
        
    <hr />
    <div class="">
    <asp:Button ID="comparepro" runat="server" CssClass="btn btn-outline-primary w3-large w3-round-large" Text="Go To Compare Products" />
    </div>
</div>
 </div>
 <div class="">
    <footer class="footer bg-faded bg-primary ">
      <div class="container  text-white">
        <p class=" w3-center text-white blockquote-footer w3-large" style="font-family:Segoe UI Light">Developed By: TheDeveloper Team.</p>
      </div>
    </footer>
    </div>
  
   <div class="modal fade p-md-4 well-lg w3-card-4 " id="prp" role="dialog">
    <div class="modal-dialog modal-lg  ">
        <div class="modal-content ">
           
                   
                    
             
                <div class="modal-body " style="font-family:MS Sans Serif">
                       <asp:TextBox ID="txtdeveloper" runat="server" 
                         Visible="False">thedeveloperark@gmail.com</asp:TextBox>
                        
                         <asp:TextBox ID="txtpassword" runat="server"  
                              TextMode="Password"
                               Visible="False">TheDeveloperArk@123</asp:TextBox>
                               <button class="close w3-xlarge w3-right-align" type="button" data-dismiss="modal">&times;</button>  
                    
                         <asp:Label ID="Label1" runat="server" CssClass="text-info text-responsive w3-text w3-large modal-title " style="font-family:MS Sans Serif" Text=" Subscribe To Our Newsletter::!!"></asp:Label> &nbsp; 
                         
                    <br /><hr />
                          <asp:Label ID="Label3" runat="server" CssClass="text-info text-responsive w3-text w3-large modal-title " style="font-family: Segoe UI" >Subscription to Our Newsletter, will get you Features Like::<br />
                                                                                                              <span class="glyphicon glyphicon-circle-arrow-right"></span>Daily Updates Of New and Upcoming Products!<br />
                                                                                                             <span class="glyphicon glyphicon-circle-arrow-right "></span>Product Reviews!<br />
                                                                                                               <span class="glyphicon glyphicon-circle-arrow-right "></span>And Forum Updates!<br />
                          </asp:Label>     <br />
                              
                            <asp:TextBox ID="txtsb" Cssclass="w3-input w3-round w3-display-center w3-border-blue w3-hover-border-blue" runat="server" Width="375px"></asp:TextBox>
                          &nbsp; 
                          <br />
                             <asp:Button ID="sb"  Cssclass="btn btn-outline-info w3-round" 
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
        $("[id$=protext]").autocomplete({
            source: function (request, response) {
                $.ajax({
                    url: '<%=ResolveUrl("~/intelprocessor.aspx/operation") %>',
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
