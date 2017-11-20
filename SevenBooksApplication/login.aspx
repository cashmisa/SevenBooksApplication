<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SevenBooksApplication.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Login ID="Login1" runat="server">
    </asp:Login>
    <asp:HyperLink ID="pwdRecovery" runat="server" NavigateUrl="~/PasswordRecovery.aspx">Forgot password</asp:HyperLink><br />
    <asp:HyperLink ID="regUser" runat="server" NavigateUrl="~/CreateUser.aspx">Create account</asp:HyperLink>
</asp:Content>
