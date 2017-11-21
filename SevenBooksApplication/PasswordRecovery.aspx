<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PasswordRecovery.aspx.cs" Inherits="SevenBooksApplication.PasswordRecovery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" CssClass="auto-style4" Width="1043px">
        <UserNameTemplate>
            <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                <tr>
                    <td>
                        <table cellpadding="0" style="width:975px;">
                            <tr>
                                <td align="center" colspan="2">Forgot Your Password?</td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">Enter your User Name to receive your password.</td>
                            </tr>
                            <tr>
                                <td align="right" class="auto-style3">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="UserName" runat="server" Width="244px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="PasswordRecovery1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color:Red;">
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    <asp:Button ID="SubmitButton" runat="server" BorderStyle="None" CommandName="Submit" CssClass="btnHead" Text="Submit" ValidationGroup="PasswordRecovery1" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </UserNameTemplate>
    </asp:PasswordRecovery>
    <asp:HyperLink ID="regUser" runat="server" NavigateUrl="~/CreateUser.aspx">Create account</asp:HyperLink>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .auto-style3 {
            width: 406px;
        }
        .auto-style4 {
            margin-left: 74px;
        }
    </style>
</asp:Content>

