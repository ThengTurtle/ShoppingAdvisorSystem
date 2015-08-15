<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="SecuredFolder_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>

        <br />
        <br />

        <asp:Button ID="cmdSignOut" runat="server" Text="Sign Out" />
    </div>
    </form>
</body>
</html>
