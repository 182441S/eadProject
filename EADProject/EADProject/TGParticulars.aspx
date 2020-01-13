<%@ Page Title="" Language="C#" MasterPageFile="~/navbarV2.Master" AutoEventWireup="true" CodeBehind="TGParticulars.aspx.cs" Inherits="EADProject.TGParticulars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 346px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<style>
        .login-dark {
            background: linear-gradient(145deg, #575b5d, #252b2d);
            margin-top: 50px;            
        }
        body{
            background-image: url();
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
        <div class="col-md-3">

        </div>
        <div class="col-md-6">
                <div class="login-dark p-3 shadow-lg rounded">
                    <div class="pt-3">
                        <h2 class="text-white" style="text-align: center; font-size: 45px;"> Personal Particulars </h2>
                    </div>

                    <form class="mt-4">
                            <div class="form-group">
                                <label class="text-white"> Work Experiences: </label>
                                <input type="text" 
                                    class="form-control form-control-sm bg-light" 
                                    placeholder="Jobs accomplished as a Tour Guide">
                            </div>
                        
                            <div class="form-group">
                                <label class="text-white"> Summary: </label>
                                <input type="text" 
                                    class="form-control form-control-sm bg-light" 
                                    placeholder="Write a short summary of yourself">
                            </div>
                                                    
                            <div class="form-group">
                                <label class="text-white"> Payment Information: </label>
                                <input type="text" 
                                    class="form-control form-control-sm bg-light" 
                                    placeholder="Bank Account Number">
                            </div>

                        <div class="form-group">
                            <label class="text-white"> Work Availability: </label>
                            <br />
                            <div class="row">
                                <label class="text-white col-4"> Monday </label>
                                <input type="text" 
                                    class="form-control form-control-sm bg-light col-3" 
                                    placeholder=" Start-Time">
                                <label class="text-white col-1"> to </label>
                                <input type="text" 
                                    class="form-control form-control-sm bg-light col-3" 
                                    placeholder="End-Time">
                            </div>
                            <br />
                            <div class="row">
                                <label class="text-white col-4"> Tuesday </label>
                                <input type="text" 
                                    class="form-control form-control-sm bg-light col-3" 
                                    placeholder=" Start-Time">
                                <label class="text-white col-1"> to </label>
                                <input type="text" 
                                    class="form-control form-control-sm bg-light col-3" 
                                    placeholder="End-Time">
                            </div>
                            <br />
                            <div class="row">
                                <label class="text-white col-4"> Wednesday </label>
                                <input type="text" 
                                    class="form-control form-control-sm bg-light col-3" 
                                    placeholder=" Start-Time">
                                <label class="text-white col-1"> to </label>
                                <input type="text" 
                                    class="form-control form-control-sm bg-light col-3" 
                                    placeholder="End-Time">
                            </div>
                            <br />
                            <div class="row">
                                <label class="text-white col-4"> Thursday </label>
                                <input type="text" 
                                    class="form-control form-control-sm bg-light col-3" 
                                    placeholder=" Start-Time">
                                <label class="text-white col-1"> to </label>
                                <input type="text" 
                                    class="form-control form-control-sm bg-light col-3" 
                                    placeholder="End-Time">
                            </div>
                            <br />
                            <div class="row">
                                <label class="text-white col-4"> Friday </label>
                                <input type="text" 
                                    class="form-control form-control-sm bg-light col-3" 
                                    placeholder=" Start-Time">
                                <label class="text-white col-1"> to </label>
                                <input type="text" 
                                    class="form-control form-control-sm bg-light col-3" 
                                    placeholder="End-Time">
                            </div>
                            <br />
                            <div class="row">
                                <label class="text-white col-4"> Saturday </label>
                                <input type="text" 
                                    class="form-control form-control-sm bg-light col-3" 
                                    placeholder=" Start-Time">
                                <label class="text-white col-1"> to </label>
                                <input type="text" 
                                    class="form-control form-control-sm bg-light col-3" 
                                    placeholder="End-Time">
                            </div>
                            <br />
                            <div class="row">
                                <label class="text-white col-4"> Sunday </label>
                                <input type="text" 
                                    class="form-control form-control-sm bg-light col-3" 
                                    placeholder=" Start-Time">
                                <label class="text-white col-1"> to </label>
                                <input type="text" 
                                    class="form-control form-control-sm bg-light col-3" 
                                    placeholder="End-Time">
                            </div>
                        </div>

                        <div class="mt-5">
                            <button class="btn btn-light col">
                                <a href="LoginTG.aspx" style="color: black">
                                Update Particulars
                                </a>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>--%>
    <div class="container">
        <div class="card-header">
            <label style="font-size: 28px; font-weight: bold;"> Personal Particulars </label>
        </div>
        <div class="card-body"> 
            <div class="WorkEx">
                <div class="card-group">
                    <label style="font-size: 20px; font-weight:bold; "> Work Experiences </label>
                </div>
                <form runat="server">
                    <div class="input-group">
                            <label> Highest Level of Education:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem Selected="True" Value="0">- Select -</asp:ListItem>
                                <asp:ListItem Value="1">PSLE</asp:ListItem>
                                <asp:ListItem Value="2">N Level</asp:ListItem>
                                <asp:ListItem Value="3">O Level</asp:ListItem>
                                <asp:ListItem Value="4">A Level</asp:ListItem>
                                <asp:ListItem Value="5">Diploma</asp:ListItem>
                                <asp:ListItem Value="6">Others: (Please Specify)</asp:ListItem>
                            </asp:DropDownList> 
                    </div>
                    <br />
                    <div class="input-group">
                        <label> Job Experience:  </label>
                    </div>
                    <asp:TextBox ID="PastJob" runat="server" Height="200px" Width="500px" OnTextChanged="PastJob_TextChanged" TextMode="MultiLine" Rows="10"></asp:TextBox>

                    <br />

                    <br />
                    <div class="card-group">
                        <label> Payment Information </label>
                    </div>
                    <input type="text" placeholder="Bank Account" class="auto-style1" />

                    <br />

                    <br />

                    <br />
                    <div class="Availability">
                        <label style="font-weight:bold; font-size: 20px;"> Job Availability </label>
                        <br />
                        <br />
                        <div class="card-group">
                            <label class="col-2"> Sunday </label>
                            <input type="text" placeholder=" Start-Time">
                            <label class="col-1"> to </label>
                            <input type="text" placeholder="End-Time">
                        </div>  
                        <br />
                        <div class="card-group">
                            <label class="col-2"> Monday </label>
                            <input type="text" placeholder=" Start-Time">
                            <label class="col-1"> to </label>
                            <input type="text" placeholder="End-Time">
                        </div>
                        <br />
                        <div class="card-group">
                            <label class="col-2"> Tuesday </label>
                            <input type="text" placeholder=" Start-Time">
                            <label class="col-1"> to </label>
                            <input type="text" placeholder="End-Time">
                        </div>
                        <br />
                        <div class="card-group">
                            <label class="col-2"> Wednesday </label>
                            <input type="text" placeholder=" Start-Time">
                            <label class="col-1"> to </label>
                            <input type="text" placeholder="End-Time">
                        </div>
                        <br />
                        <div class="card-group">
                            <label class="col-2"> Thursday </label>
                            <input type="text" placeholder=" Start-Time">
                            <label class="col-1"> to </label>
                            <input type="text" placeholder="End-Time">
                        </div>
                        <br />
                        <div class="card-group">
                            <label class="col-2"> Friday </label>
                            <input type="text" placeholder=" Start-Time">
                            <label class="col-1"> to </label>
                            <input type="text" placeholder="End-Time">
                        </div>
                        <br />
                        <div class="card-group">
                            <label class="col-2"> Saturday </label>
                            <input type="text" placeholder=" Start-Time">
                            <label class="col-1"> to </label>
                            <input type="text" placeholder="End-Time">
                        </div>
                    </div>
                    <br />
                    <button> Submit </button>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
