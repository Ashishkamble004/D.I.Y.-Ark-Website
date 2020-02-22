<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="intelsearch.aspx.cs" Inherits="FinalProject.intelsearch" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Search</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css?parameter=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0/css/bootstrap.min.css? parameter=1"/>
    
     <link href="bootstrap.css" rel="stylesheet" type="text/css" />
   
    <link href="bootstrap.min.css" rel="stylesheet" type="text/css" />
     <link href="myv4.css" rel="stylesheet" type="text/css" />
    <link href="myv4.min.css" rel="stylesheet" type="text/css" />

     <link href="w3.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
  <link href="font-awesome.min.css" rel="stylesheet" type="text/css" />
   
    
     <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.10.0.min.js" type="text/javascript"></script>
         <script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/jquery-ui.min.js" type="text/javascript"></script>
        <link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/themes/blitzer/jquery-ui.css"
            rel="Stylesheet" type="text/css" />





        

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


</head>
<body>
    <form id="form1" runat="server">
    
<nav class="w3-sidenav w3-white w3-animate-left" style="display:none;z-index:5" id="mySidenav">
  <header class=" w3-container w3-blue"><h3/> <a href="javascript:void(0)" 
  onclick="w3_close()"
 class="w3-closenav w3-large w3-blue"><i class="glyphicon glyphicon-home"></i>Home<span class="w3-right">&times;</span></a></h5>
  </header>
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

<div class="w3-row w3-top w3-container w3-padding-16 w3-blue ">


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
        CssClass="w3-input w3-border-blue w3-centered w3-half w3-text-blue w3-hover-shadow w3-col w3-round-large" 
        placeholder="Search Product..." Width="398px" style="margin-top: 0px;" 
        Enabled="False"></asp:TextBox>
<asp:Button ID="probutton" CssClass=" w3-btn w3-dark-grey w3-round-large" style="font-family:Segoe UI Light" 
        runat="server" Height="37px"
        Width="49px" Text="GO"  
        Enabled="False"/>
 <asp:Button ID="back" 
        CssClass=" w3-btn w3-dark-grey w3-round-large w3-right-align glyphicon-backward" style="font-family:Segoe UI Light" 
        runat="server" Height="37px"
        Width="60px" Text="Back"
         Enabled="True" onclick="back_Click"/>


&nbsp;






    






    </div> 
<!--header blue background div tag (end)-->
<div class="w3-padding-48"></div>







    <!--DATALIST STARTS-->
        <asp:DataList ID="dl1" runat="server" 
            DataSourceID="resultsource" RepeatDirection="Horizontal" RepeatColumns="4" 
        CellSpacing="5" >
            <ItemTemplate>
       <div class=" w3-hover-border-blue  w3-table  table-bordered table-responsive">

            <table id="table 1">
            <tr>
                <td>
               
                     <img src="<%# Eval("image1") %> " alt="<%# Eval("Model") %>" height="120" width="105"/>
                
                </td>
        </tr>
                <tr>
                <td>
                   <asp:Label ID="label1" runat="server" cssclass="w3-text-blue"  style="font-family:Segoe UI" Text="Model: "/>
                </td>
                <td>
                
                 <%# Eval("Model") %>
                </td>
            </tr>

        

             <tr>
                <td>
                <asp:Label ID="label2" runat="server" cssclass="w3-text-blue"  style="font-family:Segoe UI " Text="Core: "/>
                
                </td>
                <td>
                
                 <%# Eval("Core") %>
                </td>
            </tr>
  

              <tr>
                <td>
                 <asp:Label ID="label3" runat="server" cssclass="w3-text-blue"  style="font-family:Segoe UI " Text="HT: "/>
                
                </td>
                <td>
                
                 <%# Eval("HT") %>
                </td>
            </tr>
            
            
             <tr>
                <td>
                <asp:Label ID="label4" runat="server" cssclass="w3-text-blue"  style="font-family:Segoe UI " Text="Base-Clock: "/>
                </td>
                <td>
                
                 <%# Eval("Base_Clock") %>
                </td>
            </tr>
            
           

            <tr>
                <td>
             <asp:Label ID="label5" runat="server" cssclass="w3-text-blue"  style="font-family:Segoe UI" Text="Boost: "/>
                </td>
                <td>
                
                <%# Eval("Boost") %>
                </td>
            </tr>
            
          

           <tr>
                <td>
              <asp:Label ID="label6" runat="server" cssclass="w3-text-blue"  style="font-family:Segoe UI" Text="Cache: "/>
                </td>
                <td>
                
               <%# Eval("Cache") %>
                </td>
            </tr>
          

            <tr>
                <td>
              <asp:Label ID="label7" runat="server" cssclass="w3-text-blue"  style="font-family:Segoe UI Light" Text="TDP: "/>
                </td>
                <td>
                
             <%# Eval("TDP") %>
                </td>
            </tr>
           
          

             <tr>
                <td>
             <asp:Label ID="label8" runat="server" cssclass="w3-text-blue"  style="font-family:Segoe UI " Text="Socket: "/>
                </td>
                <td>
                
           <%# Eval("Socket") %>
                </td>
            </tr>
           
          
           <tr>
                <td>
            <asp:Label ID="label9" runat="server" cssclass="w3-text-blue"  style="font-family:Segoe UI " Text="Onboard Graphics: "/>
                </td>
                <td>
                
            <%# Eval("Onboard_Graphics") %>
                </td>
            </tr>
           

            <tr>
                <td>
                     <asp:Label ID="label11" runat="server" cssclass="w3-text-blue"  style="font-family:Segoe UI " Text="Architecture: "/>
                </td>
                <td>
                
             <%# Eval("Architecture") %>
                </td>
            </tr>
            
           
    </table>
</div>
                 



           
        </ItemTemplate>
        </asp:DataList>

    <asp:SqlDataSource ID="resultsource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:processorstring %>" 
        
        SelectCommand="SELECT [image1], [Model], [Core], [HT], [Base_Clock], [Boost], [Cache], [TDP], [Socket], [Onboard_Graphics], [Motherboard_price_factor], [Architecture] FROM [Every] WHERE ([Model] LIKE '%' + @Model + '%')">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="xeon" Name="Model" SessionField="data" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>


    
    </form>
</body>
</html>


