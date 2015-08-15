<%@ Page Language="VB" AutoEventWireup="false" CodeFile="QueryParameter2.aspx.vb" Inherits="QueryParameter2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:SqlDataSource ID="sourceEmployees" runat="server"
ProviderName="System.Data.SqlClient"
ConnectionString="<%$ ConnectionStrings:Northwind %>"
SelectCommand="GetEmployeesByCity" SelectCommandType="StoredProcedure">
<SelectParameters>
<asp:QueryStringParameter Name="City" QueryStringField="city" />
</SelectParameters>
</asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="sourceEmployees" AutoGenerateColumns="True">
</asp:GridView>
        <br />
        <br />
    </div>
    </form>
</body>
</html>
