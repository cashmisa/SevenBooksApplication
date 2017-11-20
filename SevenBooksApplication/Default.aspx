<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SevenBooksApplication._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:GridView ID="gvBook" runat="server">
        <Columns>
            <!--
            <asp:ImageField DataImageUrlField='~/image/<%#Eval("ISBN")%>.jpg'>
            </asp:ImageField>-->
        </Columns>
    </asp:GridView>

    </asp:Content>
