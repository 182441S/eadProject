<%@ Page Title="" Language="C#" MasterPageFile="~/navbarV2.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="EADProject.Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#travelModal">
        Proceed to fill in particulars
    </button>--%>

    <form runat="server">

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

            <div class="form-group row">
                <div class="col-md-1 col-sm-1 col-lg-1">
                </div>
                <div class="col-md-2 col-sm-2 col-lg-2">
                    <button id="submit" runat="server" type="submit" class="btn btn-primary" data-dismiss="modal" onserverclick="submit_ServerClick">Done</button>
                </div>
            </div>
        </fieldset>

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
