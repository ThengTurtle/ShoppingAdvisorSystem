<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Order.aspx.vb" Inherits="Order" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chapter 18: Halloween Store</title>
    <link href="Styles/Main.css" rel="stylesheet" type="text/css" />
    <link href="Styles/Order.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="page">
        <div id="header">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/banner.jpg" />
        </div>
        <div id="main">
            <p id="products">
                <asp:Label ID="Label1" runat="server" Text="Please select a product:"></asp:Label>&nbsp;
                <asp:DropDownList ID="ddlProducts" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="Name" 
                    DataValueField="ProductID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:HalloweenConnectionString %>" 
                    SelectCommand="SELECT [ProductID], [Name], [ShortDescription], 
                        [LongDescription], [ImageFile], [UnitPrice] FROM [Products] ORDER BY [Name]">
                </asp:SqlDataSource>
            </p>
            <asp:Image ID="imgProduct" runat="server" Width="135px" />
            <div id="product">
                <p id="name"><asp:Label ID="lblName" runat="server"></asp:Label></p>
                <p id="shortdesc"><asp:Label ID="lblShortDescription" runat="server"></asp:Label></p>
                <p id="longdesc"><asp:Label ID="lblLongDescription" runat="server"></asp:Label></p>
                <p id="unitprice">
                    <asp:Label ID="lblUnitPrice" runat="server"></asp:Label>&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="each"></asp:Label>
                </p>
            </div>
            <div id="order">
                <p id="quantity">
                    <asp:Label ID="Label3" runat="server" Text="Quantity:"></asp:Label>&nbsp;
                    <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="validator"
                        runat="server" ControlToValidate="txtQuantity" Display="Dynamic" 
                        ErrorMessage="Quantity is a required field."></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" CssClass="validator" 
                        ControlToValidate="txtQuantity" Display="Dynamic" 
                        ErrorMessage="Quantity must range from 1 to 500."
                        MaximumValue="500" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                </p>
                <asp:Button ID="btnAdd" runat="server" Text="Add to Cart" />
                <asp:Button ID="btnCart" runat="server" Text="Go to Cart" 
                    PostBackUrl="~/Cart.aspx" CausesValidation="False" />
                <asp:Button ID="btnCheckOut" runat="server" Text="Check Out" 
                    CausesValidation="False" />
            </div>
        </div>
    </div>
    </form>
</body>
</html>
