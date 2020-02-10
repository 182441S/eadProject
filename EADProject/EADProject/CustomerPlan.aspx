<%@ Page Title="New Booking" Language="C#" MasterPageFile="~/navbarV2.Master" AutoEventWireup="true" CodeBehind="CustomerPlan.aspx.cs" Inherits="EADProject.CustomerPlan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <style>
            p.header {
                background-color: coral;
                border: 3px solid black;
                border-radius: 5px;
                text-align: center;
                font-size: 3rem;
                font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
            }

            button.btn-success {
                float: right;
            }

            div.card-header {
                text-align: center;
                font-weight: bolder;
            }

            div#featuredPlan {
                background-color: lightgreen;
            }

            i {
                cursor: pointer;
            }
        </style>
        <br />
        <p class="header">
            Available Tour Plans
        </p>
        <div class="row">
            <asp:DataList DataSourceID="SqlDataSource1" ID="DataListPlans" runat="server" CssClass="col-sm-12 col-md-12 col-lg-12">
                <ItemTemplate>
                    <div class="col-sm-12 col-md-12 col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title"><%# Eval("Name") %>&nbsp;(S$<%# Eval("Price") %>)</h5>
                                <p class="card-text">
                                    Duration: <%# Eval("Duration") %> days
                                </p>
                                <p class="card-text">
                                    &#8226 <%# Eval("Location1") %><br />
                                    &#8226 <%# Eval("Location2") %><br />
                                    &#8226 <%# Eval("Location3") %>
                                </p>
                            </div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">
                                    <%# Eval("Description") %>
                                </li>
                                <li class="list-group-item">
                                    <button name='<%# Eval("Name") %>' location1='<%# Eval("Location1") %>' location2='<%# Eval("Location2") %>' location3='<%# Eval("Location3") %>' price='<%# Eval("Price") %>' duration='<%# Eval("Duration") %>' description='<%# Eval("Description") %>' id="bookPlan" runat="server" onserverclick="bookPlan_ServerClick" type="button" class="btn btn-success">Book Now</button>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <br />
                </ItemTemplate>
            </asp:DataList>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnStr %>" SelectCommand="SELECT [Name], [Location1], [Location2], [Location3], [Price], [Duration], [Description] FROM [PlanDetails]"></asp:SqlDataSource>
    </form>
</asp:Content>
