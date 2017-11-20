<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ErrorPage.aspx.cs" Inherits="SevenBooksApplication.ErrorPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Size="X-Large" ForeColor="Red" Text="Application Error"></asp:Label>
                </td>

            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblUnknownError" runat="server" BorderStyle="None" Font-Names="Arial" Text="An unknown error has occured.  We have been notified and will work on the error soon."></asp:Label>
                </td>

            </tr>
            <tr>

                <td>
                    <asp:Label ID="lblErrorCode" runat="server" BorderStyle="None" Font-Names="Arial"></asp:Label>
                </td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
