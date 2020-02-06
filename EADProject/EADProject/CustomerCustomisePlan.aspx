<%@ Page Title="Customise Your Plan" Language="C#" MasterPageFile="~/navbarV2.Master" AutoEventWireup="true" CodeBehind="CustomerCustomisePlan.aspx.cs" Inherits="EADProject.CustomerCustomisePlan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <style>
            div#header {
                font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
                font-size: 30px;
                font-weight: bold;
                text-align: center;
            }

            .auto-style1 {
                width: 100%;
            }

            .auto-style2 {
                width: 250px;
            }
            </style>
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12">
                <div class="card-header" id="header">
                    Customise Your Plan
                </div>
            </div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label11" runat="server" Font-Names="Gadugi" Font-Size="X-Large" Text="Plan Name:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="LabelPlanName" runat="server" Font-Bold="True" Font-Names="Gadugi" Font-Size="X-Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Font-Names="Gadugi" Font-Size="X-Large" Text="Plan Duration:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="LabelDuration" runat="server" Font-Bold="False" Font-Names="Gadugi" Font-Size="X-Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Font-Names="Gadugi" Font-Size="X-Large" Text="Choose Start Date:"></asp:Label>
                </td>
                <td>
                    <asp:Calendar ID="CalendarPlan" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px" OnSelectionChanged="CalendarPlan_SelectionChanged">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label12" runat="server" Font-Names="Gadugi" Font-Size="X-Large" Text="Start Date:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="LabelStartDate" runat="server" Font-Bold="False" Font-Names="Gadugi" Font-Size="X-Large" Text="Please select a start date." ForeColor="Black"></asp:Label> 
                </td>
                </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Font-Names="Gadugi" Font-Size="X-Large" Text="End Date:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="LabelEndDate" runat="server" Font-Bold="False" Font-Names="Gadugi" Font-Size="X-Large" Text="Please select a start date." ForeColor="Black"></asp:Label> 
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label13" runat="server" Font-Names="Gadugi" Font-Size="X-Large" Text="Total Price:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="LabelPrice" runat="server" Font-Bold="False" Font-Names="Gadugi" Font-Size="X-Large" ForeColor="Black"></asp:Label> 
                </td>
            </tr>
        </table>
        <br />
        <br />  
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12">
                <h3 style="text-align:center">Customise Schedule</h3>
            </div>
        </div>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Font-Names="Gadugi" Font-Size="X-Large" Text="First Location:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownListFirst" runat="server" Width="300px">
                        <asp:ListItem Selected="True" Value="-1">--Select--</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Font-Names="Gadugi" Font-Size="X-Large" Text="Second Location:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownListSecond" runat="server" Width="300px">
                        <asp:ListItem Selected="True" Value="-1">--Select--</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label8" runat="server" Font-Names="Gadugi" Font-Size="X-Large" Text="Third Location:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownListThird" runat="server" Width="300px">
                        <asp:ListItem Selected="True" Value="-1">--Select--</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <%--<asp:Button ID="ButtonContinue" runat="server" CssClass="btn btn-info" Text="Continue" OnClick="ButtonContinue_Click" />
&nbsp;&nbsp;--%>
                    <button runat="server" type="submit" class="btn btn-primary" data-toggle="modal" data-target="#travelModal" onserverclick="ButtonContinue_Click" >Continue</button>
