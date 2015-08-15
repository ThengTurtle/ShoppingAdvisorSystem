<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Prac4q4.aspx.vb" Inherits="practical_4.Prac4q4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Id: <asp:TextBox ID ="tbxID" runat ="server"></asp:TextBox><br />
        <asp:LinkButton ID ="lblDelete" runat ="server" >Delete Record</asp:LinkButton>
        &nbsp&nbsp&nbsp
        <asp:LinkButton ID ="lblCancel" runat ="server" >Cancel</asp:LinkButton>
        <br />
        <br />
        <asp:Label ID ="lblMessage" runat ="server" ></asp:Label>
    </div>
    </form>
</body>
</html>
