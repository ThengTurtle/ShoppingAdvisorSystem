<%@ Page Language="VB" AutoEventWireup="false" CodeFile="BindingGridViewToDataView.aspx.vb" Inherits="BindingGridViewToDataView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        gvEmployees1
        <asp:GridView ID="gvEmployees1" runat="server"></asp:GridView>
        <br />
        gvEmployees2
        <asp:GridView ID="gvEmployees2" runat="server"></asp:GridView>
    </div>
    </form>
</body>
</html>
