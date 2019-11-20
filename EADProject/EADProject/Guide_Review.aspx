<%@ Page Title="" Language="C#" MasterPageFile="~/navbarV2.Master" AutoEventWireup="true" CodeBehind="Guide_Review.aspx.cs" Inherits="EADProject.Guide_Review" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 col-sm-6 col-lg-6">
                <label>Review your recent feedbacks!</label>
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-lg-12">
                        <div class="accordion">
                            <div class="card">
                                <div class="card-header">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                                            <div class="row">
                                                <div class="col-md-8 col-sm-8 col-lg-8">
                                                    Customer Name: Andy Lau
                                                </div>
                                                <div class="col-md-3 col-sm-3 col-lg-3">
                                                    Rating: 9.4/10
                                                </div>
                                                <div class="col-md-1 col-sm-1 col-lg-1">

                                                </div>
                                            </div>
                                        </button>
                                    </h2>
                                </div>

                                <div id="collapseOne" class="collapse" aria-labelledby="headingOne">
                                    <div class="card-body">
                                        I find my tour guide Muthu Sammi to be a very kind a cheerful person. As he accompanied my family and I throughout our tour, he continually provided his care and attention towards us. I would certainly hope to have him as my family's tour guide if we return back to Singapore for a different tour.
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                           <div class="row">
                                                <div class="col-md-8 col-sm-8 col-lg-8">
                                                    Customer Name: Richard Chin
                                                </div>
                                                <div class="col-md-3 col-sm-3 col-lg-3">
                                                    Rating: 3.4/10
                                                </div>
                                                <div class="col-md-1 col-sm-1 col-lg-1">

                                                </div>
                                            </div>
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo">
                                    <div class="card-body">
                                        I expected him to carry me, but all he did was let me down.    
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                           <div class="row">
                                                <div class="col-md-8 col-sm-8 col-lg-8">
                                                    Customer Name: Ben Lim
                                                </div>
                                                <div class="col-md-3 col-sm-3 col-lg-3">
                                                    Rating: 7.9/10
                                                </div>
                                                <div class="col-md-1 col-sm-1 col-lg-1">

                                                </div>
                                            </div>
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree">
                                    <div class="card-body">
                                        Meh
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
