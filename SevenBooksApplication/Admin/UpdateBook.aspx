<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UpdateBook.aspx.cs" Inherits="SevenBooksApplication.UpdateBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../StyleSheetSevenBook1.css" rel="stylesheet" />

    <br />
    <br />

     <table class="auto-style3">
         <tr>
            <td class="auto-style5">
                BookID
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="tbBookId" runat="server" Width="238px"></asp:TextBox> 
            </td>
        </tr>

        <tr>
            <td class="auto-style5">
                Title
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="tbTitle" runat="server"></asp:TextBox> 
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                Author
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="tbAuthor" runat="server"></asp:TextBox> 
            </td>
        </tr>
         <tr>
            <td class="auto-style5">
                ISBN
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="tbISBN" runat="server"></asp:TextBox> 
            </td>
        </tr>
         <tr>
            <td class="auto-style5">
                Catgory
            </td>
            <td class="auto-style4">
                <asp:DropDownList ID="ddlCategory" runat="server">
                    <asp:ListItem Text="Children" Value="children" />
                    <asp:ListItem Text="Finance" Value="finance" />
                    <asp:ListItem Text="non-fiction" Value="non-fiction" />
                    <asp:ListItem Text="Technical" Value="technical" />

                </asp:DropDownList>
            </td>
        </tr>
         <tr>
            <td class="auto-style5">
                image
            </td>
            <td class="auto-style4">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
             
        </tr>

         <tr>
            <td class="auto-style5">
                Price
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="tbPrice" runat="server"></asp:TextBox> 
            </td>
        </tr>
         <tr>
            <td class="auto-style5">
                Qutantity
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="tbQuantity" runat="server"></asp:TextBox>
                </td>
        </tr>
    </table>
    <br />
    
    <br />

    <asp:Button ID="btUpdate" CssClass="btn-primary" runat="server" Text="Update" OnClick="update" />
     <br />
    <asp:Label ID="Message" runat="server" Text="Label"></asp:Label>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .auto-style3 {
            width: 54%;
            height: 416px;
            margin-left: 260px;
            margin-top: 38px;
        }
        .auto-style4 {
            width: 980px;
        }
        .auto-style5 {
            width: 194px;
        }
        
    </style>
</asp:Content>

