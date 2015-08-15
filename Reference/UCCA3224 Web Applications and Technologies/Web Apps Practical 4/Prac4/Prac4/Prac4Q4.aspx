<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Prac4Q4.aspx.vb" Inherits="Prac4.Prac4Q4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Id: <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:LinkButton ID="lbDeleteRecord" runat="server">Delete Record</asp:LinkButton>
&nbsp;&nbsp;
        <asp:LinkButton ID="lbCancel" runat="server">Cancel</asp:LinkButton>
        <br />
        <br />
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
