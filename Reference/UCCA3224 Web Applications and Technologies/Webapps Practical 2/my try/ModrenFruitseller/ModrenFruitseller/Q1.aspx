<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Q1.aspx.vb" Inherits="ModrenFruitseller.Q1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    Your Name : <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    <asp:Button ID ="btnsubmit" runat ="server" Text="Submit" OnClick="MyButtonClickEventHandler"/>
    <br />
    <asp:Label ID ="lblMessage" runat="server" ></asp:Label>
</asp:Content>
