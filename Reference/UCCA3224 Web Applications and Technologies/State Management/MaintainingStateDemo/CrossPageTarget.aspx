<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CrossPageTarget.aspx.vb" Inherits="CrossPageTarget" %>
<%@ PreviousPageType VirtualPath="CrossPageSource.aspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style>
        div {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Your name is: <asp:Label ID="lbl" runat="server" Text="Label"></asp:Label>
        </div>
        <asp:Button ID="Button1" Text="Back" PostBackUrl="CrossPageSource.aspx" runat="server" />
    </form>
</body>
</html>
