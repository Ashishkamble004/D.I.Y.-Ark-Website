<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="FinalProject.Homepage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>D.I.Y Homepage</title>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css? parameter=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0/css/bootstrap.min.css? parameter=1"/>
    <link href="bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="myv4.css" rel="stylesheet" type="text/css" />
    <link href="myv4.min.css" rel="stylesheet" type="text/css" />
  
    <link href="w3.css" rel="stylesheet" type="text/css" />
    
    <link href="font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="gcss.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>
  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

<style type="text/css">
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif;}
body, html {
    height: 100%;
    color: #777;
    line-height: 1.8;
}

/* Create a Parallax Effect */
.intel, .nvidia, .amd {
    background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
   // background-size: cover;
}

/* First image (INTEL. Full height) */
.intel {
    background-image: url('/intel.jpg');
    min-height: 100%;
}

/* Second image (NVIDIA) */
.nvidia {
    background-image: url('/nvidia.jpg');
    min-height: 400px;
        top: 0px;
        left: -228px;
        width: 1361px;
    }

/* Third image (AMD) */
.amd{
    background-image: url('/amd.jpg');
    min-height: 400px;
        top: 0px;
        left: -230px;
        width: 1361px;
    }

.w3-wide {letter-spacing: 10px;}
.w3-hover-opacity {cursor: pointer;}

