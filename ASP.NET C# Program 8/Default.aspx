<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RubyLocke_Unit08.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Halloween Superstore</title>
       <meta name = "description" content = "Unit 08" />
       <meta name = "keywords" content = "Ruby Locke" />

       <meta name="viewport"
          content="width=device-width, initial-scale=1" />
      <link href="Content/bootstrap.min.css" rel="stylesheet" />
      <link href="Main.css" rel = "stylesheet" type = "text/css" />
      <script src="Scripts/jquery-3.3.1.min.js"></script>
      <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <header>
        <img src="Images/HalloweenSuperstore.jpg" alt="Halloween Store" width="640"/>
    </header>
    <section>
        <form id="form1" runat="server">
              <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" CellPadding="8" DataKeyNames="ProductID" 
                DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None"
                OnRowUpdated="GridView1_RowUpdated" Width="629px">
                <Columns>
                    <asp:BoundField DataField="ProductID" HeaderText="ID" ReadOnly="True" SortExpression="ProductID">
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="200px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" ReadOnly="True">
                       <HeaderStyle HorizontalAlign="Left" />
                       <ItemStyle Width="250px" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="On Hand" SortExpression="OnHand">
                       <EditItemTemplate>
                             <asp:TextBox ID="tbOnHand" runat="server" AutoPostBack="True" CausesValidation="True" 
                                  Text='<%# Bind("OnHand") %>' ValidationGroup="ErrorList" Width="75px">
                             </asp:TextBox>
                             <asp:CompareValidator ID="cvOnHand" runat="server" ControlToValidate="tbOnHand" Display="Dynamic" 
                                  ErrorMessage="Must be greater than or equal to zero" ForeColor="White" Operator="GreaterThanEqual"
                                  Type="Integer" ValidationGroup="ErrorList" ValueToCompare="0">*****
                             </asp:CompareValidator>
                             &nbsp;
                             <asp:RequiredFieldValidator ID="rfvOnHand" runat="server" ControlToValidate="tbOnHand"
                                  Display="Dynamic" ErrorMessage="Required: must fill in textbox" ForeColor="#000066" 
                                 ValidationGroup="ErrorList">*****
                           </asp:RequiredFieldValidator>
                       </EditItemTemplate>
                       <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("OnHand") %>'>
                            </asp:Label>
                       </ItemTemplate>
                       <HeaderStyle HorizontalAlign="Right" />
                       <ItemStyle HorizontalAlign="Right" Width="100px" />
                     </asp:TemplateField>
                       <asp:CommandField ShowEditButton="True" ValidationGroup="ErrorList" /> 
                </Columns>
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#E3EAEB" />
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#8FBC8F" />
                <PagerStyle BackColor="#1C5E55" ForeColor="White" HorizontalAlign="Center" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:HalloweenConnectionString %>" 
                SelectCommand="SELECT ProductID, Name, OnHand FROM Products" 
                UpdateCommand="UPDATE Products SET OnHand = @OnHand WHERE (ProductID = @ProductID)">
                <UpdateParameters>
                    <asp:Parameter Name="OnHand" />
                    <asp:Parameter Name="ProductID" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <p>
                <asp:Label ID="lblError" runat="server" CssClass="error"></asp:Label>
            </p>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="ErrorList"
                HeaderText="Please correct the following errors:" CssClass="error" ForeColor="Red" />

        </form>
    </section>
</body>
</html>
