<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SqlDataSourceInsert.aspx.vb" Inherits="SqlDataSourceInsert" %>

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
SelectCommand=
"SELECT EmployeeID, FirstName, LastName, Title, City FROM Employees"
InsertCommand="INSERT INTO Employees (FirstName,LastName,Title,City)
VALUES (@FirstName,@LastName,@Title,@City)">
</asp:SqlDataSource>

        <asp:DetailsView ID="DetailsView1" runat="server" DataKeyNames="EmployeeID"
DataSourceID="sourceEmployees" AutoGenerateInsertButton="true" DefaultMode="Insert">
</asp:DetailsView>
    </div>
    </form>
</body>
</html>
