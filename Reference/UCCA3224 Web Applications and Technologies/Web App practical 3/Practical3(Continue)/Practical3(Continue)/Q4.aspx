<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Q4.aspx.vb" Inherits="Practical3_Continue_.Q4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr><td colspan ="2" >User Profile</td></tr>
            <tr><td>Name</td><td><asp:TextBox ID ="txtName" runat ="server" ></asp:TextBox></td></tr>
            <tr><td>ID</td><td><asp:TextBox ID ="TextBox1" runat ="server" ></asp:TextBox></td></tr>
            <tr><td>E-mail</td><td><asp:TextBox ID ="TextBox2" runat ="server" ></asp:TextBox></td></tr>
            <tr><td>Contact(H/P)</td><td><asp:TextBox ID ="TextBox3" runat ="server" ></asp:TextBox></td></tr>
            <tr><td>Address</td><td><asp:TextBox ID ="TextBox4" runat ="server" ></asp:TextBox></td></tr>
            <tr><td>Sex</td><asp:RadioButtonList ID="rblSex" runat="server"></asp:RadioButtonList><td></td></tr>
            <tr><td>Favourite Food</td><td>
                <asp:CheckBoxList ID="cbxlFavouriteFood" runat="server"></asp:CheckBoxList></td></tr>
            <tr></tr>
        </table>
    </div>
    </form>
</body>
</html>
