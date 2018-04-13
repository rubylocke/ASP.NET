<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="request.aspx.cs" Inherits="RubyLocke_Unit05._default" %>

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
       <label for="lblMessage" class="control-label" style="color: #FF0000; font-style: italic;">Where you're always treated like royalty</label>
       <asp:Label ID="lblName" CssClass="text-success" runat="server"></asp:Label>
       <asp:Label ID="lblEmail" runat="server" CssClass="text-success"></asp:Label>
       <h1>Reservation Request</h1>
       <asp:ValidationSummary ID="ValidationSummary1" runat="server"
          CssClass="text-danger"
          HeaderText="Please correct these entries" />
       <h2>Request data</h2>
    </div>

    <div class="form-group">
        <label for="lblArrivalDate" class="control-label">Arrival date</label>
             <asp:TextBox ID="tbArrivalDate" runat="server" CssClass="form-control"></asp:TextBox>   
             <asp:RequiredFieldValidator ID="rfvArrivalDate" runat="server" ErrorMessage="Arrival Date" CssClass ="text-danger" Display="Dynamic"
                ControlToValidate="tbArrivalDate">Required</asp:RequiredFieldValidator>
        <asp:CompareValidator ID="cvArrivalDAte" runat="server" ErrorMessage="Arrival Date has to be before Departure" ControlToCompare="tbDepartDate" Display="Dynamic" Operator="DataTypeCheck" Type="Date" CssClass ="text-danger" ControlToValidate="tbArrivalDate"></asp:CompareValidator>
     </div>
    
    <div class="form-group">
        <label for="lblDepartdate" class="control-label">Departure date</label>
        <asp:TextBox ID="tbDepartDate" runat="server" CssClass="form-control" TextMode="Date" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvDepartDate" runat="server" ErrorMessage="Departure Date"
             CssClass ="text-danger" Display="Dynamic" ControlToValidate="tbDepartDate">Required</asp:RequiredFieldValidator>
        <asp:CompareValidator id="cvDepartDate" runat="server" ControlToCompare="tbArrivalDate" cultureinvariantvalues="true" 
             Display="Dynamic" enableclientscript="true" ControlToValidate="tbDepartDate" 
             ErrorMessage="Departure date must be after Arrival date" type="Date" setfocusonerror="true" Operator="GreaterThanEqual" 
             Text="Departure date must be after Arrival date"></asp:CompareValidator>
    </div>
    <div class="form-group">
        <label for="lblNoOfPeople" class="control-label">Number Of People</label>
        <br />
        <asp:DropDownList ID="ddlNoOfPeople" runat="server">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
        </asp:DropDownList>
    </div>
    <div class="form-group">  
        <label for="lblBedType" class="control-label" id="lblBedType">Bed Type</label>
        <asp:RadioButton ID="rbKing" runat="server" GroupName="BedType" Text="King" />
        <asp:RadioButton ID="rbTwoQueens" runat="server" GroupName="BedType" Text="Two Queens" />
        <asp:RadioButton ID="rbOneQueen" runat="server" GroupName="BedType" Text="One Queen" />
    </div>
    <div class="form-group">
        <h2>Special Request</h2>
        <asp:TextBox ID="tbSpecialRequests" runat="server" Height="51px" TextMode="MultiLine" Width="628px"></asp:TextBox>
     </div>
     <div class="form-group">
        <h2>Contact Information</h2>
        <label for="lblFirstName" class="control-label">First Name</label>
        <asp:TextBox ID="tbFirstName" runat="server" Width="224px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ErrorMessage="First Name"
            CssClass ="text-danger" Display="Dynamic" ControlToValidate="tbFirstName">Required</asp:RequiredFieldValidator>
     </div>
      <div class="form-group">
        <label for="lblLastName" class="control-label">Last Name</label>
        <asp:TextBox ID="tbLastName" runat="server" Width="224px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ErrorMessage="Last Name"
            CssClass ="text-danger" Display="Dynamic" ControlToValidate="tbLastName">Required</asp:RequiredFieldValidator>
      </div>

      <div class="form-group">
         <label for="email">Email Address:</label>
         <input type="email" class="form-control" required="" id="email1" runat="server" /> 
         <asp:RequiredFieldValidator ID="emailAcct" runat="server" ErrorMessage="Email" CssClass ="text-danger"
             Display="Dynamic" ControlToValidate="email1">Required</asp:RequiredFieldValidator>
         <asp:RegularExpressionValidator ID="revEmail1" runat="server" ErrorMessage="Email address"
              CssClass="text-danger" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
              ControlToValidate="email1">Must be a valid email address</asp:RegularExpressionValidator>
      </div>
      <div class="form-group">
         <label for="telNo">Telephone number</label>
         <input id="telNo" name="telNo" type="tel" runat="server" required="required" placeholder="555-123-4567"
           title="Please match 555-123-4567"/>
          <asp:RequiredFieldValidator ID="rfvTelNo" runat="server" ErrorMessage="Phone Number"
               CssClass ="text-danger" Display="Dynamic" ControlToValidate="telNo">Required</asp:RequiredFieldValidator>
           <asp:RegularExpressionValidator ID="revPhoneNumber" runat="server" 
               ErrorMessage="Phone number" CssClass="text-danger" Display="Dynamic" 
               ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"
               ControlToValidate="telNo">Use this format: 555-123-4567</asp:RegularExpressionValidator>
      </div>
      <div class="form-group">
         <label for="lblPreferredMethod" class="control-label">Preferred Method</label>
          <asp:DropDownList ID="ddlPreferredMethod" runat="server">
              <asp:ListItem>Email</asp:ListItem>
              <asp:ListItem>Telephone</asp:ListItem>
          </asp:DropDownList>
      </div>
      <div class="form-group">
         <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="btn btn-primary"/>
         <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" CssClass="btn btn-success" Height="40px" Width="60px" UseSubmitBehavior="False"/>
      </div>
      <div id="footerContent">
        <asp:Label ID="lblFooter" runat="server" Text="@2014, Royal Inns and Suites"></asp:Label>
      </div>     
     </form>
  </main>
</body>
</html>
