<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Cart.aspx.vb" Inherits="Cart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chapter 18: Halloween Store</title>
    <link href="Styles/Main.css" rel="stylesheet" type="text/css" />
    <link href="Styles/Cart.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="page">
        <div id="header">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/banner.jpg" />
        </div>
        <div id="main">
            <p id="carthead">Your shopping cart:</p>
            <div id="cartbuttons">
                <asp:Button ID="btnRemove" runat="server" Text="Remove Item" /><br />
                <asp:Button ID="btnEmpty" runat="server" Text="Empty Cart" />
            </div>
            <asp:ListBox ID="lstCart" runat="server"></asp:ListBox>
            <p id="shopbuttons">
                <asp:Button ID="btnContinue" runat="server"
                    PostBackUrl="~/Order.aspx" Text="Continue Shopping" />
                <asp:Button ID="btnCheckOut" runat="server" Text="Check Out" />
            </p>
            <p id="message">
                <asp:Label ID="lblMessage" runat="server" EnableViewState="False"></asp:Label>
            </p>
        </div>
    </div>
    </form>
</body>
</html>
