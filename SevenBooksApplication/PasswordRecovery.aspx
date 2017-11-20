<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PasswordRecovery.aspx.cs" Inherits="SevenBooksApplication.PasswordRecovery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server"></asp:PasswordRecovery>
    <asp:HyperLink ID="regUser" runat="server" NavigateUrl="~/CreateUser.aspx">Create account</asp:HyperLink>
</asp:Content>
