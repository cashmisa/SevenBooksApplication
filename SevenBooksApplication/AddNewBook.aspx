<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddNewBook.aspx.cs" Inherits="SevenBooksApplication.Admin" %>
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
                Qutantity
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

    <br />
    <br />

    <asp:Button ID="btAdd" runat="server" Text="Add" OnClick="Add_onClick" Width="122px" />
    </asp:Content>