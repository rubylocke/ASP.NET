<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="RubyLocke_Unit04._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name = "description" content = "Unit 04" />
    <meta name = "keywords" content = "Ruby Locke" />

    <meta name="viewport"
        content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="main.css" rel = "stylesheet" type = "text/css" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

</head>
<body>
  <main><form id="form1" runat="server" defaultbutton="btnSubmit" defaultfocus="lblArrivalDate">
    <div>
        <h1>Royal Inns and Suites</h1>
    </div>
    <div class="form-group">
       <label for="lblMessage" class="control-label" style="color: #FF0000; font-style: italic;">Where you're always treated like royalty</label>
       <h1>Reservation Request</h1>
       <h2>Request data</h2>
    </div>
    <div class="form-group">
       <label for="lblArrivalDate" class="control-label">Arrival date</label>
       <asp:TextBox ID="tbArrivalDate" runat="server" CssClass="form-control"></asp:TextBox>   
    </div>
    
    <div class="form-group">
        <label for="lblDepartdate" class="control-label">Departure date</label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="text-danger"
             ControlToValidate="tbDepartDate" Display="Dynamic" ErrorMessage="Required.">
        </asp:RequiredFieldValidator>
        <asp:TextBox ID="tbDepartDate" runat="server" CssClass="form-control" TextMode="Date" ></asp:TextBox>
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
        <label for="lblBedType" class="control-label">Bed Type</label>
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
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="text-danger"
             ControlToValidate="tbFirstName" Display="Dynamic" ErrorMessage="Required.">
        </asp:RequiredFieldValidator>
        <asp:TextBox ID="tbFirstName" runat="server" Width="224px"></asp:TextBox>
      </div>
      <div class="form-group">
        <label for="lblLastName" class="control-label">Last Name</label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="text-danger"
           ControlToValidate="tbLastName" Display="Dynamic" ErrorMessage="Required.">
        </asp:RequiredFieldValidator>
        <asp:TextBox ID="tbLastName" runat="server" Width="224px"></asp:TextBox>
      </div>
      <div class="form-group">
         <label for="email">Email Address:</label>
         <input type="email" class="form-control" required="" id="email" runat="server" /> 
      </div>
      <div class="form-group">
         <label for="telNo">Telephone number</label>
         <input id="telNo" name="telNo" type="tel" runat="server" required="required" placeholder="555-555-1234"
           pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" title="Please match 555-555-1234"/>
      </div>
      <div class="form-group">
         <label for="lblPreferredMethod" class="control-label">Preferred Method</label>
          <asp:DropDownList ID="ddlPreferredMethod" runat="server">
              <asp:ListItem>Email</asp:ListItem>
              <asp:ListItem>Telephone</asp:ListItem>
          </asp:DropDownList>
      </div>
      <div class="form-group">
          <%-- <div class="col-md-offset-3 col-md-9">  --%>
             <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="btn btn-primary"/>
  
             <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" CssClass="btn btn-success" Height="40px" Width="60px" UseSubmitBehavior="False"/>
          <%--</div>  --%>
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
