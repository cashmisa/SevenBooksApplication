<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="BookDetails.aspx.cs" Inherits="SevenBooksApplication.BookDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table>
       <tr>
           <td>
               <asp:Image ID="Image1" runat="server" Height="300px" Width="300px" />
           </td>
           <td>

           </td>
           <td>
               <asp:Label ID="tbTitle" runat="server" Text="Title" Font-Size="Large" Font-Bold="True"></asp:Label>
               <br />
               <br />

               <asp:Label ID="tbAuthor" runat="server" Text="Author"></asp:Label>
               <br />
               <br />
               <br />

               <asp:Label ID="Label3" runat="server" Text="S$"></asp:Label>

               <asp:Label ID="tbPrice" runat="server" Text="Price"></asp:Label>
               <br />

               <br />

               <asp:Label ID="Label1" runat="server" Text="Available for Purchase"></asp:Label>
               <br />
               <br />

               <asp:Label ID="Label2" runat="server" Text="Qty"></asp:Label>
               <br />

               <asp:DropDownList ID="ddlQty" runat="server">
               </asp:DropDownList>

              <br />
               <br />

               <asp:Button ID="Button1" runat="server" Text="Add to Cart" OnClick="Button1_Click" />
           </td>
       </tr>
   </table>
</asp:Content>
