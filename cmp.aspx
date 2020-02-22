<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cmp.aspx.cs" Inherits="FinalProject.cmp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css?parameter=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0/css/bootstrap.min.css? parameter=1" />
    <link href="bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="myv4.css" rel="stylesheet" type="text/css" />
    <link href="bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="myv4.min.css" rel="stylesheet" type="text/css" />
    <link href="w3.css" rel="stylesheet" type="text/css" />
    <link href="font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="gcss.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
      <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.10.0.min.js" type="text/javascript"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/jquery-ui.min.js" type="text/javascript"></script>
    <link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/themes/blitzer/jquery-ui.css"
        rel="Stylesheet" type="text/css" />
   
  
     
    <title>Compare Products</title>
</head>
<body>
    <form id="Form1" runat="server">
    
   
   
    <div class="nav btn-toolbar w3-dark-grey w3-large w3-round-medium">
        <ul class="nav ">
            <li class="w3-dark-grey "><a class="w3-dark-grey w3-hover-text-aqua nav-link" href="Homepage.aspx">
                Home</a> </li>
            <li class="w3-blue"><a class="w3-blue w3-hover-text-aqua active nav-link" href="intelprocessor.aspx">
                Processor Ark</a> </li>
            <li class=" w3-dark-grey"><a class="w3-dark-grey w3-hover-text-aqua nav-link" href="graphiccards.aspx">
                Graphic cards</a> </li>
            <li class="w3-dark-grey "><a class="w3-dark-grey w3-hover-text-aqua nav-link" href="corsair.aspx">
                Memory Collection</a> </li>
            <li class=" w3-dark-grey "><a class="w3-dark-grey w3-hover-text-aqua nav-link" href="intelssd.aspx">
                SSD Collection</a> </li>
            <li class=" w3-dark-grey "><a class="w3-dark-grey w3-hover-text-aqua nav-link" href="About.aspx">
                About Us</a> </li>
            <li class=" w3-dark-grey "><a class="w3-dark-grey w3-hover-text-aqua nav-link" href="forum.aspx">
                D.I.Y Forum</a> </li>
        </ul>
    </div>

    <div class="w3-center w3-section">
        <hr class="w3-blue" style="height:2px"/>    
            <p class="w3-xlarge w3-text-blue" style="font-family:Segoe UI Light">Compare Processors</p>  
         <hr class="w3-blue" style="height:2px"/> 
    </div>
    
    <div class="w3-center">
   
    
     <asp:TextBox ID="pt1" runat="server" CssClass="w3-input w3-border-blue offset-1 text-primary w3-hover-shadow w3-col w3-round-large "
            placeholder="Enter Product 1" Width="398px" ></asp:TextBox>
             <asp:TextBox ID="pt2" runat="server" CssClass="w3-input w3-border-blue offset-3   text-primary w3-hover-shadow w3-col w3-round-large "
            placeholder="Enter Product 2" Width="398px" ></asp:TextBox>
            <br />
   

        
    </div>
    <br />
    <br />
    <br />

               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="cp" runat="server" CssClass="offset-5 btn btn-outline-primary w3-large w3-round-large"
                    Text="Compare" onclick="cp_Click" />
         
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:processorstring %>" 
        SelectCommand="SELECT [Model] FROM [Every] WHERE ([Model] LIKE '%' + @Model + '%')">
        <SelectParameters>
            <asp:Parameter Name="Model" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>



    <%--<div class="w3-row">
            <!--Heading-->
            
            <div class="w3-row w3-hover-shadow w3-card-4">
                <div class="w3-col w3-accordion w3-hover-shadow offset-1  w3-border w3-hover-border-blue "
                    style="width: 25%">
                    
                    <div>
                       
                        <asp:Table ID="Table1" runat="server" CssClass="w3-table" CellPadding="1" 
                            CellSpacing="1" Visible="False">
                            <asp:TableHeaderRow>
                                <asp:TableCell CssClass="w3-text-blue " Style="font-family: Segoe UI Light">Model Name: </asp:TableCell>
                                <asp:TableCell Style="font-family: Segoe UI Light">
                                    <asp:Label ID="ml" runat="server" Text="l" ></asp:Label>
                                    </asp:TableCell>
                            </asp:TableHeaderRow>
                            <asp:TableRow>
                                <asp:TableCell CssClass="w3-text-blue " Style="font-family: Segoe UI Light">Base Clock: </asp:TableCell>
                                <asp:TableCell Style="font-family: Segoe UI Light">
                                 <asp:Label ID="bl" runat="server" Text="l"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
                             <asp:TableRow>
                                <asp:TableCell CssClass="w3-text-blue " Style="font-family: Segoe UI Light">Core: </asp:TableCell>
                                <asp:TableCell Style="font-family: Segoe UI Light">
                                 <asp:Label ID="cl" runat="server" Text="l" ></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell CssClass="w3-text-blue " Style="font-family: Segoe UI Light">Cache:</asp:TableCell>
                                <asp:TableCell Style="font-family: Segoe UI Light">
                                 <asp:Label ID="cal" runat="server" Text="l"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell CssClass="w3-text-blue " Style="font-family: Segoe UI Light">Boost:</asp:TableCell>
                                <asp:TableCell Style="font-family: Segoe UI Light">
                                 <asp:Label ID="bol" runat="server" Text="l">
                                 
                                 </asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell CssClass="w3-text-blue " Style="font-family: Segoe UI Light">HT:</asp:TableCell>
                                <asp:TableCell Style="font-family: Segoe UI Light">
                                 <asp:Label ID="hl" runat="server" Text="l"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell CssClass="w3-text-blue " Style="font-family: Segoe UI Light">Socket:</asp:TableCell>
                                <asp:TableCell Style="font-family: Segoe UI Light">
                                 <asp:Label ID="sol" runat="server" Text="l"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell CssClass="w3-text-blue " Style="font-family: Segoe UI Light">Onboard Graphics:</asp:TableCell>
                                <asp:TableCell Style="font-family: Segoe UI Light">
                                 <asp:Label ID="ogl" runat="server" ></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
                             <asp:TableRow>
                                <asp:TableCell CssClass="w3-text-blue " Style="font-family: Segoe UI Light">Architecture:</asp:TableCell>
                                <asp:TableCell Style="font-family: Segoe UI Light">
                                 <asp:Label ID="arl" runat="server" Text="l"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell CssClass="w3-text-blue " Style="font-family: Segoe UI Light">TDP:</asp:TableCell>
                                <asp:TableCell Style="font-family: Segoe UI Light">
                                 <asp:Label ID="tdpl" runat="server" Text="l"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                        
                        
                    </div>
                </div>
                <div class="w3-col  w3-accordion offset-4  w3-hover-shadow  w3-border w3-hover-border-blue "
                    style="width: 25%">
                   
                    <div>
                       
                        <asp:Table ID="Table2" runat="server" CssClass="w3-table " CellPadding="1" CellSpacing="1" Visible="False">
                            <asp:TableHeaderRow>
                                <asp:TableCell CssClass="w3-text-blue " Style="font-family: Segoe UI Light">Model Name: </asp:TableCell>
                                <asp:TableCell Style="font-family: Segoe UI Light">
                                    <asp:Label ID="m1l" runat="server" Text="l" ></asp:Label>
                                    </asp:TableCell>
                            </asp:TableHeaderRow>
                            <asp:TableRow>
                                <asp:TableCell CssClass="w3-text-blue " Style="font-family: Segoe UI Light">Base Clock: </asp:TableCell>
                                <asp:TableCell Style="font-family: Segoe UI Light">
                                 <asp:Label ID="b1l" runat="server" Text="l" ></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
                             <asp:TableRow>
                                <asp:TableCell CssClass="w3-text-blue " Style="font-family: Segoe UI Light">Core: </asp:TableCell>
                                <asp:TableCell Style="font-family: Segoe UI Light">
                                 <asp:Label ID="c1l" runat="server" Text="l"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell CssClass="w3-text-blue " Style="font-family: Segoe UI Light">Cache:</asp:TableCell>
                                <asp:TableCell Style="font-family: Segoe UI Light">
                                 <asp:Label ID="ca1l" runat="server" Text="l"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell CssClass="w3-text-blue " Style="font-family: Segoe UI Light">Boost:</asp:TableCell>
                                <asp:TableCell Style="font-family: Segoe UI Light">
                                 <asp:Label ID="bo1l" runat="server" Text="l">
                                 </asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell CssClass="w3-text-blue " Style="font-family: Segoe UI Light">HT:</asp:TableCell>
                                <asp:TableCell Style="font-family: Segoe UI Light">
                                 <asp:Label ID="h1l" runat="server" Text="l"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell CssClass="w3-text-blue " Style="font-family: Segoe UI Light">Socket:</asp:TableCell>
                                <asp:TableCell Style="font-family: Segoe UI Light">
                                 <asp:Label ID="so1l" runat="server" Text="l"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell CssClass="w3-text-blue " Style="font-family: Segoe UI Light">Onboard Graphics:</asp:TableCell>
                                <asp:TableCell Style="font-family: Segoe UI Light">
                                 <asp:Label ID="og1l" runat="server" Text="l"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
                             <asp:TableRow>
                                <asp:TableCell CssClass="w3-text-blue " Style="font-family: Segoe UI Light">Architecture:</asp:TableCell>
                                <asp:TableCell Style="font-family: Segoe UI Light">
                                 <asp:Label ID="ar1l" runat="server" Text="l"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell CssClass="w3-text-blue " Style="font-family: Segoe UI Light">TDP:</asp:TableCell>
                                <asp:TableCell Style="font-family: Segoe UI Light">
                                 <asp:Label ID="tdp1l" runat="server" Text="l"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                     
                       
                    </div>
                </div>
                </div>
                </div>--%>
               
    <asp:DataList ID="dl1" runat="server" DataSourceID="SqlDataSource2">
        <ItemTemplate>
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
            <asp:Label ID="Base_ClockLabel" runat="server" 
                Text='<%# Eval("Base_Clock") %>' />
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
            Architecture:
            <asp:Label ID="ArchitectureLabel" runat="server" 
                Text='<%# Eval("Architecture") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:DataList ID="dl2" runat="server" DataSourceID="SqlDataSource2">
        <ItemTemplate>
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
            <asp:Label ID="Base_ClockLabel" runat="server" 
                Text='<%# Eval("Base_Clock") %>' />
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
            Architecture:
            <asp:Label ID="ArchitectureLabel" runat="server" 
                Text='<%# Eval("Architecture") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:processorstring %>" 
        SelectCommand="SELECT [Model], [Core], [HT], [Base_Clock], [Boost], [Cache], [TDP], [Socket], [Onboard_Graphics], [Architecture] FROM [Every] WHERE ([Model] LIKE '%' + @Model + '%')">
        <SelectParameters>
            <asp:Parameter Name="Model" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>  
    </form>
   <%-- <script src="jquery-3.1.1.min.js" type="text/javascript"></script>--%>
    <script src="bootstrap.js" type="text/javascript"></script>
     <script type="text/javascript">
         $(function () {
             $("[id$=pt1]").autocomplete({
                 source: function (request, response) {
                     $.ajax({
                         url: '<%=ResolveUrl("~/compare.aspx/operation") %>',
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
   <script type="text/javascript">
       $(function () {
           $("[id$=pt2]").autocomplete({
               source: function (request, response) {
                   $.ajax({
                       url: '<%=ResolveUrl("~/compare.aspx/operation") %>',
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
    
   
</body>
</html>
