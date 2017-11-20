<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="SevenBooksApplication.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
             DataKeyNames="OrderID"
            OnRowCancelingEdit="OnRowCancelingEdit" OnRowDeleting="OnRowDeleting" 
            OnRowEditing="OnRowEditing" OnRowUpdating="OnRowUpdating" OnRowDataBound="OnRowDataBound">
            <Columns>
                <asp:TemplateField HeaderText="OrderID">
                    
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("OrderID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="CustomerName">
                   
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Username") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="BookID">
                    <EditItemTemplate>
                        


                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("BookID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="BookTitle">
                    
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("BookTitle") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Quantity">
                    
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Qty") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>


                <asp:TemplateField HeaderText="Price">
                    
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Total">
                    
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("Total") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Status">
                 <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                    </ItemTemplate>
              <EditItemTemplate>
                         <asp:RadioButtonList ID="radioSize" runat="server">
                            <asp:ListItem Text="Confirm" Value="S" />
                            <asp:ListItem Text="Cancel" Value="M" />
                            <asp:ListItem Text="Deliver" Value="L" />
                        </asp:RadioButtonList>

                    </EditItemTemplate>
                      </asp:TemplateField>
                <asp:CommandField ShowEditButton="True" />
              
            </Columns>
        </asp:GridView>
</asp:Content>