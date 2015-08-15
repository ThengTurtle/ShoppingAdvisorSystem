<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CodeBehind.aspx.vb" Inherits="BasicWebApp.CodeBehind" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />

        <asp:Image ID="Image1" runat="server" Width="100" Height="100" /><br />
        <asp:Button ID="Button1" runat="server" Text="Change price" />

        <br />
        <br />

        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

    
    </div>
    </form>
</body>
</html>
