<%@ Page Language="vb" AutoEventWireup="false" CodeFile="Session1.aspx.vb" Inherits="Session1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <p>
        Enter your name:
        <asp:TextBox ID="Name" runat="server"></asp:TextBox>
    </p>
    <div>
    
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Save Name To Session" />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Session2.aspx">Go to Default.aspx</asp:HyperLink>
    </div>
    </form>
</body>
</html>
