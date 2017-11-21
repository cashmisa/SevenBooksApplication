<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UpdateBook.aspx.cs" Inherits="SevenBooksApplication.UpdateBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />

     <table>
         <tr>
            <td>
                BookID
            </td>
            <td>
                <asp:TextBox ID="tbBookId" runat="server"></asp:TextBox> 
            </td>
        </tr>

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
                <asp:DropDownList ID="ddlCategory" runat="server">
                    <asp:ListItem Text="Children" Value="Children" />
                            <asp:ListItem Text="Finance" Value="Finance" />
                    <asp:ListItem Text="NonFiction" Value="NonFiction" />
                            <asp:ListItem Text="Technical" Value="Technical" />

                </asp:DropDownList>
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
                <asp:TextBox ID="tbQuantity" runat="server"></asp:TextBox>
                </td>
        </tr>
    </table>
    <br />
    <br />

    <asp:Button ID="btUpdate" runat="server" Text="Update" OnClick="update" />
</asp:Content>
