<%@ Page Title="Set discount" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SetDiscount.aspx.cs" Inherits="SevenBooksApplication.SetDiscount" %>

<asp:Content ID="Head1" ContentPlaceHolderID="HeadContent" runat="server">
    <!-- Include Required Prerequisites -->
    <script type="text/javascript" src="//cdn.jsdelivr.net/jquery/1/jquery.min.js"></script>
    <script type="text/javascript" src="//cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>

    <!-- Include Date Range Picker -->
    <script type="text/javascript" src="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.js"></script>
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.css" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        $(function () {
            $('#MainContent_tbPeriod').daterangepicker({
                "locale": {
                    "format": "DD/MM/YYYY",
                },
                "alwaysShowCalendars": true,
                "startDate": "21/11/2017",
                "endDate": "28/11/2017",
                "minDate": "21/11/2017"
            }, function (start, end, label) {
                console.log("New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')");
            });
        })
    </script>
    <h4>Discount period:</h4>
    <asp:TextBox ID="tbPeriod" runat="server" Width="182px" />
    <h4>Discount percent:</h4>
    <asp:TextBox ID="tbDiscount" runat="server" Width="32px" />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Wrong number format" ValidationExpression="[1-9]{0,1}[0-9]" ControlToValidate="tbDiscount"></asp:RegularExpressionValidator>
    <br />
    <asp:Button ID="btnConfirm" runat="server" Text="Confirm" OnClick="btnConfirm_Click" />
</asp:Content>

