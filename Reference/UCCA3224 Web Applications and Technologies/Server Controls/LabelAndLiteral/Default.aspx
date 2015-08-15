<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Literal:
        <asp:Literal ID="Literal1" runat="server" Mode="PassThrough" Text="&lt;b&gt;Hello World!&lt;/b&gt;"></asp:Literal>
        <br />
        <br />
        Label: <asp:Label ID="Label1" runat="server" Text="&lt;b&gt;Hello World&lt;/b&gt;"></asp:Label>
    </div>
    </form>
</body>
</html>
