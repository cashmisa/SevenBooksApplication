<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="BookDetails.aspx.cs" Inherits="SevenBooksApplication.BookDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <table>
       <tr>
           <td>
               <asp:Image ID="Image1" runat="server" Height="500px" Width="500" />
           </td>
           <td>

           </td>
           <td>
               <asp:Label ID="lbTitle" runat="server" Text="Title" Font-Size="Medium"></asp:Label>
               <br />
               <br />

               <asp:Label ID="lbAuthor" runat="server" Text="Author"></asp:Label>
               <br />
               <br />
               <br />

               <asp:Label ID="lbPrice" runat="server" Text="Price"></asp:Label>
               <br />

               <br />

               <asp:Label ID="Label1" runat="server" Text="Available for Purchase"></asp:Label>
               <br />
               <br />

               <asp:Label ID="Label2" runat="server" Text="Qty"></asp:Label>
               <br />

               <asp:ListBox ID="lbQty" runat="server"></asp:ListBox>

              <br />
               <br />

               <asp:Button ID="Button1" runat="server" Text="Add to Cart" />
           </td>
       </tr>
   </table>
</asp:Content>
