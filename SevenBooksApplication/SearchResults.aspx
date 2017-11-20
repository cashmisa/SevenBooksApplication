<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SearchResults.aspx.cs" Inherits="SevenBooksApplication.SearchResults" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<asp:Repeater ID="repBookListSearch" runat="server">
        <HeaderTemplate></HeaderTemplate>
        <ItemTemplate>
            <div style="display: inline-block">
            <asp:Image runat="server" Width="200px"
                       ImageUrl='<%# "~/image/"+Eval("ISBN")+".jpg" %>' AlternateText='<%#Eval("ISBN") %>'></asp:Image>
            <br/>
            <table>
                <tr><td class="Title"><asp:Label ID = "lbTitle" runat="server" text ='<%#Eval("Title") %>'></asp:Label></td></tr>
                <tr><td class="Author"><asp:Label ID = "lbAuthor" runat="server" text ='<%#Eval("Author") %>'></asp:Label></td></tr>
                <tr><td class ="Price"><asp:Label ID = "lbPrice" runat="server" text ='<%#Eval("Price") %>' ></asp:Label></td></tr>
                <tr><td class="AddToCart"><asp:Button runat="server" ID="btnAddtoCart" Text="Add to cart"/></td></tr>
            </table>
            </div>
            
        </ItemTemplate>
        <FooterTemplate></FooterTemplate>
    </asp:Repeater>
    </asp:Content>
