<%@ Page Title="" Language="C#" MasterPageFile="~/navbarV2.Master" AutoEventWireup="true" CodeBehind="assignBonus.aspx.cs" Inherits="EADProject.assignBonus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="Scripts/paymentsim.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form2" runat="server">
        <link href="StyleSheets/jobListing.css" rel="stylesheet" />
        <h1 class="title">Assign Bonus</h1>
        <br />
        <br />
        <br />

        <div class="Details">
            <asp:Label ID="namestringlbl" runat="server" CssClass="label" Text="Tour Guide Name:"></asp:Label>
                        &nbsp;<asp:Label ID="tgnamelbl" CssClass="details" runat="server" ></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="nricstringlabel" runat="server" CssClass="label" Text="NRIC:"></asp:Label>
                        &nbsp;<asp:Label ID="nriclbl" CssClass="details" runat="server" ></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="phonestringlbl" runat="server" CssClass="label" Text="Telephone Number:"></asp:Label>
                        &nbsp;<asp:Label ID="phonelbl" CssClass="details" runat="server" ></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="emailstringlbl" runat="server" CssClass="label" Text="Email Address:"></asp:Label>
                        &nbsp;<asp:Label ID="emaillbl" CssClass="details" runat="server"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="salarystringlbl" runat="server" CssClass="label" Text="Current monthly Salary:"></asp:Label>
                        &nbsp;<asp:TextBox ID="salarytb" TextMode="Number" CssClass="details" runat="server" ></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="bonusamtstringlbl" runat="server" CssClass="label" Text="Assign Bonus Amount($):"></asp:Label>
                        &nbsp;<asp:TextBox ID="bonusamttb" TextMode="Number" CssClass="details" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="commentsstringlbl" runat="server" CssClass="label" Text="Comments:"></asp:Label>
                        &nbsp;<asp:TextBox ID="Commentstb" CssClass="details" runat="server"></asp:TextBox>
                        <br />
                        <br />
                                    <asp:Label ID="imagestringlbl" runat="server" CssClass="label" Text="Upload Profile picture:"></asp:Label>
                                       &nbsp;<asp:FileUpload ID="FileUpload1" CssClass="details" runat="server" />
            <br />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <button id="cancel" type="button" class="btn btn-secondary"  runat="server" onserverclick="cancel_ServerClick">Cancel</button>
            &nbsp;&nbsp;&nbsp;
           <button id="saveBTTN" class="btn btn-primary" runat="server" onserverclick="saveBTTN_ServerClick" >Save changes</button>

        </div>
    </form>
</asp:Content>
