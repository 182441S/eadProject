<%@ Page Title="" Language="C#" MasterPageFile="~/navbarV2.Master" AutoEventWireup="true" CodeBehind="UpdateParticulars.aspx.cs" Inherits="EADProject.UpdateParticulars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="card-header">
            <label style="font-size: 28px; font-weight: bold;"> Update Particulars </label>
        </div>
        <form runat="server">
            <div class="card-body">
                <div class="card-group">
                    <label class="col-1"> Name: </label>
                    <asp:TextBox runat="server"> Samantha Ong </asp:TextBox>
                </div>
                <br />
                <div class="card-group">
                    <label class="col-1"> Email: </label>
                    <asp:TextBox runat="server"> SamOng@gmail.com </asp:TextBox>
                </div>
               <br />
                <div class="card-group">
                    <label class="col-2"> Mobile Phone No: </label>
                    <asp:DropDownList runat="server">
                        <asp:ListItem Value="0">- Select -</asp:ListItem>
                        <asp:ListItem Value="Austria">+43</asp:ListItem>
                        <asp:ListItem Value="Australia">+61</asp:ListItem>
                        <asp:ListItem Value="Singapore">+65</asp:ListItem>
                        <asp:ListItem Value="Brunei">+673</asp:ListItem>
                        <asp:ListItem Value="Bangladesh">+880</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox runat="server"> 9567 4856 </asp:TextBox>
                </div>
                <br />
                <div class="card-group">
                    <label class="col-2"> Old Password: </label>
                    <br />
                    <asp:TextBox runat="server"> ******** </asp:TextBox>
                </div>
                <br />
                <div class="card-group">
                    <label class="col-2"> New Password: </label>
                    <br />
                    <asp:TextBox runat="server"></asp:TextBox>
                </div>
                <br />
                <div class="card-group">
                    <label class="col-2"> Confirm Password: </label>
                    <br />
                    <asp:TextBox runat="server"></asp:TextBox>
                </div>
                <br />
                <br />
                <button> Update Particulars </button>
            </div>
        </form>
    </div>
</asp:Content>
