<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CrossPageSource.aspx.vb" Inherits="CrossPageSource" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style>
        div {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>Enter your name:
           <asp:TextBox ID="nameValue" runat="server"></asp:TextBox></div>
        <asp:Button ID="Button1" Text="Cross-Page Postback" PostBackUrl="CrossPageTarget.aspx" runat="server" />
    &nbsp;<asp:Button ID="btnManualTransfer" runat="server" Text="Using Server.Transfer" />
    </form>
</body>
</html>
