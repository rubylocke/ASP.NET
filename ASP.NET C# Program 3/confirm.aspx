<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="confirm.aspx.cs" Inherits="RubyLocke_Unit03.confirm" %>
<%@ PreviousPageType VirtualPath="~/default.aspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Unit 02</title>
    <meta name = "description" content = "Unit 02" />
	<meta name = "keywords" content = "Ruby Locke" />

    <meta name="viewport"
        content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="main.css" rel = "stylesheet" type = "text/css" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
  <form id="form1" runat="server">
    <div>
       <h1>Quotation confirmation</h1>
    </div>
    <div>
        <p><asp:Label ID="lblSalesPrice" runat="server" Text="Sales Price"></asp:Label>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Label ID="lblOutSalesPrice" runat="server" CssClass="text-info"></asp:Label>
        </p>
        <p><asp:Label ID="lblDiscAmount" runat="server" Text="Discount Amount"></asp:Label>
           &nbsp;&nbsp;&nbsp;
           <asp:Label ID="lblOutDiscAmt1" runat="server" CssClass="text-info"></asp:Label>
        </p>
        <p><asp:Label ID="lblTotalPrice" runat="server" Text="Total Price"></asp:Label>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Label ID="lblOutPrice1" runat="server" CssClass="text-info"></asp:Label>
        </p>
        <br />
        <asp:Button ID="btnReturn" runat="server" Text="Return" OnClick="btnReturn_Click" CssClass="btn" PostBackUrl="~/default.aspx" />
     
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;
         
        </div>
        <br />
        <br />
    </form>
  </body>
</html>