<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/FrontEnd.Master" CodeBehind="WebForm1.aspx.vb" Inherits="WebAppsPractical6.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
     <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate ="TextBox1"></asp:RequiredFieldValidator>
</asp:Content>
