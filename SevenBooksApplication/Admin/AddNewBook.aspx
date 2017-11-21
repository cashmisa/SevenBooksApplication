<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddNewBook.aspx.cs" Inherits="SevenBooksApplication.AddNewBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table>
        <tr>
            <td>
                Title
            </td>
            <td>
                <asp:TextBox ID="tbTitle" runat="server"></asp:TextBox> 
            </td>
        </tr>
        <tr>
            <td style="height: 53px">
                Author
            </td>
            <td style="height: 53px">
                <asp:TextBox ID="tbAuthor" runat="server"></asp:TextBox> 
            </td>
        </tr>
         <tr>
            <td>
                ISBN
            </td>
            <td>
                <asp:TextBox ID="tbISBN" runat="server"></asp:TextBox> 
            </td>
        </tr>
         <tr>
            <td>
                Catgory
            </td>
            <td>
                <asp:DropDownList ID="ddlCategory" runat="server"></asp:DropDownList>
            </td>
        </tr>
         <tr>
            <td>
                image
                
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:Label ID="StatusLabel" runat="server" Text="Label"></asp:Label>
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
    <br />

    <asp:Button ID="btAdd" runat="server" Text="Add" OnClick="Add_onClick" Width="122px" />
    </asp:Content>