<%@ Page Title="Statistics" Language="C#" MasterPageFile="~/navbarV2.Master" AutoEventWireup="true" CodeBehind="StaffStats.aspx.cs" Inherits="EADProject.StaffStats" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <style>
            div#header {
                font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
                font-size: 30px;
                font-weight: bold;
                text-align: center;
            }

            .auto-style1 {
                width: 1200px;
                height: 608px;
            }
        </style>
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12">
                <div class="card-header" id="header">
                    Statistics Page
                </div>
            </div>
        </div>
        <img alt="" class="auto-style1" src="Images/1200px-Truncated_Bar_Graph.png" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Names="Gadugi" Font-Size="X-Large" Text="View By:"></asp:Label>
&nbsp;
        <asp:DropDownList ID="DropDownListVariable" runat="server" AutoPostBack="True">
            <asp:ListItem Selected="True">Total Plan Sales</asp:ListItem>
            <asp:ListItem>Individual Plan Sales</asp:ListItem>
            <asp:ListItem>Number of Bookings</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Names="Gadugi" Font-Size="X-Large" Text="Date Range:"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
            <asp:ListItem Selected="True">Monthly</asp:ListItem>
            <asp:ListItem>Quarterly</asp:ListItem>
            <asp:ListItem>Yearly</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12">
                <h3 style="text-align:center">Tour Guide Statistics</h3>
            </div>
        </div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Font-Names="Gadugi" Font-Size="X-Large" Text="Sort By:"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
            <asp:ListItem Selected="True">Most Popular</asp:ListItem>
            <asp:ListItem>Least Popular</asp:ListItem>
            <asp:ListItem>ID</asp:ListItem>
        </asp:DropDownList>
        <br />
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12">
                <div class="card">
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">
                            Name: John Doe
                            &nbsp;&nbsp;&nbsp;&nbsp;Rating: 7.2/10
                            &nbsp;&nbsp;&nbsp;&nbsp;Date registered: 21/10/2019
                        </li>
                        <li class="list-group-item">
                            Name: Mary Tan
                            &nbsp;&nbsp;&nbsp;&nbsp;Rating: 8.5/10
                            &nbsp;&nbsp;&nbsp;&nbsp;Date registered: 10/4/2019
                        </li>
                        <li class="list-group-item">
                            Name: John Tan
                            &nbsp;&nbsp;&nbsp;&nbsp;Rating: 6.8/10
                            &nbsp;&nbsp;&nbsp;&nbsp;Date registered: 3/10/2019
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
