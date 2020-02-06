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
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
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
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
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
                <h3 style="text-align: center">Customise Schedule</h3>
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
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="ButtonContinue" runat="server" CssClass="btn btn-info" Text="Continue" OnClick="ButtonContinue_Click" />
                    &nbsp;&nbsp;
                    <asp:Button ID="ButtonCancel" runat="server" OnClick="ButtonCancel_Click" CssClass="btn btn-danger" Text="Cancel" data-toggle="modal" data-target="#travelModal" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</asp:Content>
