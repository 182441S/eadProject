<%@ Page Title="" Language="C#" MasterPageFile="~/navbarV2.Master" AutoEventWireup="true" CodeBehind="RegisterTG.aspx.cs" Inherits="EADProject.RegisterTG" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .login-dark {
            background: linear-gradient(145deg, #575b5d, #252b2d);
            margin-top: 50px;            
        }
        body{
            background-image: url(https://www.intrepidtravel.com/adventures/wp-content/uploads/2019/01/Intrepid-Travel-Egypt-Cairo-pyramids-026.jpg);
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
    <div class="row">
        <div class="col-md-5">
                <div class="login-dark p-3 shadow-lg rounded">
                    <div class="pt-3">
                        <h2 class="text-white" style="text-align: center; font-size: 45px;"> Be a Tour Guide </h2>
                    </div>

                    <form class="mt-4" runat="server">
                        <div class="row">
                            <div class="form-group col-5">
                                <label class="text-white"> Name: </label>
                                <asp:TextBox runat="server" ID="tbName" CssClass="form-control form-control-sm bg-light"
                                    placeholder="Name"></asp:TextBox>
                            </div>
                        
                            <div class="form-group col-7">
                                <label class="text-white"> Date of Birth: </label>
                                <asp:TextBox runat="server" ID="tbDob" type="date" CssClass="form-control form-control-sm bg-light"
                                    placeholder="dd/mm/yyyy"></asp:TextBox>
                            </div>
                        </div>
                                                    
                            <div class="form-group">
                                <label class="text-white"> Telephone number: </label>
                                <asp:TextBox runat="server" ID="tbPhone" type="phone" CssClass="form-control form-control-sm bg-light"
                                    placeholder="Phone Number"></asp:TextBox>
                            </div>

                        <div class="form-group">
                            <label class="text-white"> Email Address: </label>
                            <asp:TextBox runat="server" ID="tbEmail" type="email" CssClass="form-control form-control-sm bg-light"
                                    placeholder="Email"></asp:TextBox>
                        </div>

                        <div class="row">
                            <div class="form-group col-6">
                                <label class="text-white"> Password: </label>
                                <asp:TextBox runat="server" ID="tbPassword" type="password" CssClass="form-control form-control-sm bg-light"
                                    placeholder="Password"></asp:TextBox>
                            </div>

                            <div class="form-group col-6">
                                <label class="text-white"> Confirm Password: </label>
                                <asp:TextBox runat="server" ID="tbCPassword" type="password" CssClass="form-control form-control-sm bg-light"
                                    placeholder="Confirm Password"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group form-check">
                            <input type="checkbox" class="form-check-input" id="validateCheckBox">
                            <label class="form-check-label text-light" for="validateCheckBox">I agree to the terms and conditions</label>
                        </div>

                        <div class="mt-5">
                          <asp:Button ID="registerbtn" runat="server" CssClass="btn btn-light col" text="Register" OnClick="registerbtn_Click">
<%--                              <a href="TGParticulars.aspx"></a>--%>
                          </asp:Button>
                            
                           
                        </div>

                        <div class="mt-2">
                            <a href="LoginTG.aspx" class="text-warning"> <- Login </a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
</asp:Content>
