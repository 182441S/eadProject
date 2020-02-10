<%@ Page Title="" Language="C#" MasterPageFile="~/navbarV2.Master" AutoEventWireup="true" CodeBehind="Cust_Review.aspx.cs" Inherits="EADProject.Cust_Review" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        #cardHead {
            background-color: ghostwhite;
            font-weight: bold;
            color: black;
        }

        #btn {
            padding: inherit;
        }
    </style>

    <div class="container-fluid">
        <form method="post" runat="server">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-lg-6">
                    <div class="form-group">
                        <label>Please give us some feedback regarding the experiences you have had with us!</label>
                        <asp:TextBox runat="server" TextMode="SingleLine" ID="title" CssClass="form-control"></asp:TextBox>
                        <asp:TextBox runat="server" TextMode="MultiLine" Rows="4" ID="review" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-sm-6 col-lg-6">
                            <button id="insertReview" runat="server" onserverclick="insertReview_ServerClick" class="btn btn-warning btn-send">Submit Review</button>
                        </div>
                    </div>
                </div>
                <asp:DataList ID="reviewList" DataSourceID="reviewLink" runat="server" RepeatColumns="1" RepeatDirection="Vertical" CssClass="col-md-6 col-lg-6 col-sm-6">
                    <HeaderTemplate>
                        <div class="row">
                            <div class="accordion col-md-12 col-sm-12 col-lg-12" id="accordion">
                                <div class="card">
                                    <div id="cardHead" class="card-header text-center">
                                        Your recent reviews
                                    </div>

                                </div>
                            </div>
                        </div>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <div class="card-body">
                            <div>
                                <%#Eval("title") %>
                            </div>
                            <div>
                                <%#Eval("content") %>
                            </div>
                        </div>
                    </ItemTemplate>
                    <SeparatorTemplate>
                        <hr>
                    </SeparatorTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="reviewLink" runat="server" ConnectionString="<%$ ConnectionStrings:ConnStr %>" SelectCommand="select * from [Reviews]"></asp:SqlDataSource>
            </div>
        </form>
    </div>
</asp:Content>
