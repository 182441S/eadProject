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



    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;



    <asp:TextBox ID="TGSearchTB" CssClass="labels" runat="server" ToolTip="Search for an employee's Name"></asp:TextBox>



        <asp:Button ID="SearchBttn" CssClass="details" runat="server" Text="Search" OnClick="SearchBttn_Click" />






        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="error2" runat="server" CssClass="labels" ForeColor="#CC0000" ></asp:Label>
        <br />
        <br />
        <div class="Details">
        <asp:Label ID="namestring" runat="server" CssClass="labels" Text="Name:"></asp:Label>
&nbsp;<asp:Label ID="nameLBL" CssClass="details" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Label ID="nricstring" runat="server" CssClass="labels" Text="NRIC:"></asp:Label>
&nbsp;<asp:Label ID="nricLBL" CssClass="details" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label12" CssClass="labels" runat="server" Text="Gender:"></asp:Label>
&nbsp;<asp:Label ID="genderLBL" CssClass="details" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label3" CssClass="labels" runat="server" Text="Date of Birth:"></asp:Label>
        &nbsp;<asp:Label ID="dobLBL" CssClass="details" runat="server" ></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label4" CssClass="labels" runat="server" Text="E-mail Address:"></asp:Label>
        &nbsp;<asp:Label ID="emailLBL" CssClass="details" runat="server" ></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label5" CssClass="labels" runat="server" Text="Telephone Number:"></asp:Label>
&nbsp;<asp:Label ID="phoneLBL" CssClass="details" runat="server" ></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label6" CssClass="labels" runat="server" Text="Date Registered:"></asp:Label>
        &nbsp;<asp:Label ID="dateregisteredLBL" CssClass="details" runat="server" ></asp:Label>
            </div>
    </form>




</asp:Content>