/* Turn off parallax scrolling for tablets and phones */
@media only screen and (max-device-width: 1024px) {
    .intel, .nvidia, .amd {
        background-attachment: scroll;
    }
    
   

</style>
</head>
<body>

<!-- Navbar (sit on top) -->
<%--<div class="w3-top">
  <div class="w3-bar w3-red w3-card-2 w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red" href="javascript:void(0);" ><i class="fa fa-bars"></i></a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large w3-white">Home</a>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Link 1</a>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Link 2</a>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Link 3</a>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Link 4</a>
  </div>

  <!-- Navbar on small screens -->
  <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium w3-large">
    <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 1</a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 2</a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 3</a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 4</a>
  </div>
</div>--%>


<div class="w3-top">
  <ul class="w3-navbar w3-dark-grey" id="myNavbar">
    <li class="w3-hide-medium w3-hide-large w3-opennav w3-right">
      <a class="w3-hover-black" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu">
        <i class="fa fa-bars"></i>
      </a>
    </li>
    <li class="w3-left-align w3-dark-grey"><a href="Homepage.aspx"><i class=" fa fa-home w3-large"></i>HOME</a></li>
    <li class="w3-hide-small w3-dark-grey"><a href="intelprocessor.aspx">PROCESSOR</a></li>
    <li class="w3-hide-small w3-dark-grey"><a href="graphiccards.aspx">GRAPHIC CARDS</a></li>
    <li class="w3-hide-small w3-dark-grey"><a href="corsair.aspx">MEMORY </a></li>
       <li class="w3-hide-small w3-dark-grey"><a href="intelssd.aspx">SSD</a></li>

    <li class="w3-hide-small w3-dark-grey"><a href="about.aspx">ABOUT US</a></li>
    <li class="w3-hide-small w3-dark-grey"><a href="#contact"> CONTACT US</a></li>
    <li class="w3-hide-small w3-dark-grey"><a href="demo.aspx">D.I.Y FORUM</a></li>


  
  

  
    <li class=" w3-right w3-hide-small w3-dark-grey w3-round"><a href="#myrg" data-toggle="modal">LOG IN</a></li>
  </ul>

  <!-- Navbar on small screens -->
  <div id="navDemo" class="w3-hide w3-hide-large w3-hide-medium">
    <ul class="w3-navbar w3-left-align w3-white">
      <li><a href="#about" >PROCESSOR</a></li>
      <li><a href="#portfolio" >GRAPHIC CARDS</a></li>
      <li><a href="#contact" >CONTACT</a></li>
      <li><a href="#">SEARCH</a></li>
    </ul>
  </div>
</div>



   






<div class="w3-padding-12"></div>
<div class="w3-content w3-container w3-padding-32">



  <h1><p class="w3-center w3-xlarge">Welcome to D.I.Y ARK -DisneyLand For D.I.Y Developers</p></h1>
</div>

<!-- First Parallax Image with Logo Text -->
<div class="intel w3-display-container w3-opacity-min" id="home">
  <div class="w3-display-middle" style="white-space:nowrap;">
  <a href="intelprocessor.aspx" style="text-decoration:none">
    <span class="w3-center w3-padding-xlarge w3-black w3-xlarge w3-wide w3-animate-opacity">INTEL <span class="w3-hide-small">WAREHOUSE</span></span>
 </a>
  </div>
</div>






<!-- Container (Portfolio Section) -->
<div class="w3-content w3-container w3-padding-32" id="Div2">
  <h3 class="w3-center">GRAPHIC CARDS</h3>




<!-- Second Parallax Image with Portfolio Text -->

<div class="nvidia w3-display-container w3-opacity-min" id="Div1">
  <div class="w3-display-middle" style="white-space:nowrap;">
  <a href="graphiccards.aspx"  style="text-decoration:none">
    <span class="w3-center w3-padding-xlarge w3-black w3-xlarge w3-wide w3-animate-opacity">NVIDIA <span class="w3-hide-small">WAREHOUSE</span></span>
 </a> </div>
</div>




<!-- Container (Portfolio Section) -->
<div class="w3-content w3-container w3-padding-32" id="portfolio">
  <h3 class="w3-center">AMD</h3>
 
<!-- Third Parallax Image with Portfolio Text -->

<div class="amd w3-display-container w3-opacity-min" id="Div3">
  <div class="w3-display-middle" style="white-space:nowrap;">
  <a href="corsair.aspx" style="text-decoration:none">
    <span class="w3-center w3-padding-xlarge w3-black w3-xlarge w3-wide w3-animate-opacity">AMD <span class="w3-hide-small">WAREHOUSE</span></span>
 </a> </div>
</div>






<!-- Container (Contact Section) -->
<div class="w3-content w3-container w3-padding-32" id="contact">
  <h3 class="w3-center">DEVELOPERS SITE:</h3>
  

  <div class="w3-row w3-padding-32 w3-section">
    <div class="w3-col m4 w3-container">
    
    </div>
    <div class="w3-col m8 w3-container w3-section">
      <div class="w3-centered w3-large w3-margin-bottom">
             Patkar College, Mumbai<br />
             Maharashtra, India<br/>
        
        Email: TheDeveloperArk@gmail.com<br/>
      </div>
      <p class="w3-center">We would love your feedback!</p>
      <p>Leave us a note:</p>
      <form runat="server" id ="form1" visible="True">
      <asp:Label ID="username" runat="server" Text="Gmail Username:" Visible="False"></asp:Label>
       

        <asp:TextBox ID="txtUsername" Cssclass="w3-input w3-border" runat="server" 
           placeholder="Email ID" required name="Email ID" Visible="False">kambleashish005@gmail.com</asp:TextBox>
    <br />
      <asp:Label ID="password" runat="server" Text="Gmail Password:" Visible="False"></asp:Label>
    

    <asp:TextBox ID="txtpwd" Cssclass="w3-input w3-border" runat="server"  
           TextMode="Password" placeholder="Password" required name="Password" 
           Visible="False">Krishna@123</asp:TextBox><br />

      <asp:Label ID="to" runat="server" Text="To:"></asp:Label>
  
    <asp:TextBox ID="txtrecieve" Cssclass="w3-input w3-border" runat="server" 
           placeholder="TheDeveloper@gmail.com" required name="TheDeveloper@gmail.com" 
           Enabled="False">TheDeveloperArk@gmail.com</asp:TextBox><br />

      <asp:Label ID="feedback" runat="server" Text="FeedBack:"></asp:Label>
   
      <asp:TextBox ID="txtname" Cssclass="w3-input w3-border w3-round" runat="server"  placeholder="Name"></asp:TextBox><br />
    <asp:TextBox ID="txtb" Cssclass="w3-input w3-border w3-round" runat="server" TextMode="MultiLine" Columns="20" Rows="5" placeholder="Message Us"  ></asp:TextBox>
    <br />
    <asp:Button ID="btnSubmit" Cssclass="w3-dark-grey w3-btn w3-round" 
          Text="Send Message" runat="server" onclick="btnSubmit_Click"  />

      <asp:TextBox ID="txtdeveloper" runat="server" 
           Visible="False">thedeveloperark@gmail.com</asp:TextBox>

     <asp:TextBox ID="txtpassword" runat="server"  
           TextMode="Password"
           Visible="False">TheDeveloperArk@123</asp:TextBox>
           <br />
           <hr  class="w3-dark-gray" style="height:2px"/>
        Subscribe To Our Newsletter::
      <asp:TextBox ID="txtsubscribe" Cssclass="w3-input w3-border w3-round" runat="server"></asp:TextBox>
      &nbsp; 
      <asp:Button ID="subscribe"  Cssclass="w3-dark-grey w3-btn w3-round" 
          Text="Subscribe" runat="server" onclick="subscribe_Click"  />
      <asp:Label ID="txtmessage" runat="server" Visible="False" >Hi, 
      Welcome to D.I.Y Ark !! Your Subscription for our Newsletter is Activated!
      You will Recieve Weekly Updates from Us! Best of our content.
      We welcome you , to ur community with warm regards.
                                                      -TheDeveloper.
   
      
      
      </asp:Label>






      <!--FOR LOGIN MODAL-->
 
   <div class="modal fade p-md-4 well-lg w3-card-4 " id="myrg" role="dialog">
    <div class="modal-dialog modal-lg  ">
        <div class="modal-content ">
           
        
        <div class="modal-body" style="padding:40px 50px;">
                 <button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="w3-center">
                
                <asp:Label ID="Label1" runat="server" CssClass="text-info table-responsive w3-text w3-large modal-title " style="font-family:MS Sans Serif" Text="Explore Tech!"></asp:Label>
            <hr class="bg-blue" style="height:2px"/>
                </div>
            
            <div class="form-group">
              <label for="usrname"><span class=" fa fa-user"></span> User ID</label>
              <input type="text" class="form-control" id="usrname" placeholder="ID">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              <input type="text" class="form-control" id="psw" placeholder="Password">
            </div>
            <div class="checkbox">
              <label><input type="checkbox" value="" checked>Remember Me</label>
            </div>
            <hr class="bg-blue" style="height:2"/>
            <div class="w3-center">
              <asp:Button runat="server" ID="lgbtn"
                    CssClass="btn btn-outline-info w3-large w3-left-align " 
                    Text="Log In" onclick="lgbtn_Click"  />
               
                
                &nbsp; <a  class="btn btn-outline-danger w3-large " href="#" data-dismiss="modal">Cancel</a>
         </div>
        </div>
        <div class="modal-footer">
         
       
           
        
          <a class="nav-link" href="#">Forgot Password?</a>
        </div>
      </div>
              
        </div>
    </div>
   </div>
   
   <!---->







      
        </form>
    <div class="w3-section w3-padding-top w3-large w3-center">
       Follow Us On!
    <a href="http://www.facebook.com" class="w3-hover-white w3-hover-text-indigo w3-show-inline-block"><i class="fa fa-facebook-official w3-xlarge"></i></a>
    <a href="http://www.instagram.com" class="w3-hover-white w3-hover-text-purple w3-show-inline-block"><i class="fa fa-instagram  w3-xlarge"></i></a>
    <a href="http://www.snapchat.com" class="w3-hover-white w3-hover-text-yellow w3-show-inline-block"><i class="fa fa-snapchat  w3-xlarge"></i></a>
    <a href="http://www.pinterest.com" class="w3-hover-white w3-hover-text-red w3-show-inline-block"><i class="fa fa-pinterest-p  w3-xlarge"></i></a>
    <a href="http://www.twitter.com" class="w3-hover-white w3-hover-text-light-blue w3-show-inline-block"><i class="fa fa-twitter  w3-xlarge"></i></a>
    <a href="http://www.linkedin.com" class="w3-hover-white w3-hover-text-indigo w3-show-inline-block"><i class="fa fa-linkedin  w3-xlarge"></i></a>
  </div>   
     </div>
    </div>
    </div>
   <footer class="footer w3-dark-grey ">
      <div class="container  text-white">
        <p class=" w3-center text-white blockquote-footer w3-large">Developed By: TheDeveloper Team.</p>
      </div>
    </footer>
</body>
<script src="jquery-3.1.1.min.js" type="text/javascript"></script>

<script src="bootstrap.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("#myBtn").click(function () {
            $("#myModal").modal();
        });
    });

    function myFunction() {
        
        if (document.getElementById("navDemo").className.indexOf("w3-show") == -1) {
            document.getElementById("navDemo").className += " w3-show";
        } else {
            document.getElementById("navDemo").className = document.getElementById("navDemo").className.replace(" w3-show", "");
        }
    }

</script>
</html>