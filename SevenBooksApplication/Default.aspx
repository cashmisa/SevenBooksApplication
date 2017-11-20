<%@ Page Title="Home Page" Language="C#"  MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SevenBooksApplication._Default" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        
   <link href="Content/bootstrap-minty.css" rel="stylesheet" type="text/css">
    <%--<asp:GridView ID="gvBook" runat="server" AutoGenerateColumns="False" BorderStyle="Dotted" CellPadding="5">
        <Columns>
            <asp:TemplateField>
                
                <ItemTemplate>
                    <asp:Image ID="imgBook" runat="server" Width="200px"
                        ImageUrl='<%# "~/image/"+Eval("ISBN")+".jpg" %>' AlternateText='<%#Eval("ISBN") %>'></asp:Image>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Title" HeaderText="Title" />
            <asp:BoundField DataField="Author" HeaderText="Author" />
            <asp:BoundField DataField="Price" HeaderText="Price (SGD)" />
            <asp:TemplateField>
                
                <ItemTemplate>
                    <asp:Button ID="btnAddtoCart" runat="server" Text="Add to cart"></asp:Button>
                </ItemTemplate>
            </asp:TemplateField>
            
        </Columns>
    </asp:GridView>--%>
    
    <div>
    <asp:Repeater ID="repBookList" runat="server">
        <HeaderTemplate></HeaderTemplate>
        <ItemTemplate>
            <div style="display: inline-block">
            <asp:Image runat="server" Width="200px" CssClass="img-responsive"
                       ImageUrl='<%# "~/image/"+Eval("ISBN")+".jpg" %>' AlternateText='<%#Eval("ISBN") %>'></asp:Image>
            <br/>
            <table>
                <tr><td class="Title"><asp:Label CssClass="label" ID = "lbTitle" runat="server" text ='<%#Eval("Title") %>'></asp:Label></td></tr>
                <tr><td class="Author"><asp:Label CssClass="label" ID = "lbAuthor" runat="server" text ='<%#Eval("Author") %>'></asp:Label></td></tr>
                <tr><td class ="Price"><asp:Label CssClass="label" ID = "lbPrice" runat="server" text ='<%#Eval("Price") %>' ></asp:Label></td></tr>
                <tr><td class="AddToCart"><asp:Button CssClass="btn" runat="server" ID="btnAddtoCart" Text="Add to cart"/></td></tr>
            </table>
            </div>
            
        </ItemTemplate>
        <FooterTemplate></FooterTemplate>
    </asp:Repeater>
    </div>

    </asp:Content>

