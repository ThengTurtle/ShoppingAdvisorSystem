<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="submit.aspx.vb" Inherits="Prac2_additionalquestion1.submit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>Buyer`s Name</td>
                <td>
                    Name: <asp:Label ID="lblName" runat="server"></asp:Label></asp:Label>
                    HidName : <asp:Label ID="lblHidName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Security Key :</td>
                <td>
                    Password: <asp:Label ID="lblPassword" runat="server"></asp:Label>
                    Hidden Key : <asp:Label ID="lblHidKey" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Street Address</td>
                <td>
                    <asp:Label ID="lblStreet" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>City, State, Zip:</td>
                <td>
                    <asp:Label ID ="lblCity" runat="server" ></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Country</td>
                <td>
                    <asp:Label ID ="lblCountry" runat ="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <asp:Label ID ="lblEmail" runat ="server" ></asp:Label>
                </td>
            </tr>
        </table>

        <table border="1">
            <tr>
                <th>Product Name</th>
                <th>Price</th>
                <th>Quantity</th>
            </tr>
            <tr>
                <td>Unppoped PopCorn</td>
                <td>$3.00</td>
                <asp:Label ID=" lblunpop" runat="server" Text="Label"></asp:Label>
            </tr>
            <tr>
                <td>Caramel Popcorn (2 lb. canister)</td>
                <td>$3.50</td>
                <asp:Label ID="lblCaramel" runat="server" Text="Label"></asp:Label>
            </tr>
            <tr>
                <td>Caramel Nut Popcorn (2 lb. canister)</td>
                <td>$4.50</td>
                <asp:Label ID="lblNutPopcorn" runat="server" Text="Label"></asp:Label>
            </tr>
            <tr>
                <td>Toffey Nut Popcorn (2 lb. canister)</td>
                <td>$5.00</td>
                <asp:Label ID="lblToffeyNutPopcorn" runat="server" Text="Label"></asp:Label>
            </tr>
            <td colspan="3">Total Price: <asp:Label ID="lblTotalPrice" runat="server"></asp:Label></td>
        </table>
        <table>
            <h1>Payment Method</h1>
        </table>
    </div>
    </form>
</body>
</html>
