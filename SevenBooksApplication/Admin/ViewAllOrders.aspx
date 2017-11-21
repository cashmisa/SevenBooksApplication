<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewAllOrders.aspx.cs" Inherits="SevenBooksApplication.ViewAllOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
             DataKeyNames="OrderID"
            OnRowCancelingEdit="OnRowCancelingEdit"
            OnRowEditing="OnRowEditing" OnRowUpdating="OnRowUpdating" >
            <Columns>
                <asp:TemplateField HeaderText="OrderID">
                    
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("OrderID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="UserID">
                   
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("UserID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="BookID">
                    <EditItemTemplate>
                        


                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("BookID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Date">
                    
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("DatePurchase") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                  <asp:TemplateField HeaderText="Price">
                    
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                  <asp:TemplateField HeaderText="Discount">
                    
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("Discount") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Status">
                 <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("OrderStatus") %>'></asp:Label>
                    </ItemTemplate>
                      <EditItemTemplate>
                          <asp:DropDownList ID="ddlStatus" runat="server">
                             <asp:ListItem Text="Processed" Value="confirm" />
                            <asp:ListItem Text="Completed" Value="Cancel" />
                            <asp:ListItem Text="Canceled" Value="Deliver" />
                          </asp:DropDownList>
                        
                            
                       
                    </EditItemTemplate>
                     </asp:TemplateField>
                <asp:TemplateField HeaderText="Quantity">
                    
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>


              
               

             
                     
                <asp:CommandField ShowEditButton="True" />
              
            </Columns>
        </asp:GridView>
</asp:Content>
