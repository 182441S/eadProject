<%@ Page Title="" Language="C#" MasterPageFile="~/navbarV2.Master" AutoEventWireup="true" CodeBehind="BookingHistory.aspx.cs" Inherits="EADProject.BookingHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="StyleSheets/jobListing.css" rel="stylesheet" />



    <h2>Booking History</h2>


    <asp:DataList DataSourceID="DBLink" runat="server" RepeatColumns="2" RepeatDirection="Vertical" CssClass="col-sm-12 col-md-12 col-lg-12">
        <ItemTemplate>
             <div class="container">
                    <img src="Images/ResortsWorldSentosa.jpg" style="width: 90px" />
                    <p><span>Tour Name:<%# Eval("TourName") %></span></p>
                    <br />
                   
                    <p>Date of tour:<%# Eval("TourDate") %></p>
                    <p>Start time:<%# Eval("StartTime") %></p>
                    <p>Time completed:<%# Eval("EndTime") %></p>
                    <p>Booked by:<%# Eval("CustName") %></p>
                    <p>Booking ID:<%# Eval("BookingID") %></p>
                </div>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="DBLink" runat="server" ConnectionString="<%$ ConnectionStrings:ConnStr%>" SelectCommand="SELECT * FROM [BookingHistory]"></asp:SqlDataSource>

    <%--<div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12">
               
            </div>
        </div>
        <br>--%>
       <%-- <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12">
                <div class="container">
                    <img src="Images/VictoriaConcertHall.jpg" style="width: 90px" />
                    <p><span>Tour Name:Victoria Concert Hall</span></p>
                    <br />
                    <p>Date of tour:3-3-2017</p>
                    <p>Start time:10:00 AM</p>
                    <p>Time completed:4:00 PM</p>
                    <p>Booked by:Laura</p>
                </div>
            </div>
        </div>--%>

</asp:Content>
