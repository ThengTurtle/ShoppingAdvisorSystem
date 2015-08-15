<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SqlDataSourceSimple.aspx.vb" Inherits="SqlDataSourceSimple" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="sourceEmployees" runat="server" ProviderName="System.Data.SqlClient"
         ConnectionString="<%$ ConnectionStrings:Northwind %>"
         SelectCommand="SELECT EmployeeIDs, FirstName, LastName, Title, City FROM Employees"
         OnSelected="sourceEmployees_Selected">
        </asp:SqlDataSource>
        
        <asp:ListBox ID="ListBox1" runat="server" DataSourceID="sourceEmployees"
         DataTextField="EmployeeID" Width="145px"></asp:ListBox>
        <br /><br />
        
        <asp:GridView ID="GridView1" runat="server" DataSourceID="sourceEmployees" CellPadding="4"
         Font-Names="Verdana" Font-Size="Small" ForeColor="#333333" GridLines="None"
         AutoGenerateColumns="False" DataKeyNames="EmployeeID" EnableSortingAndPagingCallbacks="True" PageSize="5">           
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
            
            <Columns>
                <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" InsertVisible="False"
                    ReadOnly="True" SortExpression="EmployeeID" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:Label ID="lblError" runat="server" EnableViewState="False" Font-Bold="True"
            Font-Names="Verdana" Font-Size="Small" ForeColor="Red"></asp:Label>
    
    </div>
    </form>
</body>
</html>
