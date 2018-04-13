<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="RubyLocke_Unit03._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Unit 02</title>
    <meta name = "description" content = "Unit 03" />
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
       <h1>Price Quotation</h1>
    </div>
    <div>
         <p><asp:Label ID="lblMessage" runat="server" Text="Be sure to click the Calculate button before you confirm" ForeColor="Red"></asp:Label></p>

        <p><asp:Label ID="lblSalesPrice" runat="server" Text="Sales Price"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbSalesPrice" Display="Dynamic"
        ErrorMessage="Required." ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbSalesPrice" runat="server"  CssClass="text-info" OnTextChanged="tbSalesPrice_TextChanged"></asp:TextBox>&nbsp; </p>
        <p>&nbsp;</p>
        <p><asp:Label ID="lblDisPercent" runat="server" Text="Discount Percent"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbDiscPercent" Display="Dynamic"
        ErrorMessage="Required." ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbDiscPercent" runat="server"  CssClass="text-info" OnTextChanged="tbDiscPercent_TextChanged"></asp:TextBox></p>
        <p>&nbsp;</p>
        <p><asp:Label ID="lblDiscAmount" runat="server" Text="Discount Amount"></asp:Label>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Label ID="lblOutDiscAmt" runat="server"  CssClass="text-info"></asp:Label></p>
        <p><asp:Label ID="lblTotalPrice" runat="server" Text="Total Price"></asp:Label>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Label ID="lblOutPrice" runat="server"  CssClass="text-info"></asp:Label></p>
        <br />
        <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" CssClass="btn btn-primary" Height="36px" />
     
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button ID="btnConfirm" runat="server" Text="Confirm" OnClick="btnConfirm_Click" CssClass="btn-success" Height="36px" Width="80px" style="text-align:center;vertical-align:middle"></asp:Button>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="btnClear" runat="server" CssClass="btn btn-primary" Height="36px" OnClick="btnClear_Click" Text="Clear" />
             
        </div>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblCalculate" CssClass="warning" runat="server"></asp:Label>       
        <br />
        <asp:RangeValidator ID="rvSalesPrice" runat="server" ControlToValidate="tbSalesPrice"  Display="Dynamic" ErrorMessage="Sales Price must be 10 or greater and equal to/less than 1000" MaximumValue="1000" MinimumValue="10" Type="Double" ForeColor="Red"></asp:RangeValidator>
        <br />
        <br />
        <asp:RangeValidator ID="rvDiscountPer" runat="server" ControlToValidate="tbDiscPercent" Display="Dynamic" ErrorMessage="Discount Percent must be 10 or greater and AND equal to/less than 50" MaximumValue="50" MinimumValue="10" Type="Double" ForeColor="Red"></asp:RangeValidator>
    </form>
</body>
</html>

