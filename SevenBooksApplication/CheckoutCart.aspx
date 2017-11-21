<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CheckoutCart.aspx.cs" Inherits="SevenBooksApplication.CheckoutCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Thanks for your orders. Below is your order details:"></asp:Label><br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" HorizontalAlign="Center" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDataBound="GridView1_RowDataBound" PageSize="3">
        <Columns>
            <asp:TemplateField HeaderText="Book Title">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Quantity">
                <ItemTemplate>
                    <asp:Label ID="lblQty" runat="server" Text="Label"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Unit Price">
                <ItemTemplate>
                    <asp:Label ID="lblPrice" runat="server" Text="Label"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
                        <asp:TemplateField HeaderText="Total Price">
                <ItemTemplate>
                    <asp:Label ID="lblTotalPrice" runat="server" Text="Label"></asp:Label><br />
                    <asp:Label ID="lblDiscount" runat="server" Text="Label" Visible="False"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <PagerSettings Position="TopAndBottom" />
        <PagerStyle HorizontalAlign="Left" VerticalAlign="Middle" />
    </asp:GridView>
    <p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MyAccount.aspx">Click here </asp:HyperLink>  to view all order history
    </p>
</asp:Content>
