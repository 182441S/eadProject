<%@ Page Title="" Language="C#" MasterPageFile="~/navbarV2.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="EADProject.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .card-header {
            background-color: red;
            transition: background-color 2s;
            font-weight: bold;
            color: white;
            text-shadow: 2px 2px 2px black;
        }

        div#cardHead {
            background-color: lawngreen;
        }

        .text-center {
            border-top: #28a745;
        }

        #btn {
            text-shadow: 1px 1px 1px black;
        }
    </style>

    <div>
        <div id="carouselHome" class="carousel slide carousel-fade" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselHome" data-slide-to="0" class="active"></li>
                <li data-target="#carouselHome" data-slide-to="1"></li>
                <li data-target="#carouselHome" data-slide-to="2"></li>
                <li data-target="#carouselHome" data-slide-to="3"></li>
                <li data-target="#carouselHome" data-slide-to="4"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active" data-interval="6000" data-pause="hover">
                    <a href="P_Details.aspx">
                        <img src="Images/Singapore River.jpg" class="d-block w-100" alt="..."></a>
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Tours@SGLite</h5>
                        <p style="font-style: italic;">Making tourism great again</p>
                    </div>
                </div>
                <div class="carousel-item" data-interval="6000" data-pause="hover">
                    <img src="Images/Marina Bay Sands.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item" data-interval="6000" data-pause="hover">
                    <img src="Images/Siloso Beach.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item" data-interval="6000" data-pause="hover">
                    <img src="Images/SingaporeCBDSkyline.jpeg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item" data-interval="6000" data-pause="hover">
                    <img src="Images/SingaporeJewelChangi.jpg" class="d-block w-100" alt="...">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselHome" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselHome" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    <br />
    <div class="card text-center">
        <div id="cardHead" class="card-header">
            Featured Sale! 60% OFF!
        </div>
        <div class="card-body">
            <h5 class="card-title">6D5N Singapore Heritage Package</h5>
            <p class="card-text">
                &#8227 Free & easy journey<br />
                &#8227 Stay in a 5-star hotel<br />
                &#8227 Transport provided
            </p>
            <a id="btn" href="CustomerPlan.aspx" class="btn btn-primary">Book now!</a>
        </div>
    </div>
    <br />
    
    <script>
        //function randomColor() {
        //    return '#' + ('000000' + (Math.random() * 0xFFFFFF << 0).toString(16)).slice(-6)
        //}

        function greenColor() {
            var secondValue = Math.round(Math.random() * 25) + 230

            return 'rgb(' + Math.round(Math.random() * 150) + "," + secondValue + "," + Math.round(Math.random() * 160) + ")"
        }

        function setColor() {
            document.getElementById('cardHead').style.backgroundColor = greenColor();
            setTimeout(setColor, 1000);
        }
        setColor();
    </script>
</asp:Content>
