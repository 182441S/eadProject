<%@ Page Title="" Language="C#" MasterPageFile="~/navbarV2.Master" AutoEventWireup="true" CodeBehind="Cust_View_Review.aspx.cs" Inherits="EADProject.Guide_Review" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        #cardHead {
            background-color: black;
            font-weight: bold;
            color: white;
        }

        #btn {
            padding: inherit;
        }
    </style>
    <%--    <div class="row">
        <div class="accordion col-md-8 col-sm-8 col-lg-8" id="accordion">
            <div class="card">
                <div id="cardHead" class="card-header text-center">
                    Your recent reviews are below.
                </div>
                <button id="btn" class="btn" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                    <div class="card-header text-left" id="headingOne">
                        <div class="row">
                            <div class="col-md-8 col-sm-8 col-lg-8">
                                Customer: Benny Tan
                            </div>
                            <div class="col-md-4 col-sm-4 col-lg-4">
                                Rating: 9.5/10
                            </div>
                        </div>
                    </div>
                </button>

                <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                    <div class="card-body">
                        Very nice service. If I ever come back to Singapore, I would love to have him as my family's guide again.    
                    </div>
                </div>
            </div>
            <div class="card">
                <button id="btn" class="btn" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                    <div class="card-header text-left" id="headingTwo">
                        <div class="row">
                            <div class="col-md-8 col-sm-8 col-lg-8">
                                Customer: Jolyne Lew
                            </div>
                            <div class="col-md-4 col-sm-4 col-lg-4">
                                Rating: 2.8/10
                            </div>
                        </div>
                    </div>
                </button>

                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                    <div class="card-body">
                        Very bad experience overall. His car smells like a dog peed in it and he didn't bothered to clean it. He talks too much also
                    </div>
                </div>
            </div>
        </div>
    </div>--%>


    <asp:DataList ID="reviewList" DataSourceID="reviewLink" runat="server" RepeatColumns="1" RepeatDirection="Vertical" CssClass="col-md-12 col-lg-12 col-sm-12">
        <HeaderTemplate>

            <div class="row">
                <div class="accordion col-md-12 col-sm-12 col-lg-12" id="accordion">
                    <div class="card">
                        <div id="cardHead" class="card-header text-center">
                            Your recent reviews are below.
                        </div>

                    </div>
                </div>
            </div>

        </HeaderTemplate>
        <ItemTemplate>
            <%--
            <button id="btn" class="btn col-md-8 col-sm-8 col-lg-" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                <div class="card-header text-left" id="headingOne">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-lg-12">
                            Customer: Benny Tan
                        </div>
                    </div>
                </div>
            </button>

            <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">--%>
            <div class="card-body">
                <div>
                    <%#Eval("title") %>
                </div>
                <div>
                    <%#Eval("content") %>
                </div>
            </div>
            <%--            </div>--%>
        </ItemTemplate>
        <SeparatorTemplate>
            <hr>
        </SeparatorTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="reviewLink" runat="server" ConnectionString="<%$ ConnectionStrings:ConnStr %>" SelectCommand="select * from [Reviews]"></asp:SqlDataSource>
</asp:Content>
