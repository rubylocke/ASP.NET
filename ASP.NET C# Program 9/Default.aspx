<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RubyLocke_Unit09.Default" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Halloween Superstore</title>
       <meta name = "description" content = "Unit 09" />
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
        <img src="Images/HalloweenSuperstore.jpg" alt="Halloween Store" />
    </header>
    <section>
        <form id="form1" runat="server">
              <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="Product" 
                  InsertMethod="InsertProduct" OldValuesParameterFormatString="original_{0}"
                  SelectMethod="GetProducts" TypeName="ProductDB" 
                  UpdateMethod="UpdateProduct" 
                  ConflictDetection="CompareAllValues" 
                  OnDeleted="ObjectDataSource1_Deleted" OnUpdated="ObjectDataSource1_Updated">
                      <UpdateParameters>
                      <asp:Parameter Name="original_Product" Type="Object" />
                      <asp:Parameter Name="product" Type="Object" />
                  </UpdateParameters>
              </asp:ObjectDataSource>
              <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CssClass="bodySize"
                AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ProductID" 
                DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None"
                OnRowDeleted="GridView1_RowDeleted" OnRowUpdated="GridView1_RowUpdated" Width="681px">
                <Columns>
                    <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"/>
                    <asp:TemplateField HeaderText="On Hand" SortExpression="OnHand">
                       <EditItemTemplate>
                             <asp:TextBox ID="tbOnHand" runat="server" AutoPostBack="False" CausesValidation="True" 
                                  Text='<%# Bind("OnHand") %>' Width="75px">
                             </asp:TextBox>
                             <asp:CompareValidator ID="cvOnHand" runat="server" ControlToValidate="tbOnHand" Display="Dynamic" 
                                  ErrorMessage="Must be greater than or equal to zero" ForeColor="White" Operator="GreaterThanEqual"
                                  Type="Integer" ValueToCompare="0">*****
                             </asp:CompareValidator>
                             &nbsp;
                             <asp:RequiredFieldValidator ID="rfvOnHand" runat="server" ControlToValidate="tbOnHand"
                                  Display="Dynamic" ErrorMessage="Required: must fill in textbox" ForeColor="Red">*****
                           </asp:RequiredFieldValidator>
                       </EditItemTemplate>
                       <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("OnHand") %>'>
                            </asp:Label>
                       </ItemTemplate>
                        </asp:TemplateField>

                    <asp:CommandField ShowEditButton="True" />
                </Columns>
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#E3EAEB" />
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#8FBC8F" />
                <PagerStyle BackColor="#1C5E55" ForeColor="White" HorizontalAlign="Center" />
             </asp:GridView>
            <p>
                <asp:Label ID="lblError" runat="server" CssClass="error"></asp:Label>
            </p>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                HeaderText="Please correct the following errors:"
                CssClass="error" Forecolor="Red"/>

        </form>
    </section>
</body>
</html>
