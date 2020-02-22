<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gnvidiaresult.aspx.cs" Inherits="FinalProject.gnvidiaresult" %>

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
</head>
<body>
    <form id="form1" runat="server">
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:graphicstring %>" 
        SelectCommand="SELECT [Model], [CUDA_Cores], [Base_Clock], [Boost_Clock], [Texture_Fill_Rate], [Standard_Memory_Config], [Standard_Clock], [Interface_Width], [Bandwidth], [Graphics_Card_Power], [Supported_Technologies] FROM [EveryGn] WHERE ([Model] LIKE '%' + @Model + '%')">
        <SelectParameters>
            <asp:SessionParameter Name="Model" SessionField="test" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DataList ID="dl1" runat="server" DataSourceID="SqlDataSource1" 
        RepeatColumns="3" RepeatDirection="Horizontal">
        <ItemTemplate>
            Model:
            <asp:Label ID="ModelLabel" runat="server" Text='<%# Eval("Model") %>' />
            <br />
            CUDA_Cores:
            <asp:Label ID="CUDA_CoresLabel" runat="server" 
                Text='<%# Eval("CUDA_Cores") %>' />
            <br />
            Base_Clock:
            <asp:Label ID="Base_ClockLabel" runat="server" 
                Text='<%# Eval("Base_Clock") %>' />
            <br />
            Boost_Clock:
            <asp:Label ID="Boost_ClockLabel" runat="server" 
                Text='<%# Eval("Boost_Clock") %>' />
            <br />
            Texture_Fill_Rate:
            <asp:Label ID="Texture_Fill_RateLabel" runat="server" 
                Text='<%# Eval("Texture_Fill_Rate") %>' />
            <br />
            Standard_Config:
            <asp:Label ID="Standard_ConfigLabel" runat="server" 
                Text='<%# Eval("Standard_Memory_Config") %>' />
            <br />
            Standard_Clock:
            <asp:Label ID="Standard_ClockLabel" runat="server" 
                Text='<%# Eval("Standard_Clock") %>' />
            <br />
            Interface_Width:
            <asp:Label ID="Interface_WidthLabel" runat="server" 
                Text='<%# Eval("Interface_Width") %>' />
            <br />
            Bandwidth:
            <asp:Label ID="BandwidthLabel" runat="server" Text='<%# Eval("Bandwidth") %>' />
            <br />
            Graphics_Card_Power:
            <asp:Label ID="Graphics_Card_PowerLabel" runat="server" 
                Text='<%# Eval("Graphics_Card_Power") %>' />
            <br />
            Supported_Technologies:
            <asp:Label ID="Supported_TechnologiesLabel" runat="server" 
                Text='<%# Eval("Supported_Technologies") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
   
    </form>
</body>
</html>
