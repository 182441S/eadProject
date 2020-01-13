<%@ Page Title="" Language="C#" MasterPageFile="~/navbarV2.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="EADProject.Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#travelModal">
        Proceed to fill in particulars
    </button>

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
                                    <form class="form-horizontal" method="post" action="P_Details.aspx">
                                        <fieldset>
                                            <div class="form-group row">
                                                <div class="col-md-1 col-sm-1 col-lg-1">
                                                </div>
                                                <div class="col-md-3 col-sm-3 col-lg-3">
                                                    <label>First Name: </label>
                                                    <input type="text" id="fName" class="form-control" />
                                                </div>
                                                <div class="col-md-2 col-sm-2 col-lg-2">
                                                </div>
                                                <div class="col-md-3 col-sm-3 col-lg-3">
                                                    <label>Passport No.: </label>
                                                    <input type="text" id="passNo" class="form-control" />
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <div class="col-md-1 col-sm-1 col-lg-1">
                                                </div>
                                                <div class="col-md-3 col-sm-3 col-lg-3">
                                                    <label>Last Name: </label>
                                                    <input type="text" id="lName" class="form-control" />
                                                </div>
                                                <div class="col-md-2 col-sm-2 col-lg-2">
                                                </div>
                                                <div class="col-md-3 col-sm-3 col-lg-3">
                                                    <label>Duration Start: </label>
                                                    <input type="text" id="dStart" class="form-control" />
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <div class="col-md-1 col-sm-1 col-lg-1">
                                                </div>
                                                <div class="col-md-3 col-sm-3 col-lg-3">
                                                    <label>Email: </label>
                                                    <input type="text" id="email" class="form-control" />
                                                </div>
                                                <div class="col-md-2 col-sm-2 col-lg-2">
                                                </div>
                                                <div class="col-md-3 col-sm-3 col-lg-3">
                                                    <label>Duration End: </label>
                                                    <input type="text" id="dEnd" class="form-control" />
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <div class="col-md-1 col-sm-1 col-lg-1">
                                                </div>
                                                <div class="col-md-3 col-sm-3 col-lg-3">
                                                    <label>Mobile: </label>
                                                    <input type="text" id="mobileNo" class="form-control" />
                                                </div>
                                                <div class="col-md-2 col-sm-2 col-lg-2">
                                                </div>
                                                <div class="col-md-3 col-sm-3 col-lg-3">
                                                    <label>Travelling From: </label>
                                                    <input type="text" id="tFrom" class="form-control" />
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <div class="col-md-1 col-sm-1 col-lg-1">
                                                </div>
                                                <div class="col-md-3 col-sm-3 col-lg-3">
                                                    <label>Home Phone: </label>
                                                    <input type="text" id="homeNo" class="form-control" />
                                                </div>
                                                <div class="col-md-2 col-sm-2 col-lg-2">
                                                </div>
                                            </div>
                                        </fieldset>
                                    </form>
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
                                    <form class="form-horizontal" method="post" action="T_Details.aspx">
                                        <fieldset>
                                            <div class="form-group row">
                                                <div class="col-md-1 col-sm-1 col-lg-1">
                                                </div>
                                                <div class="col-md-4 col-sm-4 col-lg-4">
                                                    <label>Card No.: </label>
                                                    <input id="cardNo" class="form-control" />
                                                </div>
                                            </div>

                                            <div class="form-group row ">
                                                <div class="col-md-1 col-sm-1 col-lg-1">
                                                </div>
                                                <div class="col-md-2 col-sm-2 col-lg-2">
                                                    <label>Expiry Month: </label>
                                                    <input type="text" id="month" maxlength="2" style="width: 75px" class="form-control" placeholder="MM" />

                                                </div>
                                                <div class="col-md-2 col-sm-2 col-lg-2">
                                                    <label>Expiry Year: </label>
                                                    <input type="text" id="year" maxlength="2" style="width: 75px" class="form-control" placeholder="YY" />
                                                </div>
                                                <div class="col-md-2 col-sm-2 col-lg-2">
                                                    <label>CCV: </label>
                                                    <input type="text" id="ccv" style="width: 75px" maxlength="3" class="form-control" placeholder="CCV" />
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
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary" data-dismiss="modal">Done</button>
                </div>
            </div>
        </div>
    </div>

    <script>
        document.getElementById('mobileNo').addEventListener('input', function (e) {
            var x = e.target.value.replace(/\D/g, '').match(/(\d{0,3})(\d{0,4})(\d{0,4})/);
            e.target.value = !x[2] ? x[1] : '(+' + x[1] + ') ' + x[2] + (x[3] ? '-' + x[3] : '');
        });

        document.getElementById('homeNo').addEventListener('input', function (e) {
            var x = e.target.value.replace(/\D/g, '').match(/(\d{0,3})(\d{0,4})(\d{0,4})/);
            e.target.value = !x[2] ? x[1] : '(+' + x[1] + ') ' + x[2] + (x[3] ? '-' + x[3] : '');
        });

        var cardNo = document.querySelector("#cardNo");
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