&nbsp;&nbsp;
                    <asp:Button ID="ButtonCancel" runat="server" OnClick="ButtonCancel_Click" CssClass="btn btn-danger" Text="Cancel" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

        <div class="modal fade" id="travelModal" tabindex="-1" role="dialog" aria-labelledby="title" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-xl" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="title">Travel Particulars</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-12 col-sm-12 col-lg-12">
                                    <div class="well well-sm">
                                        <fieldset>
                                            <div class="form-group row">
                                                <div class="col-md-1 col-sm-1 col-lg-1">
                                                </div>
                                                <div class="col-md-3 col-sm-3 col-lg-3">
                                                    <label>Name: </label>
                                                    <asp:TextBox runat="server" ID="name" CssClass="form-control" />
                                                </div>
                                                <div class="col-md-2 col-sm-2 col-lg-2">
                                                </div>
                                                <div class="col-md-3 col-sm-3 col-lg-3">
                                                    <label>Passport No.: </label>
                                                    <asp:TextBox runat="server" ID="passNo" CssClass="form-control" />
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <div class="col-md-1 col-sm-1 col-lg-1">
                                                </div>
                                                <div class="col-md-3 col-sm-3 col-lg-3">
                                                    <label>Email: </label>
                                                    <asp:TextBox runat="server" ID="email" CssClass="form-control" />
                                                </div>
                                                <div class="col-md-2 col-sm-2 col-lg-2">
                                                </div>
                                                <div class="col-md-3 col-sm-3 col-lg-3">
                                                    <label>Mobile: </label>
                                                    <asp:TextBox runat="server" ID="mobileNo" CssClass="form-control" />
                                                </div>
                                            </div>

                                            
                                        </fieldset>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary" data-dismiss="modal" data-toggle="modal" data-target="#paymentModal">Next</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="paymentModal" tabindex="-1" role="dialog" aria-labelledby="titleTwo" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="titleTwo">Payment Details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div id="payment" class="container-fluid">
                            <div class="row">
                                <div class="col-md-12 col-sm-12 col-lg-12">
                                    <div class="well well-sm">
                                        <fieldset>
                                            <div class="form-group row">
                                                <div class="col-md-1 col-sm-1 col-lg-1">
                                                </div>
                                                <div class="col-md-4 col-sm-4 col-lg-4">
                                                    <label>Card No.: </label>
                                                    <asp:TextBox runat="server" ID="cardNo" CssClass="form-control" />
                                                </div>
                                            </div>

                                            <div class="form-group row ">
                                                <div class="col-md-1 col-sm-1 col-lg-1">
                                                </div>
                                                <div class="col-md-2 col-sm-2 col-lg-2">
                                                    <label>Expiry Month: </label>
                                                    <asp:TextBox runat="server" ID="month" MaxLength="2" Style="width: 75px" CssClass="form-control" placeholder="MM" />

                                                </div>
                                                <div class="col-md-2 col-sm-2 col-lg-2">
                                                    <label>Expiry Year: </label>
                                                    <asp:TextBox runat="server" ID="year" MaxLength="2" Style="width: 75px" CssClass="form-control" placeholder="YY" />
                                                </div>
                                                <div class="col-md-2 col-sm-2 col-lg-2">
                                                    <label>CCV: </label>
                                                    <asp:TextBox runat="server" ID="ccv" MaxLength="3" Style="width: 75px" CssClass="form-control" placeholder="CCV" />
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <div class="col-md-1 col-sm-1 col-lg-1">
                                                </div>
                                                <div class="col-md-5 col-sm-5 col-lg-5">
                                                    <label>Name as on card:</label>
                                                    <input type="text" id="cardName" class="form-control" />
                                                </div>
                                            </div>
                                        </fieldset>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button id="submit" runat="server" type="submit" class="btn btn-primary" data-dismiss="modal" onserverclick="submit_ServerClick">Done</button>
                    </div>
                </div>
            </div>
        </div>

    </form>

    <script>
        document.getElementById('<%= mobileNo.ClientID %>').addEventListener('input', function (e) {
            var x = e.target.value.replace(/\D/g, '').match(/(\d{0,3})(\d{0,4})(\d{0,4})/);
            e.target.value = !x[2] ? x[1] : '(+' + x[1] + ') ' + x[2] + (x[3] ? ' ' + x[3] : '');
        });

        var cardNo = document.getElementById('<%= cardNo.ClientID %>');
        cardNo.addEventListener("input", onChangeTxtCardNumber);

        function onChangeTxtCardNumber(e) {
            var cardNumber = cardNo.value;

            // Do not allow users to write invalid characters
            var formattedCardNumber = cardNumber.replace(/[^\d]/g, "");
            formattedCardNumber = formattedCardNumber.substring(0, 16);

            // Split the card number is groups of 4
            var cardNumberSections = formattedCardNumber.match(/\d{1,4}/g);
            if (cardNumberSections !== null) {
                formattedCardNumber = cardNumberSections.join(' ');
            }

            console.log("'" + cardNumber + "' to '" + formattedCardNumber + "'");

            // If the formmattedCardNumber is different to what is shown, change the value
            if (cardNumber !== formattedCardNumber) {
                cardNo.value = formattedCardNumber;
            }
        }
    </script>
</asp:Content>
