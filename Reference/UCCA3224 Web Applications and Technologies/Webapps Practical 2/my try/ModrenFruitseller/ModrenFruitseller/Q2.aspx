<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Q2.aspx.vb" Inherits="ModrenFruitseller.Q2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:CheckBox ID="chkPanel" Text="Show Panel"  runat="server" Checked="false" AutoPostBack="true"/>
    <asp:Panel ID="pn1Content" runat="server" Visible="false">
        I am Visible now
    </asp:Panel>
    <asp:Wizard ID="Wizard1" runat="server">
        <WizardSteps>
            <asp:WizardStep ID="WizardStep1" runat="server" Title="About you">
                <asp:Label ID ="label3" runat="server" Text="Type your name"></asp:Label>
                <asp:TextBox ID="YourName" runat="server">
                </asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="Name is required" ControlToValidate ="YourName" Text="*" >

                </asp:RequiredFieldValidator>
            </asp:WizardStep>
            <asp:WizardStep ID="WizardStep2" runat="server" Title="Favourite language" StepType="Finish">
                <asp:DropDownList
            </asp:WizardStep>
            <asp:WizardStep runat="server" StepType="Complete" Title="Ready">
            </asp:WizardStep>
        </WizardSteps>
    </asp:Wizard>
</asp:Content>
