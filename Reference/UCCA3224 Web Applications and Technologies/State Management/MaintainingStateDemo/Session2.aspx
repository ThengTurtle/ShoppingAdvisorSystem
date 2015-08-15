<%@ Page Language="vb" AutoEventWireup="false" CodeFile="Session2.aspx.vb" Inherits="Session2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        What is your name:
        <asp:TextBox ID="Name" runat="server"></asp:TextBox>
        <br />
        What is your age:
        <asp:TextBox ID="Age" runat="server" Columns="4"></asp:TextBox>
        <br />
        What is your favorite programming language?
        <asp:DropDownList ID="FavLanguage" runat="server">
            <asp:ListItem>VB</asp:ListItem>
            <asp:ListItem>C#</asp:ListItem>
            <asp:ListItem>FORTRAN</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Click Me!" 
                onclick="btnSubmit_Click" />
      
        <br />
        <br />
        <asp:Label ID="Results" runat="server"></asp:Label>
    
            <br />
            <br />
            <asp:Label ID="SessionResults" runat="server"></asp:Label>
    
        <br />
        <br />
    </div>
    </form>
</body>
</html>
