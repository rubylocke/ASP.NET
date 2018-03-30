<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Unit01_Price_quote._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            z-index: 1;
            left: 10px;
            top: 15px;
            position: absolute;
            height: 366px;
            width: 1163px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <h1>Price Quotation</h1>
    </div>
    <div>
        <asp:Label ID="lblSalesPrice" runat="server" Text="Sales Price"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbSalesPrice" runat="server" OnTextChanged="tbSalesPrice_TextChanged" style="top: 64px; left: 165px; position: absolute; height: 25px; width: 168px"></asp:TextBox>
        <p>
            <asp:Label ID="lblDisPercent" runat="server" Text="Discount Percent"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tbDiscPercent" runat="server" style="z-index: 1; left: 164px; top: 105px; position: absolute"></asp:TextBox>
        </p>
        <asp:Label ID="lblDiscAmount" runat="server" Text="Discount Amount"></asp:Label>
&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="lblOutDiscAmt" runat="server" BorderStyle="Inset" Height="25px" Width="144px" style="top: 146px; left: 165px; position: absolute"></asp:Label>
&nbsp;<p>
            <asp:Label ID="lblTotalPrice" runat="server" Text="Total Price"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblOutPrice" runat="server" BorderStyle="Inset" Height="25px" Width="144px" style="text-align: left; top: 187px; left: 165px; position: absolute"></asp:Label>
        </p>
        <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" />
     
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" />
     
        </div>
        <asp:RangeValidator ID="rvSalesPrice" runat="server" ControlToValidate="tbSalesPrice"  Display="Dynamic" ErrorMessage="Sales Price must be 10 or greater and equal to/less than 1000" MaximumValue="1000" MinimumValue="10" Type="Double" ForeColor="Red"></asp:RangeValidator>
        <br />
        <br />
        <asp:RangeValidator ID="rvDiscountPer" runat="server" ControlToValidate="tbDiscPercent" Display="Dynamic" ErrorMessage="Discount Percent must be 10 or greater and AND equal to/less than 50" MaximumValue="50" MinimumValue="10" Type="Double" ForeColor="Red"></asp:RangeValidator>
    </form>
</body>
</html>
