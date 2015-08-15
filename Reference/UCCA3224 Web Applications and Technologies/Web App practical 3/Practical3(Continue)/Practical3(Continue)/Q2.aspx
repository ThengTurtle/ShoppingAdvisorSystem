<%@ Page Language="vb" EnableViewState="false" AutoEventWireup="false" CodeBehind="Q2.aspx.vb" Inherits="Practical3_Continue_.Q2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        First Name : <asp:textBox ID="txtFName" runat="server" Width="114px"></asp:textBox>
        <br />
        Last Name  : <asp:TextBox ID="txtLName" runat="server" Width="112px"></asp:TextBox>

        <br />
        <asp:Button ID="btnSave" runat="server" Text="Save Contents" />

        <asp:Button ID="btnLoad" runat="server" Text="Load Contents" />
        <br />
        <asp:Label ID="lblResult" runat="server" ></asp:Label>
    </div>
    </form>
</body>
</html>
