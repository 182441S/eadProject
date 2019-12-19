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
            .auto-style3 {
                width: 250px;
                height: 47px;
            }
            .auto-style4 {
                height: 47px;
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
                    <asp:Label ID="Label1" runat="server" Font-Names="Gadugi" Font-Size="X-Large" Text="Plan Duration:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Gadugi" Font-Size="X-Large" Text="4D3N"></asp:Label>
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
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
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
                    <asp:Label ID="Label4" runat="server" Font-Names="Gadugi" Font-Size="X-Large" Text="End Date:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" Font-Bold="False" Font-Names="Gadugi" Font-Size="X-Large" Text="3rd December 2019"></asp:Label>
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
                        <asp:ListItem>Fort Canning Park</asp:ListItem>
                        <asp:ListItem>Singapore Art Museum</asp:ListItem>
                        <asp:ListItem>National Museum of Singapore</asp:ListItem>
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
                        <asp:ListItem>Fort Canning Park</asp:ListItem>
                        <asp:ListItem>Singapore Art Museum</asp:ListItem>
                        <asp:ListItem>National Museum of Singapore</asp:ListItem>
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
                        <asp:ListItem>Fort Canning Park</asp:ListItem>
                        <asp:ListItem>Singapore Art Museum</asp:ListItem>
                        <asp:ListItem>National Museum of Singapore</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <br />
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12">
                <h3 style="text-align:center">Additional Items</h3>
            </div>
        </div>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label9" runat="server" Font-Names="Gadugi" Font-Size="X-Large" Text="Tour Guide:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownListGuide" runat="server" AutoPostBack="True" Width="150px">
                        <asp:ListItem Selected="True" Value="-1">NIL</asp:ListItem>
                        <asp:ListItem>John Smith</asp:ListItem>
                        <asp:ListItem>Robert Doe</asp:ListItem>
                        <asp:ListItem>Lisa Tan</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label10" runat="server" Font-Names="Gadugi" Font-Size="X-Large" Text="Extra Location:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="240px">
                        <asp:ListItem Selected="True" Value="-1">NIL</asp:ListItem>
                        <asp:ListItem>Singapore Flyer</asp:ListItem>
                        <asp:ListItem>Singapore Duck Tours</asp:ListItem>
                        <asp:ListItem>Victoria Concert Hall</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
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
                    <asp:Button ID="ButtonContinue" runat="server" CssClass="btn-info" Text="Continue" />
&nbsp;&nbsp;
                    <asp:Button ID="ButtonCancel" runat="server" CssClass="btn-danger" Text="Cancel" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</asp:Content>
