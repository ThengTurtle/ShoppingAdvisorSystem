<%@ Page Language="VB" validateRequest="false" AutoEventWireup="false" CodeFile="QueryString1.aspx.vb" Inherits="QS" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Please enter your name:
    <asp:TextBox ID="Name" runat="server"></asp:TextBox>
        <br />
        <br />
        Please enter your age:
        <asp:TextBox ID="Age" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
    </div>
    </form>
</body>
</html>
