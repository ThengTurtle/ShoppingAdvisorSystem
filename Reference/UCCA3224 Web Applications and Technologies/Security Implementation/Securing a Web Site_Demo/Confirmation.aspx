<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Confirmation.aspx.vb" Inherits="Confirmation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Chapter 18: Halloween Store</title>
    <link href="Styles/Main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="page">
        <div id="header">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/banner.jpg" />
        </div>
        <div id="main">
            <p>
                <asp:Label ID="lblConfirm" runat="server"></asp:Label><br />
            </p>
            <p>
                <asp:Button ID="btnReturn" runat="server" Text="Return to Order Page" />
            </p>
        </div>
    </div>
    </form>
</body>
</html>
