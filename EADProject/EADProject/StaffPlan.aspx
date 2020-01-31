s<%@ Page Title="Customise Plans" Language="C#" MasterPageFile="~/navbarV2.Master" AutoEventWireup="true" CodeBehind="StaffPlan.aspx.cs" Inherits="EADProject.StaffPlan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <style>
            p.header {
                background-color: lightskyblue;
                border: 3px solid black;
                border-radius: 5px;
                text-align: center;
                font-size: 3rem;
                font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
            }

            button.btn-primary, button.btn-danger {
                float: right;
            }

            button.btn-danger {
                margin-left: 10px;
            }
        </style>
        <br />
        <p class="header">
            Customise Plans
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
                                    <button Name='<%# Eval("Name") %>' Location1='<%# Eval("Location1") %>' Location2='<%# Eval("Location2") %>' Location3='<%# Eval("Location3") %>' Price='<%# Eval("Price") %>' Duration='<%# Eval("Duration") %>' Description='<%# Eval("Description") %>' id="editPlan" runat="server" onserverclick="editPlan_ServerClick" type="button" class="btn btn-primary">Edit</button>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <br />
                </ItemTemplate>
            </asp:DataList>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnStr %>" SelectCommand="SELECT [Name], [Location1], [Location2], [Location3], [Price], [Duration], [Description] FROM [PlanDetails]"></asp:SqlDataSource>
        <br />
        <div class="row">
            <div class="col-sm-4 col-md-4 col-lg-5"></div>
            <div class="col-sm-4 col-md-4 col-lg-2" align="center"> 
                <button id="btnNewPlan" runat="server" onserverclick="btnNewPlan_ServerClick" type="button" class="btn btn-info">Add New Plan</button>
            </div>
            <div class="col-sm-4 col-md-4 col-lg-5"></div>
        </div>
        <br />
    </form>
</asp:Content>
