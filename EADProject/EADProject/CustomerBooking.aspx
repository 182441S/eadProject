<%@ Page Title="Booking History" Language="C#" MasterPageFile="~/navbarV2.Master" AutoEventWireup="true" CodeBehind="CustomerBooking.aspx.cs" Inherits="EADProject.CustomerBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <style>
            p.header {
                background-color: plum;
                border: 3px solid black;
                border-radius: 5px;
                text-align: center;
                font-size: 3rem;
                font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
            }
        </style>
        <br />
        <p class="header">
            Booking History
        </p>
        <div class="row col-12">
            <asp:TextBox ID="TextBoxSearch" runat="server" Width="70%" CssClass="bootstrap class form-control" BackColor="#CCFFFF" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
            <asp:DropDownList ID="DropDownListParam" runat="server" Width="20%" AutoPostBack="True" BackColor="#CCFFFF" OnSelectedIndexChanged="DropDownListParam_SelectedIndexChanged">
                <asp:ListItem Selected="True">None</asp:ListItem>
                <asp:ListItem>Date Booked</asp:ListItem>
                <asp:ListItem>Plan Name</asp:ListItem>
                <asp:ListItem>Start Date</asp:ListItem>
                <asp:ListItem>End Date</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="ButtonSearch" runat="server" Text="Search" Width="10%" CssClass="btn btn-info" OnClick="ButtonSearch_Click" />
        </div>
        <br />
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12">
                <asp:GridView ID="GridViewBookings" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" GridLines="None">
                    <Columns>
                        <asp:BoundField DataField="DateBooked" HeaderText="Date Booked" />
                        <asp:BoundField DataField="Name" HeaderText="Plan Name" />
                        <asp:BoundField DataField="Duration" HeaderText="Duration" />
                        <asp:BoundField DataField="StartDate" HeaderText="Start Date" />
                        <asp:BoundField DataField="EndDate" HeaderText="End Date" />
                        <asp:BoundField DataField="Price" HeaderText="Amount Paid" />
                        <asp:BoundField DataField="Location1" HeaderText="First Location" />
                        <asp:BoundField DataField="Location2" HeaderText="Second Location" />
                        <asp:BoundField DataField="Location3" HeaderText="Third Location" />
                    </Columns>
                </asp:GridView>
            </div>
            <asp:Label ID="LabelBookingError" runat="server" Font-Names="Gadugi" Font-Size="Medium" Font-Bold="False" ForeColor="#FF3300" Visible="False"></asp:Label>
        </div>
        <br />
    </form>
</asp:Content>
