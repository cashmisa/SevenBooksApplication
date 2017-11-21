<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CartDetails.aspx.cs" Inherits="SevenBooksApplication.CartDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 1196px; height: 258px">
       <tr>
           <td style="width: 174px">
               <asp:Image ID="Image1" runat="server" Height="113px" Width="179px" style="margin-top: 45px" ImageUrl="~/Image/9780060555665.jpg" />
           </td>
           <td style="width: 911px">

               <table class="auto-style1" style="width: 97%">
                   <tr>
                       <td style="width: 270px; height: 23px">BookName
                           <asp:TextBox ID="TxtBox1" runat="server"></asp:TextBox>
                       </td>
                       <td style="height: 23px; width: 214px">UnitPrice<asp:TextBox ID="TxtBox2" runat="server"></asp:TextBox>
                       </td>
                       <td style="height: 23px; width: 356px">Qty<asp:DropDownList ID="DropDownList1" runat="server">
                           <asp:ListItem>1</asp:ListItem>
                           <asp:ListItem>2</asp:ListItem>
                           <asp:ListItem>3</asp:ListItem>
                           <asp:ListItem>4</asp:ListItem>
                           </asp:DropDownList>
                       </td>
                       <td style="height: 23px">SubTotal<asp:TextBox ID="TxtBox3" runat="server"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td style="width: 270px">
                           &nbsp;</td>
                       <td style="width: 214px">
                           &nbsp;</td>
                       <td style="width: 356px">&nbsp;</td>
                       <td>
                           &nbsp;</td>
                   </tr>
                   <tr>
                       <td style="width: 270px">
                           <asp:Button ID="Button2" runat="server" Text="CONTINUE SHOPPING " Width="149px" />
                       </td>
                       <td style="width: 214px">&nbsp;</td>
                         <td style="width: 356px">&nbsp;</td>
                       <td>
                           <asp:Button ID="Button3" runat="server" Text="UPDATE SHOPPING CART" Width="191px" OnClick="Button3_Click" />
                       </td>
                   </tr>
               </table>

               <asp:ScriptManager ID="ScriptManager1" runat="server">
               </asp:ScriptManager>
               <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                   <ContentTemplate>
                       <asp:Table ID="Table1" runat="server">
                           <asp:TableRow>
                               <asp:TableCell>
                              ORDER TOTAL
                           </asp:TableCell>
                          </asp:TableRow>
       
                            
                      
                       </asp:Table>
                       <table style="width:100%;">
                           <tr>
                               <td style="height: 23px; width: 255px"><span style="color: rgb(106, 106, 106); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 700; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Subtotal</span></td>
                               <td style="height: 23px; width: 276px"></td>
                               <td style="height: 23px">
                                   <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                               </td>
                           </tr>
                           <tr>
                               <td style="height: 23px; width: 255px;"><span style="color: rgb(106, 106, 106); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 700; letter-spacing: normal; orphans: 2; text-align: right; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Discount<span>&nbsp;</span></span></td>
                               <td style="height: 23px; width: 276px;"></td>
                               <td style="height: 23px">
                                   <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                               </td>
                           </tr>
                           <tr>
                               <td style="width: 255px"><strong style="margin: 0px; padding: 0px; font-weight: bold; color: rgb(242, 123, 4); font-family: helvetica, arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">Grand Total</strong></td>
                               <td style="width: 276px">&nbsp;</td>
                               <td>
                                   <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                               </td>
                           </tr>
                       </table>
                   </ContentTemplate>
                   <Triggers>
                       <asp:AsyncPostBackTrigger ControlID="Button3">
                       </asp:AsyncPostBackTrigger>
                   </Triggers>
               </asp:UpdatePanel>
               <asp:Button ID="Button4" runat="server" Text="PROCEED TO CHECKOUT" Width="300px" />
               <br />
</asp:Content>
