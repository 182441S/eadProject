<%@ Page Title="Customise Plans" Language="C#" MasterPageFile="~/navbarV2.Master" AutoEventWireup="true" CodeBehind="StaffPlan.aspx.cs" Inherits="EADProject.StaffPlan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        p.header {
            background-color:lightskyblue;
            border: 3px solid black;
            border-radius: 5px;
            text-align: center;
            font-size: 3rem;
            font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
        }

        button.btn-primary, button.btn-danger {
            float:right;
        }

        button.btn-danger {
            margin-left:10px;
        }
    </style>
    <br />
    <p class="header">
        Customise Plans
    </p>
    <div class="row">
        <div class="col-sm-12 col-md-12 col-lg-4">
            <div class="card">
                <img src="Images/NationalMuseumSingapore.jpg" height="250" class="card-img-top" alt="...  " />
                <div class="card-body">
                    <h5 class="card-title">Heritage (3D2N)</h5>
                    <p class="card-text">
                        &#8226 Fort Canning Park<br />
                        &#8226 Singapore Art Museum<br />
                        &#8226 National Museum of Singapore
                    </p>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">
                        Embark on this journey to learn about Singapore's heritage as you travel to historical attractions all over the island!<br /><br />
                        Visit popular locations such as Fort Canning Park, where you can learn about its significance during WWII under British rule!<br /><br />
                        You can also get to visit lesser-known locations such as the National Museum of Singapore or the Singapore Art Museum.
                    </li>
                    <li class="list-group-item">
                        <button type="button" class="btn btn-danger">Delete</button>
                        <button type="button" class="btn btn-primary">Edit</button>
                    </li>
                </ul>
            </div>
            <br />
        </div>
        <div class="col-sm-12 col-md-12 col-lg-4">
            <div class="card">
                <img src="Images/VictoriaConcertHall.jpg" height="250" class="card-img-top" alt="...  " />
                <div class="card-body">
                    <h5 class="card-title">Entertainment (4D3N)</h5>
                    <p class="card-text">
                        &#8226 Universal Studios Singapore<br />
                        &#8226 Victoria Concert Hall<br />
                        &#8226 Singapore Symphony Orchestra
                    </p>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">
                        Visit Singapore's most popular tourist attraction, Universal Studios Singapore!<br /><br />
                        Gain new auditory experiences at Victoria Concert Hall or the Singapore Symphony Orchestra, which are famous for their musical prowess.<br /><br />
                        With such a wide variety of places to visit, there is sure to be fun for everyone!
                    </li>
                    <li class="list-group-item">
                        <button type="button" class="btn btn-danger">Delete</button>
                        <button type="button" class="btn btn-primary">Edit</button>
                    </li>
                </ul>
            </div>
            <br />
        </div>
        <div class="col-sm-12 col-md-12 col-lg-4">
            <div class="card">
                <img src="Images/SingaporeDuckTours.jpg" height="250" class="card-img-top" alt="...  " />
                <div class="card-body">
                    <h5 class="card-title">Leisure (4D3N)</h5>
                    <p class="card-text">
                        &#8226 Singapore Flyer<br />
                        &#8226 Singapore Duck Tours<br />
                        &#8226 Singapore Botanic Gardens
                    </p>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">
                        Relax and unwind as you embark on this leisurely tour which shows you the hidden gems of Singapore.<br /><br />
                        You can get to have a birds-eye view of the city skyline on the Singapore Flyer, or go splashing in the Singapore Duck Tour!<br /><br />
                        For the nature lovers out there, take a chance to visit Singapore Botanic Gardens, touted for its wide variety of flora and fauna.
                    </li>
                    <li class="list-group-item">
                        <button type="button" class="btn btn-danger">Delete</button>
                        <button type="button" class="btn btn-primary">Edit</button>
                    </li>
                </ul>
            </div>
            <br />
        </div>
    </div>
    <div class="row">
        <div class="col-sm-4 col-md-4 col-lg-5"></div>
        <div class="col-sm-4 col-md-4 col-lg-2" align="center">
            <button type="button" class="btn btn-info">Add New Plan</button>
        </div>
        <div class="col-sm-4 col-md-4 col-lg-5"></div>
    </div>
    <br />
</asp:Content>
