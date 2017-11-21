<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddNewBook.aspx.cs" Inherits="SevenBooksApplication.AddNewBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <link href="StyleSheetSevenBook1.css" rel="stylesheet" type="text/css" />


    <table class="auto-style7" style="padding: 1px; margin: 1px">
       
        <tr>
            <td>
                Title
            </td>
            <td>
                <asp:TextBox ID="tbTitle" runat="server"></asp:TextBox> 
            </td>
        </tr>
        <tr>
            <td>
                Author
            </td>
            <td>
                <asp:TextBox ID="tbAuthor" runat="server"></asp:TextBox> 
            </td>
        </tr>
         <tr>
            <td>
                ISBN
            </td>
            <td >
                <asp:TextBox ID="tbISBN" runat="server"></asp:TextBox> 
            </td>
        </tr>
         <tr>
            <td>
                Catgory
            </td>
            <td>
                <asp:DropDownList ID="ddlCategory" runat="server">

                     
                <asp:ListItem Value="children">Children</asp:ListItem>
                <asp:ListItem Value="finance">Finance</asp:ListItem>
                        
                <asp:ListItem Value="non-fiction">Non-Fiction</asp:ListItem>
                <asp:ListItem Value="technical">
                    Technical
                </asp:ListItem>
                    
                </asp:DropDownList>
            </td>
        </tr>
         <tr>
            <td>
                image
                
            </td>
            <td class="auto-style6">
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:Label ID="StatusLabel" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
             
        </tr>

         <tr>
            <td>
                Price
            </td>
            <td>
                <asp:TextBox ID="tbPrice" runat="server"></asp:TextBox> 
            </td>
        </tr>
         <tr>
            <td>
                Quantity
            </td>
            <td>
                <asp:TextBox ID="tbQuantity" runat="server"></asp:TextBox> 
            </td>
        </tr>
    </table>

    <br />

    <asp:Button ID="btAdd"  CssClass="btn-primary" Font-Bold="True" runat="server" Text="Add" OnClick="Add_onClick" Width="122px" />
    <br />

    <br />
    <br />

    <asp:Label ID="Message" runat="server" Text="Label"></asp:Label>
    </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
       
       
    </style>
</asp:Content>
