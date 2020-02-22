<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gresult.aspx.cs" Inherits="FinalProject.gresult" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
</head>
<body>
    <form id="form1" runat="server">
    
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:gresultstring %>" 
        
        SelectCommand="SELECT * FROM [EveryGA] WHERE ([Model] LIKE '%' + @Model + '%')">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="r9" Name="Model" SessionField="test" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DataList ID="dl1" runat="server" DataKeyField="EveryGA_id" 
        DataSourceID="SqlDataSource1" RepeatColumns="1" RepeatDirection="Horizontal" >
            <ItemTemplate>
                   <div class=" w3-hover-border-red w3-table table-bordered table-responsive">
                   
            <table id="table 1">
                    <tr>
                <td>
                 <img src="<%#Eval("images") %>" alt=""  />
                </td>
               
            </tr>




                <tr>
                <td>
                   <asp:Label ID="label1" runat="server" cssclass="w3-text-red"  style="font-family:Segoe UI" Text="Model: "/>
                </td>
                <td>
                
                 <%# Eval("Model") %>
                </td>
            </tr>

        

             <tr>
                <td>
                <asp:Label ID="label2" runat="server" cssclass="w3-text-red"  style="font-family:Segoe UI " Text="GPU Architecture: "/>
                
                </td>
                <td>
                
                 <%# Eval("GPU_Architecture") %>
                </td>
            </tr>
  

              <tr>
                <td>
                 <asp:Label ID="label3" runat="server" cssclass="w3-text-red"  style="font-family:Segoe UI " Text="DirectX: "/>
                
                </td>
                <td>
                
                 <%# Eval("DirectX") %>
                </td>
            </tr>
            
            
             <tr>
                <td>
                <asp:Label ID="label4" runat="server" cssclass="w3-text-red"  style="font-family:Segoe UI " Text="Mantle API: "/>
                </td>
                <td>
                
                 <%# Eval("Mantle_API") %>
                </td>
            </tr>
            
           

            <tr>
                <td>
             <asp:Label ID="label5" runat="server" cssclass="w3-text-red"  style="font-family:Segoe UI" Text="Vulkan API: "/>
                </td>
                <td>
                
                <%# Eval("Vulkan_API") %>
                </td>
            </tr>
            
          

           <tr>
                <td>
              <asp:Label ID="label6" runat="server" cssclass="w3-text-red"  style="font-family:Segoe UI" Text="OpenGL: "/>
                </td>
                <td>
                
               <%# Eval("OpenGL") %>
                </td>
            </tr>
          

            <tr>
                <td>
              <asp:Label ID="label7" runat="server" cssclass="w3-text-red"  style="font-family:Segoe UI Light" Text="OpenCL: "/>
                </td>
                <td>
                
             <%# Eval("OpenCL") %>
                </td>
            </tr>
           
          

             <tr>
                <td>
             <asp:Label ID="label8" runat="server" cssclass="w3-text-red"  style="font-family:Segoe UI " Text="PCI Experss Version: "/>
                </td>
                <td>
                
           <%# Eval("PCI_Experss_Version") %>
                </td>
            </tr>
           
          
           <tr>
                <td>
            <asp:Label ID="label9" runat="server" cssclass="w3-text-red"  style="font-family:Segoe UI " Text="AMD Powertune Technology: "/>
                </td>
                <td>
                
            <%# Eval("AMD_Powertune_Technology") %>
                </td>
            </tr>
           
            <tr>
                <td>
                     <asp:Label ID="label10" runat="server" cssclass="w3-text-red"  style="font-family:Segoe UI " Text="DDMA Audio: "/>
                </td>
                <td>
                
             <%# Eval("DDMA_Audio") %>
                </td>
            </tr>

            <tr>
                <td>
                     <asp:Label ID="label11" runat="server" cssclass="w3-text-red"  style="font-family:Segoe UI " Text="4K Resolution Support: "/>
                </td>
                <td>
                
             <%# Eval("4K_Resolution_Support") %>
                </td>
            </tr>

           
            
            
            


         
            <tr>
                <td>
                     <asp:Label ID="label12" runat="server" cssclass="w3-text-red"  style="font-family:Segoe UI " Text="HDMI: "/>
                </td>
                <td>
                
             <%# Eval("HDMI") %>
                </td>
            </tr>
             <tr>
                <td>
                     <asp:Label ID="label13" runat="server" cssclass="w3-text-red"  style="font-family:Segoe UI " Text="Trueaudio_Technology: "/>
                </td>
                <td>
                
             <%# Eval("Trueaudio_Technology") %>
                </td>
            </tr>
             <tr>
                <td>
                     <asp:Label ID="label14" runat="server" cssclass="w3-text-red"  style="font-family:Segoe UI " Text="AMD Eyefinity Technology: "/>
                </td>
                <td>
                
             <%# Eval("AMD_Eyefinity_Technology") %>
                </td>
            </tr>
             <tr>
                <td>
                     <asp:Label ID="label15" runat="server" cssclass="w3-text-red"  style="font-family:Segoe UI " Text="Video Codec Engine: "/>
                </td>
                <td>
                
             <%# Eval("Video_Codec_Engine") %>
                </td>
            </tr>
             <tr>
                <td>
                     <asp:Label ID="label16" runat="server" cssclass="w3-text-red"  style="font-family:Segoe UI " Text="GPU Clock Speed: "/>
                </td>
                <td>
                
             <%# Eval("GPU_Clock_Speed") %>
                </td>
            </tr>



             <tr>
                <td>
                     <asp:Label ID="label17" runat="server" cssclass="w3-text-red"  style="font-family:Segoe UI " Text="Memory Bandwidth: "/>
                </td>
                <td>
                
             <%# Eval("Memory_Bandwidth")%>
                </td>
            </tr>
             <tr>
                <td>
                     <asp:Label ID="label18" runat="server" cssclass="w3-text-red"  style="font-family:Segoe UI " Text="Memory Amount: "/>
                </td>
                <td>
                
             <%# Eval("Memory_Amount")%>
                </td>
            </tr>
             <tr>
                <td>
                     <asp:Label ID="label19" runat="server" cssclass="w3-text-red"  style="font-family:Segoe UI " Text="Steam Processing Unit: "/>
                </td>
                <td>
                
             <%# Eval("Stream_Processing_Unit")%>
                </td>
            </tr>
             <tr>
                <td>
                     <asp:Label ID="label20" runat="server" cssclass="w3-text-red"  style="font-family:Segoe UI " Text="Power Supply: "/>
                </td>
                <td>
                
             <%# Eval("Required_Power_Supply_Connector")%>
                </td>
                
        

         
            </tr>
             <tr>
                <td>
                     <asp:Label ID="label21" runat="server" cssclass="w3-text-red"  style="font-family:Segoe UI " Text="Crossfire Support: "/>
                </td>
                <td>
                
             <%# Eval("AMD_Crossfire_Support")%>
                </td>
            </tr>



              <tr>
                <td>
                     <asp:Label ID="label22" runat="server" cssclass="w3-text-red"  style="font-family:Segoe UI " Text="Form Factor: "/>
                </td>
                <td>
                
             <%# Eval("Form_Factor")%>
                </td>
            </tr>
              <tr>
                <td>
                     <asp:Label ID="label23" runat="server" cssclass="w3-text-red"  style="font-family:Segoe UI " Text="High Bandwidth Memory: "/>
                </td>
                <td>
                
             <%# Eval("High_Bandwidth_Memory")%>
                </td>
            </tr>
             <tr>
                <td>
                     <asp:Label ID="label24" runat="server" cssclass="w3-text-red"  style="font-family:Segoe UI " Text="VSR: "/>
                </td>
                <td>
                
             <%# Eval("VSR")%>
                </td>
            </tr>
             <tr>
                <td>
                     <asp:Label ID="label25" runat="server" cssclass="w3-text-red"  style="font-family:Segoe UI " Text="AMD FreeSync Technology: "/>
                </td>
                <td>
                
             <%# Eval("AMD FreeSync Technology")%>
                </td>
            </tr>
            <tr>
                <td>
                     <asp:Label ID="label26" runat="server" cssclass="w3-text-red"  style="font-family:Segoe UI " Text="AMD Liquid VR Technology: "/>
                </td>
                <td>
                
             <%# Eval("AMD_LiquidVR_technology")%>
                </td>
            </tr>
            <tr>
                <td>
                     <asp:Label ID="label27" runat="server" cssclass="w3-text-red"  style="font-family:Segoe UI " Text="Frame Rate Target Control: "/>
                </td>
                <td>
                
             <%# Eval("Frame_Rate_Target_Controll")%>
                </td>
            </tr>
              <tr>
                <td>
                     <asp:Label ID="label28" runat="server" cssclass="w3-text-red"  style="font-family:Segoe UI " Text="AMD ZeroCore Power Technology: "/>
                </td>
                <td>
                
             <%# Eval("AMD_ZeroCore_Power_Technology")%>
                </td>
            </tr>
            <tr>
                <td>
                     <asp:Label ID="label29" runat="server" cssclass="w3-text-red"  style="font-family:Segoe UI " Text="AMD HD3D Technology: "/>
                </td>
                <td>
                
             <%# Eval("AMD_HD3D_Technology")%>
                </td>
            </tr>
                        <tr>
                <td>
                     <asp:Label ID="label30" runat="server" cssclass="w3-text-red"  style="font-family:Segoe UI " Text="Memory Interface: "/>
                </td>
                <td>
                
             <%# Eval("Memory_Interface")%>
                </td>
            </tr>
    </table>
</div>
            
</div>




    



            </ItemTemplate>


    </asp:DataList>
    
    



    </form>
</body>
</html>
