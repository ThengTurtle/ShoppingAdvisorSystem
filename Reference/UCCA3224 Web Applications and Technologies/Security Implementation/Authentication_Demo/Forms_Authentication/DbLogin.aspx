<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DbLogin.aspx.vb" Inherits="DbLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Username
        <asp:TextBox ID="UsernameText" runat="server"></asp:TextBox>
        <br />
        Password
        <asp:TextBox ID="PasswordText" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="LoginAction" runat="server" Text="Login" />
        <br />
        <br />
        <asp:Label ID="LegendStatus" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Label id="Label3"  runat="server" Width="256px" Font-Bold="True">Password must be "secret"</asp:Label>
    </div>
    </form>
</body>
</html>
