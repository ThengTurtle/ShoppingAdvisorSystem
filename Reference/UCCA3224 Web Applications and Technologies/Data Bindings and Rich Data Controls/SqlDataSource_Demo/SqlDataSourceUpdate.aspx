<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SqlDataSourceUpdate.aspx.vb" Inherits="SqlDataSourceUpdate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
     <div>
        <asp:SqlDataSource ID="sourceEmployees" runat="server" ProviderName="System.Data.SqlClient" 
         ConnectionString="<%$ ConnectionStrings:Northwind %>" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}"
         SelectCommand="SELECT EmployeeID, FirstName, LastName, Title, City FROM Employees" 
         UpdateCommand="UPDATE Employees SET FirstName=@FName, LastName=@LastName, Title=@Title, City=@City FROM Employees WHERE EmployeeID=@original_EmployeeID AND
FirstName=@original_FirstName AND LastName=@original_LastName AND
Title=@original_Title AND City=@original_City">
            <UpdateParameters>
                <asp:Parameter Name="FName" DbType="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <br />
        
        <asp:GridView ID="GridView1" runat="server" DataSourceID="sourceEmployees" CellPadding="4"
         Font-Names="Verdana" Font-Size="Small" ForeColor="#333333" GridLines="None"
         DataKeyNames="EmployeeID" EnableSortingAndPagingCallbacks="False" PageSize="5"
         AutoGenerateEditButton="True" AutoGenerateColumns="False">           
            <Columns>
                  <asp:BoundField DataField="EmployeeID" HeaderText="EmployeID" ReadOnly="True"/>
                  <asp:TemplateField HeaderText="FirstName">
                      <EditItemTemplate>
                          <asp:TextBox ID="txtFirstName" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox><asp:Label id="lblHello" runat="server" Text="Hello World!"></asp:Label>
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label1" runat="server" Text='<%# Eval("FirstName")%>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
               <asp:BoundField DataField="LastName" HeaderText="LastName" />
                 <asp:BoundField DataField="Title" HeaderText="Title" />
                 <asp:BoundField DataField="City" HeaderText="City" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
         <br />
         <br />
         <asp:Label ID="lblMessage" runat="server"></asp:Label>
         <br />
         <br />
         <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>
    </form>
</body>
</html>
