<%@ Page Title="" Language="C#" MasterPageFile="~/navbarV2.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EADProject.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .login-dark {
            background: linear-gradient(145deg, #575b5d, #252b2d);
            margin-top: 50px;
        }
        body{
            background-image: url(https://upload.wikimedia.org/wikipedia/commons/2/20/Rear_view_of_the_Merlion_statue_at_Merlion_Park%2C_Singapore%2C_with_Marina_Bay_Sands_in_the_distance_-_20140307.jpg);
            background-size:cover;
            }
    </style>
    <div class="row">
        <div class="col-md-4" ">

        </div>
        <div class="col-md-4">
                <div class="login-dark p-3 shadow-lg rounded">
                    <div class="pt-3">
                        <h2 class="text-white" style="text-align: center; font-size: 45px;"> Sign In </h2>
                    </div>

                    <form class="mt-5">
                        <div class="form-group">
                            <input type="email" 
                                class="form-control form-control-sm bg-light" 
                                placeholder="Email Id">
                        </div>

                        <div class="form-group">
                            <input type="password" 
                                class="form-control form-control-sm bg-light" 
                                placeholder="Password">
                        </div>

                        <div class="form-group form-check">
                            <input type="checkbox" class="form-check-input" id="rememberCheckBox">
                            <label class="form-check-label text-light" for="rememberCheckBox">Remember me?</label>
                        </div>

                        <div class="mt-5">
                            <button class="btn btn-sm btn-light col">
                                <a href="CustomerPlan.aspx">
                                Login
                                </a>
                            </button>
                        </div>

                        <div class="text-center mt-2">
                            <a href="#" class="text-warning">Forgot Password?</a>
                        </div>
                    
                        <div class="mt-5">
                            <p class="text-white text-center">
                                Don't have an account?
                                <a href="Register.aspx" class="text-warning">Click here to register</a>
                            </p>
                            <p class="text-white text-center">
                                Here as a Tour Guide?
                                <a href="LoginTG.aspx" class="text-warning">Log in Here!</a>
                            </p>
                        </div>
                    </form>
                </div>
            </div>
        </div>
</asp:Content>

