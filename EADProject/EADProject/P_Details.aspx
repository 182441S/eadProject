<%@ Page Title="" Language="C#" MasterPageFile="~/navbar.Master" AutoEventWireup="true" CodeBehind="P_Details.aspx.cs" Inherits="EADProject.P_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-lg-12">
                <div class="well well-sm"
                    <form class="form-horizontal" method="post">
                        <fieldset>
                            <legend class="text-left navbar-header">Payment Particulars</legend>

                            <div class="form-group row">
                                <div class="col-md-1 col-sm-1 col-lg-1">

                                </div>
                                <div class="col-md-3 col-sm-3 col-lg-3">
                                    <label>Card No.: </label>
                                    <input id="cardNo" class="form-control" />
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-md-1 col-sm-1 col-lg-1">

                                </div>
                                <div class="col-md-3 col-sm-3 col-lg-3">
                                    <button type="submit" id="btnSubmit" onclick="location.href='T_Details.aspx';" class="btn btn-primary btn-md">Submit</button>
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script>
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
	
            console.log("'"+ cardNumber + "' to '" + formattedCardNumber + "'");
  
            // If the formmattedCardNumber is different to what is shown, change the value
            if (cardNumber !== formattedCardNumber) {
                cardNo.value = formattedCardNumber;
            }
        }
    </script>
</asp:Content>