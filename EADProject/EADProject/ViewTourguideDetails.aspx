<%@ Page Title="" Language="C#" MasterPageFile="~/navbarV2.Master" AutoEventWireup="true" CodeBehind="ViewTourguideDetails.aspx.cs" Inherits="EADProject.ViewTourguideDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
        <link href="StyleSheets/jobListing.css" rel="stylesheet" />
        <h1 class="title">Employee Details</h1>
        <br />
        <br />
        <br />



    <asp:TextBox ID="TextBox1" CssClass="labels" runat="server" ToolTip="Search for an employee's Name"></asp:TextBox>



        <asp:Button ID="Button1" CssClass="details" runat="server" Text="Search" />



        <br />
        <br />
        <br />
        <div class="Details">
        <asp:Label ID="Label2" runat="server" CssClass="labels" Text="Name:"></asp:Label>
&nbsp;<asp:Label ID="Label7" CssClass="details" runat="server" Text="Jack Jones"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label12" CssClass="labels" runat="server" Text="Gender:"></asp:Label>
&nbsp;<asp:Label ID="Label13" CssClass="details" runat="server" Text="Male"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label3" CssClass="labels" runat="server" Text="Date of Birth:"></asp:Label>
        &nbsp;<asp:Label ID="Label8" CssClass="details" runat="server" Text="2-2-2000"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label4" CssClass="labels" runat="server" Text="E-mail Address:"></asp:Label>
        &nbsp;<asp:Label ID="Label9" CssClass="details" runat="server" Text="JackJones@gmai.com"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label5" CssClass="labels" runat="server" Text="Telephone Number:"></asp:Label>
&nbsp;<asp:Label ID="Label10" CssClass="details" runat="server" Text="87654321"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label6" CssClass="labels" runat="server" Text="Date Registered:"></asp:Label>
        &nbsp;<asp:Label ID="Label11" CssClass="details" runat="server" Text="2-3-2019"></asp:Label>
            </div>
    </form>




</asp:Content>
