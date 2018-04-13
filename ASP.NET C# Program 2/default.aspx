<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="RubyLocke_Unit02._default" %>

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
  <main>
    <form id="form1" runat="server" class="form-horizontal" role="form">
    <div>
       <h1>Price Quotation</h1>
    </div>
    <div class="form-group">
        <label class="control-label" for="lblSalesPrice">Sales Price</label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="text-danger"
             ControlToValidate="tbSalesPrice" Display="Dynamic" ErrorMessage="Required.">
        </asp:RequiredFieldValidator>
        <div class="col-md-3">
             <asp:TextBox ID="tbSalesPrice" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label" for="lblDisPercent">Discount Percent</label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbDiscPercent" Display="Dynamic"
               ErrorMessage="Required." CssClass="text-danger"></asp:RequiredFieldValidator>
        <div class="col-md-3">
            <asp:TextBox ID="tbDiscPercent" runat="server" CssClass="form-control" ></asp:TextBox>
        </div>
     </div>

    <div class="form-group">
        <label class="control-label" for="lblDiscAmount">Discount Amount</label>
        <asp:Label ID="lblOutDiscAmt" runat="server" CssClass="text-info"></asp:Label>
    </div>
    <div class="form-group">
        <label class="control-label" for="lblTotalPrice">Total Price</label>
         <asp:Label ID="lblOutPrice" runat="server" CssClass="text-info"></asp:Label>
    </div>
 
    <div class="form-group">
        <div class="col-md-offset-3 col-md-9">
           <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" CssClass="btn btn-primary"/>
           <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" CssClass="btn btn-primary"/>
         </div>
     </div>
     <div>
        <br />
        <br />
        <asp:RangeValidator ID="rvSalesPrice" runat="server" ControlToValidate="tbSalesPrice"  Display="Dynamic" ErrorMessage="Sales Price must be 10 or greater and equal to/less than 1000" MaximumValue="1000" MinimumValue="10" Type="Double" ForeColor="Red"></asp:RangeValidator>
        <br />
        <br />
        <asp:RangeValidator ID="rvDiscountPer" runat="server" ControlToValidate="tbDiscPercent" Display="Dynamic" ErrorMessage="Discount Percent must be 10 or greater and AND equal to/less than 50" MaximumValue="50" MinimumValue="10" Type="Double" ForeColor="Red"></asp:RangeValidator>
     </div>
   </form>
  </main>
</body>
</html>

