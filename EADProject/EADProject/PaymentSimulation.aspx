<%@ Page Title="" Language="C#" MasterPageFile="~/navbarV2.Master" AutoEventWireup="true" CodeBehind="PaymentSimulation.aspx.cs" Inherits="EADProject.PaymentSimulation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <link href="StyleSheets/PaymentSimulation.css" rel="stylesheet" />

        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-4">


                <div class="flip-card">
                    <div class="flip-card-inner">
                        <div class="flip-card-front">
                            <img src="Images/JackJonesAvatar.png" style="width: 90px;" />
                            <h1>Jack Jones</h1>
                        </div>
                        <div class="flip-card-back">
                            <p>
                                <asp:Label ID="Datejoinedstring" runat="server" Text="Label">Date Joined: </asp:Label>
                                <asp:Label ID="joinDatelb" runat="server" Text="Label">10-2-2018</asp:Label>
                            </p>


                            <p>
                                <asp:Label ID="NoOfJobsstring" runat="server" Text="Label">No. of Jobs this month: </asp:Label>
                                <asp:Label ID="NoOfJobslb" runat="server" Text="Label">10</asp:Label>
                            </p>
                            <p>
                                <asp:Label ID="Ratingstring" runat="server" Text="Label">Past Month Rating:</asp:Label>
                                <asp:Label ID="Ratinglb" runat="server" Text="Label">9.5/10</asp:Label>
                            </p>
                            <p>
                                <asp:Button ID="Button1" class="Bonus" runat="server" data-toggle="modal" data-target="#exampleModal" runat="server"  OnClientClick="return false;" Text="Assign Bonus" />
                            </p>
                            <a class="statlink" href="">More Detailed Statistics -></a>

                        </div>
                    </div>
                </div>
            </div>
            <!---------------------->
            <div class="col-sm-12 col-md-12 col-lg-4">

                <div class="flip-card">
                    <div class="flip-card-inner">
                        <div class="flip-card-front">
                            <img src="Images/JackJonesAvatar.png" style="width: 90px;" />
                            <h1>Josh</h1>
                        </div>
                        <div class="flip-card-back">
                            <p>
                                <asp:Label ID="Label1" runat="server" Text="Label">Date Joined: </asp:Label>
                                <asp:Label ID="Label2" runat="server" Text="Label">10-2-2019</asp:Label>
                            </p>


                            <p>
                                <asp:Label ID="Label3" runat="server" Text="Label">No. of Jobs this month: </asp:Label>
                                <asp:Label ID="Label4" runat="server" Text="Label">8</asp:Label>
                            </p>
                            <p>
                                <asp:Label ID="Label5" runat="server" Text="Label">Past Month Rating:</asp:Label>
                                <asp:Label ID="Label6" runat="server" Text="Label">7/10</asp:Label>
                            </p>
                            <p>
                                <asp:Button type="button" ID="Button2" class="Bonus" data-toggle="modal" data-target="#exampleModal" runat="server" Text="Assign Bonus" OnClientClick="return false;" />
                            </p>
                            
                            <a class="statlink" href="">More Detailed Statistics -></a>

                        </div>
                    </div>
                    
                </div>
                
                <br />
            </div>


            <!---------------------->
            <div class="col-sm-12 col-md-12 col-lg-4">

                <div class="flip-card">
                    <div class="flip-card-inner">
                        <div class="flip-card-front">
                            <img src="Images/JackJonesAvatar.png" style="width: 90px;" />
                            <h1>Tom Waterson</h1>
                        </div>
                        <div class="flip-card-back">
                            <p>
                                <asp:Label ID="Label7" runat="server" Text="Label">Date Joined: </asp:Label>
                                <asp:Label ID="Label8" runat="server" Text="Label">10-2-2019</asp:Label>
                            </p>


                            <p>
                                <asp:Label ID="Label9" runat="server" Text="Label">No. of Jobs this month: </asp:Label>
                                <asp:Label ID="Label10" runat="server" Text="Label">8</asp:Label>
                            </p>
                            <p>
                                <asp:Label ID="Label11" runat="server" Text="Label">Past Month Rating:</asp:Label>
                                <asp:Label ID="Label12" runat="server" Text="Label">7/10</asp:Label>
                            </p>
                            <p>
                                <asp:Button ID="Button3" class="Bonus" data-toggle="modal" data-target="#exampleModal" runat="server"  OnClientClick="return false;" runat="server" Text="Assign Bonus" />
                            </p>
                            <a class="statlink" href="">More Detailed Statistics -></a>

                        </div>
                    </div>
                </div>
            </div>



            <!---------------------->
            <div class="col-sm-12 col-md-12 col-lg-4">


                <div class="flip-card">
                    <div class="flip-card-inner">
                        <div class="flip-card-front">
                            <img src="Images/JackJonesAvatar.png" style="width: 90px;" />
                            <h1>Taylor</h1>
                        </div>
                        <div class="flip-card-back">
                            <p>
                                <asp:Label ID="Label13" runat="server" Text="Label">Date Joined: </asp:Label>
                                <asp:Label ID="Label14" runat="server" Text="Label">10-2-2019</asp:Label>
                            </p>


                            <p>
                                <asp:Label ID="Label15" runat="server" Text="Label">No. of Jobs this month: </asp:Label>
                                <asp:Label ID="Label16" runat="server" Text="Label">8</asp:Label>
                            </p>
                            <p>
                                <asp:Label ID="Label17" runat="server" Text="Label">Past Month Rating:</asp:Label>
                                <asp:Label ID="Label18" runat="server" Text="Label">7/10</asp:Label>
                            </p>
                            <p>
                                <asp:Button ID="Button4" class="Bonus" data-toggle="modal" data-target="#exampleModal" runat="server"  OnClientClick="return false;" runat="server" Text="Assign Bonus" />
                            </p>
                            <a class="statlink" href="">More Detailed Statistics -></a>

                        </div>
                    </div>
                </div>
            </div>




            <!---------------------->
            <div class="col-sm-12 col-md-12 col-lg-4">

                <div class="flip-card">
                    <div class="flip-card-inner">
                        <div class="flip-card-front">
                            <img src="Images/JackJonesAvatar.png" style="width: 90px;" />
                            <h1>Anthony</h1>
                        </div>
                        <div class="flip-card-back">
                            <p>
                                <asp:Label ID="Label19" runat="server" Text="Label">Date Joined: </asp:Label>
                                <asp:Label ID="Label20" runat="server" Text="Label">10-2-2019</asp:Label>
                            </p>


                            <p>
                                <asp:Label ID="Label21" runat="server" Text="Label">No. of Jobs this month: </asp:Label>
                                <asp:Label ID="Label22" runat="server" Text="Label">8</asp:Label>
                            </p>
                            <p>
                                <asp:Label ID="Label23" runat="server" Text="Label">Past Month Rating:</asp:Label>
                                <asp:Label ID="Label24" runat="server" Text="Label">7/10</asp:Label>
                            </p>
                            <p>
                                <asp:Button ID="Button5" class="Bonus" data-toggle="modal" data-target="#exampleModal" runat="server"  OnClientClick="return false;" runat="server" Text="Assign Bonus" />
                            </p>
                            <a class="statlink" href="">More Detailed Statistics -></a>

                        </div>
                    </div>

                </div>
            </div>
        </div>

       

        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <asp:Label ID="Label25" runat="server" Text="Tour Guide Name:"></asp:Label>
                        &nbsp;<asp:Label ID="Label26" runat="server" Text="Jack Jones"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label27" runat="server" Text="Telephone Number:"></asp:Label>
                        &nbsp;<asp:Label ID="Label28" runat="server" Text="87654321"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label29" runat="server" Text="Email Address:"></asp:Label>
                        &nbsp;<asp:Label ID="Label30" runat="server" Text="JackJones@gmail.com"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label31" runat="server" Text="Current monthly Salary:"></asp:Label>
                        &nbsp;<asp:TextBox ID="tb32" runat="server" Text="$2500"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label33" runat="server" Text="Assign Bonus Amount($):"></asp:Label>
                        &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Button ID="Button6" runat="server" Text="Submit" />
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary" data-dismiss="modal">Save changes</button>
                    </div>
                </div>
            </div>
        </div>




    </form>


</asp:Content>
