<%@ Page Title="" Language="C#" MasterPageFile="~/navbar.Master" AutoEventWireup="true" CodeBehind="T_Details.aspx.cs" Inherits="EADProject.T_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-lg-12">
                <div class="well well-sm">
                    <form class="form-horizontal" method="post">
                        <fieldset>
                            <legend class="text-left navbar-header">Travel Particulars</legend>

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
                                <div class="col-md-2 col-sm-2 col-lg-2">
                                    <label>Mobile: </label>
                                    <input type="text" id="mobileNo" class="form-control" />
                                </div>
                                <div class="col-md-3 col-sm-2 col-lg-2">

                                </div>
                                <div class="col-md-3 col-sm-3 col-lg-3">
                                    <label>Travelling From: </label>
                                    <input type="text" id="tFrom" class="form-control" />
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-md-1 col-sm-1 col-lg-1">

                                </div>
                                <div class="col-md-2 col-sm-2 col-lg-2">
                                    <label>Home Phone: </label>
                                    <input type="text" id="homeNo" class="form-control" />
                                </div>
                                <div class="col-md-2 col-sm-2 col-lg-2">

                                </div>
                            </div>

                            <div class="form-group row">
                               <div class="col-md-1 col-sm-1 col-lg-1">

                                </div>
                                <div class="col-md-3 col-sm-3 col-lg-3">
                                    <button type="submit" id="btnSubmit" onclick="location.href='P_Details.aspx';" class="btn btn-primary btn-md">Submit</button>
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script>
        var mobileNo = document.querySelector("#mobileNo");
        mobileNo.addEventListener("input", onChangePhoneNumber);

        function onChangePhoneNumber(e) {
            var phoneNumber = mobileNo.value;

            // Do not allow users to write invalid characters
            var formattedPhoneNumber = phoneNumber.replace(/[^\d]/g, "");
            formattedPhoneNumber = formattedPhoneNumber.substring(0, 8);

            // Split the card number is groups of 4
            var phoneNumberSections = formattedPhoneNumber.match(/\d{1,4}/g);
            if (phoneNumberSections !== null) {
                formattedPhoneNumber = phoneNumberSections.join(' ');
            }

            console.log("'" + phoneNumber + "' to '" + formattedPhoneNumber + "'");

            // If the formmattedphoneNumber is different to what is shown, change the value
            if (phoneNumber !== formattedPhoneNumber) {
                mobileNo.value = formattedPhoneNumber;
            }
        }
        var homeNo = document.querySelector("#homeNo");
        homeNo.addEventListener("input", onChangeHomeNumber);

        function onChangeHomeNumber(e) {
            var homeNumber = homeNo.value;

            // Do not allow users to write invalid characters
            var formattedhomeNumber = homeNumber.replace(/[^\d]/g, "");
            formattedhomeNumber = formattedhomeNumber.substring(0, 8);

            // Split the card number is groups of 4
            var homeNumberSections = formattedhomeNumber.match(/\d{1,4}/g);
            if (homeNumberSections !== null) {
                formattedhomeNumber = homeNumberSections.join(' ');
            }

            console.log("'" + homeNumber + "' to '" + formattedhomeNumber + "'");

            // If the formmattedhomeNumber is different to what is shown, change the value
            if (homeNumber !== formattedhomeNumber) {
                homeNo.value = formattedhomeNumber;
            }
        }
    </script>
</asp:Content>
