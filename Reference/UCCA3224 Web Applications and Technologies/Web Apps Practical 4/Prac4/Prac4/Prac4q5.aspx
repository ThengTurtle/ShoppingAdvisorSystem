<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Prac4q5.aspx.vb" Inherits="Prac4.Prac4q5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Id:
        <asp:Label ID="lblId" runat="server"></asp:Label>
        <br />
        Name:
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <br />
        Sort Order:
        <asp:TextBox ID="txtSortOrder" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:LinkButton ID="lbUpdate" runat="server">Update</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="lbCancel" runat="server">Cancel</asp:LinkButton>
        <br />
        <br />
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
