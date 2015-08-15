<%@ Page Language="VB" AutoEventWireup="false" CodeFile="GridViewSort.aspx.vb"
    Inherits="GridViewSort" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ObjectDataSource ID="sourceEmployees" runat="server" SelectMethod="GetEmployees"
            TypeName="DatabaseComponent.EmployeeDB"
            SortParameterName="sortExpression"></asp:ObjectDataSource>
        <asp:GridView ID="gridEmployees" runat="server" CellPadding="4"
            DataSourceID="sourceEmployees" Font-Names="Verdana" Font-Size="Small"
            ForeColor="#333333" GridLines="None" AllowSorting="True"
            DataKeyNames="EmployeeID" PageSize="2">
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <HeaderStyle BackColor="SaddleBrown" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
    </div>
    </form>
</body>
</html>
