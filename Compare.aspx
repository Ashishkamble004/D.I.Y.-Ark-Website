<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="Compare.aspx.cs" Inherits="admission.SpecificationPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 104px;
        }
        .style2
        {
            width: 104px;
        }
        .style3
        {
            width: 208px;
            height: 220px;
        }
        .style4
        {
            width: 208px;
            height: 65px;
        }
        .style5
        {
            height: 65px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h1>COMPARE</h1>

    <div class="clear hideSkiplink">
                <asp:Menu id="cpMenu" runat="server" CssClass="menu" 
                    EnableViewState="false" IncludeStyleBlock="False" Orientation="Horizontal" 
                    DisappearAfter="100">
                    <Items>
                        <asp:MenuItem NavigateUrl="" Text="CAMERA COMPARE"/>
                        <asp:MenuItem NavigateUrl="" Text="VIDEO COMAPRE"/>
                    </Items>
                </asp:Menu>
     </div>
    <asp:SqlDataSource ID="ComSDS" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [mob_name] FROM [Mobile_info]"></asp:SqlDataSource>
     <table id="Table1" runat="server" align="center" width="100%" border="1">
     <tr>
        <td></td>
        <td align="center">
            <asp:DropDownList ID="ComDDL1" runat="server" DataSourceID="ComSDS" 
                DataTextField="mob_name" DataValueField="mob_name" 
                AppendDataBoundItems="True" >
                <asp:ListItem Selected="True" Value="0" Text="Select"></asp:ListItem>
            </asp:DropDownList>
        </td>
        <td align="center">
            <asp:DropDownList ID="ComDDL2" runat="server" DataSourceID="ComSDS" 
                DataTextField="mob_name" DataValueField="mob_name" 
                AppendDataBoundItems="True" >
                <asp:ListItem Selected="True" Value="0" Text="Select"></asp:ListItem>
            </asp:DropDownList>
        </td>
        <td align="center">
            <asp:DropDownList ID="ComDDL3" runat="server" DataSourceID="ComSDS" 
                DataTextField="mob_name" DataValueField="mob_name" 
                AppendDataBoundItems="True">
                <asp:ListItem Selected="True" Value="0" Text="Select"></asp:ListItem>
            </asp:DropDownList>
        </td>
        <td align="center">
            <asp:DropDownList ID="ComDDL4" runat="server" DataSourceID="ComSDS" 
                DataTextField="mob_name" DataValueField="mob_name" 
                AppendDataBoundItems="True" >
                <asp:ListItem Selected="True" Value="0" Text="Select"></asp:ListItem>
            </asp:DropDownList>&nbsp;&nbsp;
            <asp:Button ID="ComBtn4" runat="server" Text="Go" onclick="ComBtn4_Click" />
        </td>
     </tr>
     <tr>

        <td>
            <table runat="server" align="center" width="100%" height="100%" border="1">
                <tr>
                    <td class="style1"><b>Network</b></td>
                    <td class="style2">Technology</td>
                </tr>
                <tr>
                    <td rowspan="2" class="style1"><b>Launch</b></td>
                    <td class="style2">Announced</td>
                </tr>
                <tr>
                    <td class="style2">Status</td>
                </tr>
                <tr>
                    <td rowspan="3" class="style1"><b>Body</b></td>
                    <td class="style2">Dimensions</td>
                </tr>
                <tr>
                    <td class="style2">Weight</td>
                </tr>
                <tr>
                     <td class="style2">SIM</td>
                </tr>
                <tr>
                     <td rowspan="4" class="style1"><b>Display</b></td>
                     <td class="style2">Type</td>
                </tr>
                <tr>
                    <td class="style2">Size</td>
                </tr>
                <tr>
                    <td class="style2">Resolution</td>
                </tr>
                <tr>
                     <td class="style2">Protection Glass</td>
                </tr>
                <tr>
                      <td rowspan="2" class="style1"><b>Platform</b></td>
                      <td class="style2">OS</td>
                </tr>
                <tr>
                      <td class="style2">CPU</td>
                </tr>
                <tr>
                     <td rowspan="2" class="style1"><b>Memory</b></td>
                     <td class="style2">Card Slot</td>
                </tr>
                <tr>
                      <td class="style2">Internal</td>
                </tr>
                 <tr>
                        <td rowspan="4" class="style1"><b>Camera</b></td>
                        <td class="style2">Primary</td>
                </tr>
                <tr>
                        <td class="style2">Secondory</td>
                </tr>
                <tr>
                        <td class="style2">Video</td>
                </tr>
                <tr>
                        <td class="style2">Features</td>
                </tr>
                <tr>
                        <td rowspan="2" class="style1"><b>Sound</b></td>
                        <td class="style2">Alert TYpe</td>
                </tr>
                <tr>
                      <td class="style2">Speaker</td>
                </tr>
                <tr>
                        <td rowspan="6" class="style1"><b>Communication</b></td>
                         <td class="style2">WLAN</td>
                </tr>
                 <tr>
                            <td class="style2">Bluetooth</td>
                 </tr>
                  <tr>
                             <td class="style2">GPS</td>
                  </tr>
                  <tr>
                            <td class="style2">NFC</td>
                   </tr>
                   <tr>
                             <td class="style2">Radio</td>
                   </tr>
                    <tr>
                             <td class="style2">USB</td>
                    </tr>
                    <tr>
                               <td rowspan="3" class="style1"><b>Features</b></td>
                                <td class="style2">Sensors</td>
                    </tr>
                    <tr>
                            <td class="style2">Browser</td>
                    </tr>
                    <tr>
                            <td class="style2">Java</td>
                    </tr>
                     <tr>
                             <td rowspan="3" class="style1"><b>Battery</b></td>
                          <td class="style2">Stand-By</td>   
                    </tr>
                    <tr>
                            <td class="style2">Talk Time</td>
                     </tr>
                    <tr>
                             <td class="style2">Music Play</td>
                    </tr>
                    <tr>
                              <td class="style1"><b>Color</b></td>
                              <td></td>
                     </tr>
            </table>   
        </td>

        <td id="td1" height="100%"> 
        </td>
        <td id="td2" height="100%">  
        </td>
        <td id="td3" height="100%" >
        </td>
        <td id="td4" height="100%">   
        </td>
     </tr>
     </table>
</asp:Content>
