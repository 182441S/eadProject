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
        </div>
    </form>
</asp:Content>
