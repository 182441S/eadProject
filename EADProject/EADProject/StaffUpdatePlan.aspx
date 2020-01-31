<%@ Page Title="Update Plan" Language="C#" MasterPageFile="~/navbarV2.Master" AutoEventWireup="true" CodeBehind="StaffUpdatePlan.aspx.cs" Inherits="EADProject.StaffUpdatePlan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <style>
            div#header {
                font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
                font-size: 30px;
                font-weight:bold;
                text-align: center;
            }

            .auto-style1 {
                width: 100%;
            }

            .auto-style2 {
                height: 36px;
            }
            .auto-style4 {
                width: 225px;
            }
            .auto-style5 {
                height: 36px;
                width: 225px;
            }
            </style>
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12">
                <div class="card-header" id="header">
                    Edit Existing Plan
                </div>
            </div>
        </div>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Font-Names="Gadugi" Font-Size="X-Large" Text="Plan Name:" Font-Bold="False"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="LabelPlanName" runat="server" Font-Names="Gadugi" Font-Size="X-Large" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label4" runat="server" Font-Names="Gadugi" Font-Size="X-Large" Text="Location 1:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxLocation1Name" runat="server" MaxLength="100" Width="260px" CssClass="bootstrap class form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label5" runat="server" Font-Names="Gadugi" Font-Size="X-Large" Text="Location 2:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxLocation2Name" runat="server" MaxLength="100" Width="260px" CssClass="bootstrap class form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label6" runat="server" Font-Names="Gadugi" Font-Size="X-Large" Text="Location 3:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBoxLocation3Name" runat="server" MaxLength="100" Width="260px" CssClass="bootstrap class form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label8" runat="server" Font-Names="Gadugi" Font-Size="X-Large" Text="Price (S$):"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBoxPrice" runat="server" MaxLength="4" Width="130px" CssClass="bootstrap class form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label9" runat="server" Font-Names="Gadugi" Font-Size="X-Large" Text="Duration (days):"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBoxDuration" runat="server" MaxLength="1" Width="50px" CssClass="bootstrap class form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label7" runat="server" Font-Names="Gadugi" Font-Size="X-Large" Text="Plan Description:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxDescription" runat="server" Width="450px" CssClass="bootstrap class form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="ButtonSave" runat="server" Text="Save" CssClass="btn btn-success" OnClick="ButtonSave_Click"/>
&nbsp;&nbsp;
                    <asp:Button ID="ButtonCancel" runat="server" Text="Cancel" CssClass="btn btn-danger" OnClick="ButtonCancel_Click"/>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </form>
</asp:Content>
