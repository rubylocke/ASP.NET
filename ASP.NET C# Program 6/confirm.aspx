<%@ Page Title="" MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="confirm.aspx.cs" Inherits="RubyLocke_Unit06_2.confirm" %>

<asp:Content ID="headContent" ContentPlaceHolderID="headPlaceHolder" runat="server">
    <link href="Styles/confirm.css" rel="stylesheet"/>
</asp:Content>
    
<asp:Content ID="formContent" ContentPlaceHolderID="formPlaceHolder" runat="server">
            <h1>Request Confirmation</h1>
            <h2>Please confirm your reservation request</h2>
            <label>First name</label>
            <asp:Label ID="lblFirstName" runat="server" CssClass="entry"></asp:Label><br />
            <label>Last name</label>
            <asp:Label ID="lblLastName" runat="server" CssClass="entry"></asp:Label><br />
            <label>Email</label>
            <asp:Label ID="lblEmailAddress" runat="server" CssClass="entry"></asp:Label><br />
            <label>Phone</label>
            <asp:Label ID="lblPhone" runat="server"></asp:Label><br />
            <label>Preferred method</label>
            <asp:Label ID="lblPreferredMethod" runat="server"></asp:Label><br />
            <h2>Request data</h2>
            <label>Arrival date:</label>
            <asp:Label ID="lblArrivalDate" runat="server"></asp:Label><br />
            <label>Departure date</label>
            <asp:Label ID="lblDepartureDate" runat="server"></asp:Label><br />
            <label>No. of days</label>
            <asp:Label ID="lblNoOfDays" runat="server"></asp:Label><br />
            <label>No. of people</label>
            <asp:Label ID="lblNoOfPeople" runat="server"></asp:Label><br />
            <label>Bed type</label>
            <asp:Label ID="lblBedType" runat="server"></asp:Label><br />
            <label>Special requests</label>
            <asp:Label ID="lblSpecialRequests" runat="server"></asp:Label><br />
            <asp:Button ID="btnConfirm" runat="server" Text="Confirm Request" CssClass="button" SkinID="ButtonSkin" />
            <asp:Button ID="btnModify" runat="server" Text="Modify Request" 
                    PostBackUrl="~/Request.aspx" CssClass="button" SkinID="ButtonSkin" /><br />
            <p>
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </p>
            <asp:Label ID="lblThankYou" CssClass="text-success" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lbl24Hours" CssClass="text-success" runat="server"></asp:Label>
</asp:Content>

