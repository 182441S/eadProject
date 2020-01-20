<%@ Page Title="" Language="C#" MasterPageFile="~/navbarV2.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="EADProject.Register" %>
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
        button{
            font-size: 16px;
            -webkit-transition-duration: 0.4s;
            transition-duration: 0.4s;
        }
        .button:hover{
            background-color: #303030;
        }
    </style>
    <form runat="server">
    <div class="row">
        <div class="col-md-4">

        </div>
        <div class="col-md-5">
                <div class="login-dark p-3 shadow-lg rounded">
                    <div class="pt-3">
                        <h2 class="text-white" style="text-align: center; font-size: 45px;"> Register </h2>
                    </div>

                    <form class="mt-4">
                        <div class="row">
                            <div class="form-group col-5">
                                <label class="text-white"> Name: </label>
                                <asp:TextBox runat="server" CssClass="form-control form-control-sm bg-light" 
                                    placeholder="Name"></asp:TextBox>
                                
                            </div>
                        
                            <div class="form-group col-7">
                                <label class="text-white"> Date of Birth: </label>
                                <input type="date" id="tbDOB"
                                    class="form-control form-control-sm bg-light" 
                                    placeholder="dd/mm/yyyy">
                            </div>
                        </div>
                                                    
                            <div class="form-group">
                                <label class="text-white"> Telephone number: </label>
                                <input type="text" id="tbPhone"
                                    class="form-control form-control-sm bg-light" 
                                    placeholder="Number">
                            </div>

                        <div class="form-group">
                            <label class="text-white"> Email Address: </label>
                            <input type="email" id="tbEmail"
                                class="form-control form-control-sm bg-light" 
                                placeholder="Email">
                        </div>

                        <div class="row">
                            <div class="form-group col-6">
                                <label class="text-white"> Password: </label>
                                <input type="password" id="tbPassword"
                                    class="form-control form-control-sm bg-light" 
                                    placeholder="Password">
                            </div>

                            <div class="form-group col-6">
                                <label class="text-white"> Confirm Password: </label>
                                <input type="password" id="tbCPassword"
                                    class="form-control form-control-sm bg-light" 
                                    placeholder="Password">
                            </div>
                        </div>

                        <div class="form-group form-check">
                            <input type="checkbox" class="form-check-input" id="validateCheckBox">
                            <label class="form-check-label text-light" for="validateCheckBox">I agree to the terms and conditions</label>
                        </div>

                        <div class="mt-5">
                            <button id="registerbttn" runat="server" onserverclick="registerbttn_ServerClick" class="btn btn-light col" >
                                <a href="Login.aspx" style="color: black">
                                Register
                                </a>
                            </button>
                        </div>

                        <div class="mt-2">
                            <a href="Login.aspx" class="text-warning"> <- Login</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        </form>
</asp:Content>
