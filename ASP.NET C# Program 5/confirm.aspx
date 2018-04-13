<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="confirm.aspx.cs" Inherits="RubyLocke_Unit05.confirm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name = "description" content = "Unit 05" />
    <meta name = "keywords" content = "Ruby Locke" />

    <meta name="viewport"
        content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="main.css" rel = "stylesheet" type = "text/css" />
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
  <main><form id="form1" runat="server" defaultfocus="lblArrivalDate">
    <div>
        <h1>Royal Inns and Suites</h1>
    </div>
    <div class="form-group">
       <label for="lblMessage1" class="control-label" style="color: #FF0000; font-style: italic;">Where you're always treated like royalty</label>
       <h1>Reservation Confirmation</h1>
       <h2>Please confirm your reservation request</h2>
    </div>
    <div class="col-md-12">
        <b><asp:Label ID="lblFirstN" runat="server" Text="First Name"></asp:Label></b>
        <asp:Label ID="lblFirstName" runat="server" Text=""></asp:Label>
    </div>
      <div class="col-md-12">
        <b><asp:Label ID="lblLastN" runat="server" Text="Last Name"></asp:Label></b>
        <asp:Label ID="lblLastName" runat="server" Text=""></asp:Label>
    </div>
      <div class="col-md-12">
        <b><asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label></b>
        <asp:Label ID="lblEmailAddress" runat="server" Text=""></asp:Label>
    </div>
        <div class="col-md-12">
        <b><asp:Label ID="lbltel" runat="server" Text="Telephone"></asp:Label></b>
        <asp:Label ID="lblPhone" runat="server"></asp:Label>
    </div>
    <div class="col-md-12">
        <b><asp:Label ID="lblPreMethod" runat="server" Text="Perferred method"></asp:Label></b>
        <asp:Label ID="lblPreferredMethod" runat="server" Text=""></asp:Label>
    </div>
      <div>
        <h2>Request data</h2>
      </div>
    <div class="col-md-12">
        <b><asp:Label ID="lblArrivalD" runat="server" Text="Arrival Date"></asp:Label></b>
        <asp:Label ID="lblArrivalDate" runat="server" Text=""></asp:Label>
    </div>
    <div class="col-md-12">
        <b><asp:Label ID="lblDepartureD" runat="server" Text="Departure Date"></asp:Label></b>
        <asp:Label ID="lblDepartDate" runat="server" Text=""></asp:Label>
    </div>
    <div class="col-md-12">
        <b><asp:Label ID="lblNoDays" runat="server" Text="No. of days"></asp:Label></b>
        <asp:Label ID="lblNoOfDays" runat="server" Text=""></asp:Label>
    </div>
    <div class="col-md-12">
        <b><asp:Label ID="lblNoOfP" runat="server" Text="No. of people"></asp:Label></b>
        <asp:Label ID="lblNoOfPeople" runat="server" Text=""></asp:Label>
    </div>
    <div class="col-md-12">
        <b><asp:Label ID="lblBed" runat="server" Text="Bed Type"></asp:Label></b>
        <asp:Label ID="lblBedType" runat="server" Text=""></asp:Label>
    </div>
           <div class="col-md-12">
        <b><asp:Label ID="lblSpReq" runat="server" Text="Special Request"></asp:Label></b>
        <asp:Label ID="lblSpecialRequests" runat="server" Text=""></asp:Label>
    </div>
     <div class="form-group">
          <asp:Button ID="btnConfirmSubmit" runat="server" Text="Confirm Submit" OnClick="btnConfirmSubmit_Click" CssClass="btn btn-primary" />
          <asp:Button ID="btnModifyRequest" runat="server" Text="Modify Request" OnClick="btnModifyRequest_Click" CssClass="btn btn-success" Height="40px" Width="220px" CausesValidation="False" PostBackUrl="~/request.aspx" />
       </div>
      <asp:Label ID="lblThankYou" CssClass="text-success" runat="server"></asp:Label>
      <br />
      <asp:Label ID="lbl24Hours" CssClass="text-success" runat="server"></asp:Label>
      <div id="footerContent">
        <asp:Label ID="lblFooter" runat="server" Text="@2014, Royal Inns and Suites"></asp:Label>
      </div>     
      </form>
  </main>
</body>
</html>
