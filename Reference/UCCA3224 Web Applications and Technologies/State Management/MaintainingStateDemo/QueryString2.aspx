<%@ Page Language="vb" validateRequest="false" AutoEventWireup="false" CodeFile="QueryString2.aspx.vb" Inherits="QueryString2" EnableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Welcome back, 
            <asp:TextBox ID="VisitorName" runat="server"></asp:TextBox></h1>
            <p>You are 
                <asp:Label ID="age" runat="server"></asp:Label> &nbsp;years old.</p>
    </div>
    </form>
</body>
</html>
