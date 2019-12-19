<%@ Page Title="" Language="C#" MasterPageFile="~/navbarV2.Master" AutoEventWireup="true" CodeBehind="Guide_Review.aspx.cs" Inherits="EADProject.Guide_Review" %>

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
    <div class="row">
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

        <%--<div class="col-md-1 col-sm-1 col-lg-1">

        </div>

        <div class="col-md-3 col-sm-3 col-lg-3">
            <div class="card" >
                <div class="card-header">
                    Quick Links
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item"><a href="#">Eyes</a></li>
                    <li class="list-group-item"><a href="#">Eyes</a></li>
                    <li class="list-group-item"><a href="#">Eyes</a></li>
                </ul>
            </div>
        </div>--%>
    </div>
</asp:Content>
