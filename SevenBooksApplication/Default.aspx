<%@ Page Title="Home Page" Language="C#"  MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SevenBooksApplication._Default" %>
<%@ Import Namespace="SevenBooksApplication" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="StyleSheetSevenBook1.css" rel="stylesheet" type="text/css" />
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
    
   <br/>
    <asp:Repeater ID="repBookList" runat="server"> 
        <HeaderTemplate></HeaderTemplate>
        <ItemTemplate>
            <div style="display: inline-block">
            <asp:ImageButton runat="server" Width="200px" CssClass="img-responsive" OnClick="Image_Click" ID="bookImage"
                       ImageUrl='<%# "~/image/"+Eval("ISBN")+".jpg" %>' AlternateText='<%#Eval("ISBN") %>'></asp:ImageButton>
            <br/>
            <table>
                <tr><td class="title"><asp:Label CssClass="lb-book-list" ID = "lbTitle" runat="server" text ='<%#Eval("Title") %>'></asp:Label></td></tr>
                <tr><td class="author"><asp:Label CssClass="lb-book-list" ID = "lbAuthor" runat="server" text ='<%#Eval("Author") %>'></asp:Label></td></tr>
                <tr><td class ="price"><asp:Label CssClass="lb-book-list" ID = "lbPrice" runat="server" text ='<%#Eval("Price") %>' ></asp:Label></td></tr>
                <tr><td></td></tr>
                <tr><td class="add-to-cart"><asp:Button CssClass="btn-primary"  runat="server" ID="btnAddtoCart" Text="Add to cart"/></td></tr>
           </table>
            </div>
            
        </ItemTemplate>
        <FooterTemplate></FooterTemplate>
   
    
    </asp:Repeater>
    </asp:Content>

