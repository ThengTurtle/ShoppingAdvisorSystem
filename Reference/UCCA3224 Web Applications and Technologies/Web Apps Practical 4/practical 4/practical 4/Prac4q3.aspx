﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Prac4q3.aspx.vb" Inherits="practical_4.Prac4q3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Name: <asp:TextBox ID="txtName" runat ="server"></asp:TextBox>
        <br />
        Sort Order :<asp:TextBox ID ="txtSortOrder" runat ="server" ></asp:TextBox>
        <br />
        <asp:LinkButton ID ="lblInsert" runat ="server" >Inset</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID ="lblCancel" runat ="server" >Cancel</asp:LinkButton>
        <br />
        <br />
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
