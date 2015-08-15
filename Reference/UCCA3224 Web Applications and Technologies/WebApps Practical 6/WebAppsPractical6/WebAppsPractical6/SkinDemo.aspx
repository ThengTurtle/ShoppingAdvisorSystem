<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SkinDemo.aspx.vb" Inherits="WebAppsPractical6.SkinDemo" Theme="ButtonSkin"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </div>
        <asp:DropDownList ID="DropDownList1" runat="server" Height="26px" Width="159px" AutoPostBack ="true" >
            <asp:ListItem>---Select your Theme-----</asp:ListItem>
            <asp:ListItem Value="Monochrome"></asp:ListItem>
            <asp:ListItem Value="Black"></asp:ListItem>
        </asp:DropDownList>
    </form>
</body>
</html>
