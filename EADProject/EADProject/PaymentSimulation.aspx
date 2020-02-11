<%@ Page Title="" Language="C#" MasterPageFile="~/navbarV2.Master" AutoEventWireup="true" CodeBehind="PaymentSimulation.aspx.cs" Inherits="EADProject.PaymentSimulation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <link href="StyleSheets/PaymentSimulation.css" rel="stylesheet" />

            <asp:DataList ID="DL1" DataSourceID="DBLink"  runat="server" RepeatColumns="3" RepeatDirection="horizontal" CssClass="col-sm-12 col-md-12 col-lg-12">
        <ItemTemplate>
        <div class="row" id="1">
            <div class="flip-card" id="2">
                    <div class="flip-card-inner" id="3">
                        <div class="flip-card-front">
                            <asp:Image runat="server" ID="imagepic" style="width: 90px;" />
                            <h1><%# Eval("Name") %></h1>
                        </div>
                        <div class="flip-card-back" id="4">
                            <p>
                                <asp:Label ID="nricstring" runat="server" >NRIC: </asp:Label>
                                <asp:Label ID="nriclbl" runat="server" Text='<%# Eval("nric") %>' ></asp:Label>
                            </p>
                            
                            
                            <p>
                                <asp:Label ID="Datejoinedstring" runat="server" Text="Label">Date Joined: </asp:Label>
                                <asp:Label ID="joinDatelb" runat="server" ><%# Eval("Date Registered") %></asp:Label>
                            </p>


                            <p>
                                <asp:Label ID="NoOfJobsstring" runat="server" Text="Label">No. of Jobs this month: </asp:Label>
                                <asp:Label ID="NoOfJobslb" runat="server" ><%# Eval("NoOfJobs") %></asp:Label>
                            </p>
                            <p>
                                <asp:Label ID="Ratingstring" runat="server" Text="Label">Past Month Rating:</asp:Label>
                                <asp:Label ID="Ratinglb" runat="server" ><%# Eval("Rating") %>/10</asp:Label>
                            </p>
                            <p>
                          <button id="Bonus" class="Bonus" runat="server" Name='<%# Eval("Name") %>' Nric='<%# Eval("nric") %>' Phone='<%# Eval("Phone") %>' Email='<%# Eval("Email") %>' Salary='<%# Eval("Salary") %>' onserverclick="Button1_ServerClick">Assign Bonus</button>

                             
                            </p>
<%--                            <a class="statlink" href="#">More Detailed Statistics -></a>--%>

                        </div>
                    </div>
                </div>

            
            <%--<div class="col-sm-12 col-md-12 col-lg-4">


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
                                <asp:Button ID="Button1" class="Bonus" data-toggle="modal" data-target="#exampleModal" runat="server"  OnClientClick="return false;" Text="Assign Bonus" />
                            </p>
                            <a class="statlink" href="#">More Detailed Statistics -></a>

                        </div>
                    </div>
                </div>
            </div>--%>
            <!---------------------->
           <%-- <div class="col-sm-12 col-md-12 col-lg-4">

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
                            
                            <a class="statlink" href="#">More Detailed Statistics -></a>

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
                                <asp:Button ID="Button3" class="Bonus" data-toggle="modal" data-target="#exampleModal" runat="server"  OnClientClick="return false;" Text="Assign Bonus" />
                            </p>
                            <a class="statlink" href="#">More Detailed Statistics -></a>

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
                                <asp:Button ID="Button4" class="Bonus" data-toggle="modal" data-target="#exampleModal" runat="server"  OnClientClick="return false;" Text="Assign Bonus" />
                            </p>
                            <a class="statlink" href="#">More Detailed Statistics -></a>

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
                                <asp:Button ID="Button5" class="Bonus" data-toggle="modal" data-target="#exampleModal" runat="server"  OnClientClick="return false;" Text="Assign Bonus" />
                            </p>
                            <a class="statlink" href="#">More Detailed Statistics -></a>

                        </div>
                    </div>

                </div>
            </div>
        </div>--%>
            </ItemTemplate>
    </asp:DataList>
            <asp:SqlDataSource ID="DBLink" runat="server" ConnectionString="<%$ ConnectionStrings:ConnStr%>" SelectCommand="SELECT * FROM [TGDetails]"></asp:SqlDataSource>

       

        <%--<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                        &nbsp;<asp:Label ID="Label26" runat="server" ><%# Eval("Name") %>Jackson</asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="NRIC:"></asp:Label>
                        &nbsp;<asp:Label ID="Label2" runat="server" ><%# Eval("nric") %>S1234567A</asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label27" runat="server" Text="Telephone Number:"></asp:Label>
                        &nbsp;<asp:Label ID="Label28" runat="server" ><%# Eval("Phone.no") %>87654321</asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label29" runat="server" Text="Email Address:"></asp:Label>
                        &nbsp;<asp:Label ID="Label30" runat="server"><%# Eval("Email") %>Jackson@gmail.com</asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label31" runat="server" Text="Current monthly Salary:"></asp:Label>
                        &nbsp;<asp:TextBox ID="salarytb" runat="server" Text=<%# Eval("Salary") %>>1000</asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label33" runat="server" Text="Assign Bonus Amount($):"></asp:Label>
                        &nbsp;<asp:TextBox ID="bonusamttb" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label32" runat="server" Text="Comments:"></asp:Label>
                        &nbsp;<asp:TextBox ID="Commentstb" runat="server"></asp:TextBox>
                        <br />
                        <br />
                                        <asp:FileUpload ID="FileUpload1" runat="server" />

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button id="saveBTTN" class="btn btn-primary" data-dismiss="modal" runat="server"  >Save changes</button>
                    </div>
                </div>
            </div>
        </div>--%>
            




    </form>


</asp:Content>
