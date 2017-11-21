<%@ Page Title="Login/ Register" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SevenBooksApplication.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <table style="margin:auto" border="0">
            <tr>
                <td class="auto-style3">
                    <asp:Login ID="Login1" runat="server" Height="300px" OnLoggedIn="Login1_LoggedIn" BorderStyle="None" Width="407px">
                        <LoginButtonStyle BorderStyle="None" CssClass="btn-primary" Font-Bold="True" />
                    </asp:Login>
                </td>
                <td>
                    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" ContinueDestinationPageUrl="~/Default.aspx" OnContinueButtonClick="CreateUserWizard1_ContinueButtonClick" OnCreatedUser="CreateUserWizard1_CreatedUser" BorderStyle="None" Height="100px" Width="653px">
                        <CreateUserButtonStyle BorderStyle="None" CssClass="btn-primary" Font-Bold="True" />
                        <WizardSteps>
                            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                            </asp:CreateUserWizardStep>
                            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                            </asp:CompleteWizardStep>
                        </WizardSteps>
                    </asp:CreateUserWizard>
                </td>
            </tr>
        </table>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .auto-style3 {
            width: 485px;
        }
    </style>
</asp:Content>

