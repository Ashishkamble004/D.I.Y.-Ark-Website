<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="intelssd.aspx.cs" Inherits="FinalProject.intelssd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
                        max: 4.5,
                        step: .2,
                        animate: "slow",
                        values: [1.5, 2.7],
                        slide: function (event, ui) {
                            $("#speed").val("." + ui.values[0] + " - ." + ui.values[1]);
                        }
                    });
                    $("#speed").val("$" + $("#slider-3").slider("values", 0) +
               " - $" + $("#slider-3").slider("values", 1));
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
        Width="49px" Text="GO"/>

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
    </form>
</body>
</html>
