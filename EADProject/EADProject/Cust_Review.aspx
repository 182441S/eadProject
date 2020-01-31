<%@ Page Title="" Language="C#" MasterPageFile="~/navbarV2.Master" AutoEventWireup="true" CodeBehind="Cust_Review.aspx.cs" Inherits="EADProject.Cust_Review" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <form method="post" runat="server">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-lg-6">
                    <div class="form-group">
                        <label>Please give us some feedback regarding the experiences you have had with us!</label>
                        <asp:TextBox runat="server" TextMode="MultiLine" Rows="4" ID="review" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-sm-4 col-lg-4">
                    <button id="insertReview" runat="server" onserverclick="insertReview_ServerClick" class="btn btn-warning btn-send">Submit Review</button>
                </div>
            </div>
        </form>
    </div>
</asp:Content>
