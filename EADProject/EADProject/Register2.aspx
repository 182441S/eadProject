<%@ Page Title="" Language="C#" MasterPageFile="~/navbarV2.Master" AutoEventWireup="true" CodeBehind="Register2.aspx.cs" Inherits="EADProject.Register2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div class="row">
            <div class="col-md-4">
            </div>
            <div class="col-md-5">
                <div class="login-dark p-3 shadow-lg rounded">
                    <div class="pt-3">
                        <h2 class="text-white" style="text-align: center; font-size: 45px;">Register </h2>
                    </div>

                    <div class="mt-4">
                        <div class="row">
                            <div class="form-group col-5">
                                <label class="text-white">Name: </label>
                                <asp:TextBox runat="server" ID="tbname" CssClass="form-control form-control-sm bg-light"
                                    placeholder="Name"></asp:TextBox>

                            </div>

                            <div class="form-group col-7">
                                <label class="text-white">Date of Birth: </label>
                                <asp:TextBox runat="server" ID="tbdob" type="date" CssClass="form-control form-control-sm bg-light"
                                    placeholder="dd/mm/yyyy"></asp:TextBox>

                            </div>
                        </div>

                        <div class="form-group">
                            <label class="text-white">Telephone number: </label>
                            <asp:TextBox runat="server" type="phone" ID="tbPhone"
                                CssClass="form-control form-control-sm bg-light"
                                placeholder="Mobile Number"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label class="text-white">Email Address: </label>
                            <asp:TextBox runat="server" type="email" ID="tbEmail"
                                CssClass="form-control form-control-sm bg-light"
                                placeholder="Email"></asp:TextBox>
                        </div>

                        <div class="row">
                            <div class="form-group col-6">
                                <label class="text-white">Password: </label>
                                <%--<input type="password" id="tbPassword"
                                        class="form-control form-control-sm bg-light" 
                                        placeholder="Password">--%>
                                <asp:TextBox runat="server" type="password" ID="tbPassword"
                                    CssClass="form-control form-control-sm bg-light"
                                    placeholder="Password"></asp:TextBox>
                            </div>

                            <div class="form-group col-6">
                                <label class="text-white">Confirm Password: </label>
                                <%--<input type="password" id="tbCPassword"
                                        class="form-control form-control-sm bg-light" 
                                        placeholder="Password">--%>
                                <asp:TextBox runat="server" type="password" ID="tbCPassword"
                                    CssClass="form-control form-control-sm bg-light"
                                    placeholder="Password"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group form-check">
                            <input type="checkbox" class="form-check-input" id="validateCheckBox">
                            <label class="form-check-label text-light" for="validateCheckBox">I agree to the terms and conditions</label>
                        </div>

                        <div class="mt-5">
                            <asp:Button ID="registerbtn" runat="server" CssClass="btn btn-light col" OnClick="registerbtn_Click" />
                        </div>

                        <div class="mt-2">
                            <a href="Login.aspx" class="text-warning"><- Login</a>
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <asp:Label runat="server" ID="lbDisplay" Text=""></asp:Label>
        </div>
    </form>
</asp:Content>
