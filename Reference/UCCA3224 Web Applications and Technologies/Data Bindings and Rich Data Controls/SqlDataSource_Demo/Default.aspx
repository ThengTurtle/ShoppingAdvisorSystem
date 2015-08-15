<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chapter 13: Product List</title>
    <style type="text/css">
        </style>
    <link href="Main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="page">
        <div id="header">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/banner.jpg" />
        </div>
        <div id="main">
            <p>
                Choose a category:&nbsp;
                <asp:DropDownList ID="ddlCategory" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="LongName" 
                    DataValueField="CategoryID" AutoPostBack="True">
                </asp:DropDownList>
            </p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:HalloweenConnectionString %>" 
                SelectCommand="SELECT [CategoryID], [LongName] FROM [Categories] 
                    ORDER BY [LongName]">
            </asp:SqlDataSource>
            <asp:DataList ID="dlProducts" runat="server" DataKeyField="ProductID" 
                DataSourceID="SqlDataSource2" CellPadding="3" GridLines="Vertical">
                <HeaderTemplate>
                    <table>
                        <tr>
                            <td class="col1">ID</td>
                            <td class="col2">Product</td>
                            <td class="col3">Unit Price</td>
                            <td class="col4">On Hand</td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <table>
                        <tr>
                            <td class="col1">
                                <asp:Label ID="lblID" runat="server" 
                                    Text='<%# Eval("ProductID") %>' />
                            </td>
                            <td class="col2">
                                <asp:Label ID="lblName" runat="server" 
                                    Text='<%# Eval("Name") %>' />
                            </td>
                            <td class="col3">
                                <asp:Label ID="lblUnitPrice" runat="server" 
                                    Text='<%# Eval("UnitPrice", "{0:C}") %>' />
                            </td>
                            <td class="col4">
                                <asp:Label ID="lblOnHand" runat="server" 
                                    Text='<%# Eval("OnHand") %>' />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <AlternatingItemStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:HalloweenConnectionString %>" 
                SelectCommand="SELECT [ProductID], [Name], [UnitPrice], [OnHand]
                    FROM [Products]
                    WHERE ([CategoryID] = @CategoryID) 
                    ORDER BY [ProductID]">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlCategory" Name="CategoryID" 
                     PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
    </form>
</body>
</html>
