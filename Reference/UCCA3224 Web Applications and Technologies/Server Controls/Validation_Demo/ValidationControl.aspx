<%@ Page Language="VB"  AutoEventWireup="false" CodeFile="ValidationControl.aspx.vb" Inherits="ValidationControl" title="Untitled Page" %>

    <html>
        <head>
            <title></title>
        </head>
        <body>
            <form runat="server">
   <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />
    <br />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" />
    <br />
    <br />
    <asp:Panel ID="Panel1" runat="server" Width="429px">
    <h2>Please Enter Reservation Details</h2>
    <table border="1" id="table1">
        <tr>
            <td style="width: 100px">
                Name:</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                    ErrorMessage="Name is Required" Display="Dynamic">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Surname, Last Name" ValidationExpression="^[a-zA-Z]+,(\s+[a-zA-Z]+)+$" Width="139px"></asp:RegularExpressionValidator>
                </td>
                    
        </tr>
        <tr>
            <td style="width: 100px">
                Contact No:</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="999-999-9999" 
                    ValidationExpression="\d{2,4}-\d{3}-\d{4}|\d{2,4}-\d{4}-\d{4}" 
                    Display="Dynamic"></asp:RegularExpressionValidator>
                sun th</td>
        </tr>
        <tr>
            <td style="width: 100px; height: 42px;">
                Length of Stay:</td>
            <td style="width: 100px; height: 42px;">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
            <td style="width: 100px; height: 42px;">
                &nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox3"
                    ErrorMessage="Minimum 1 day, Maximum 10 days" MaximumValue="10" MinimumValue="1"
                    Type="Integer"></asp:RangeValidator></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Type of Room:</td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value ="-1">--Select A Room --</asp:ListItem>
                    <asp:ListItem Value ="Single">Single</asp:ListItem>
                    <asp:ListItem Value="Twin Sharing">Twin Sharing</asp:ListItem>
                    <asp:ListItem Value="Family">Family suite</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 100px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1"
                    ErrorMessage="Please Select a Value" InitialValue="-1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Guest Per Room</td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 100px">
            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="DropDownList2" ErrorMessage="1 - Single, 2 - Twin, 3 - Family suite" Width="200px"></asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:Button ID="Button1" runat="server" Text="Book Room" /></td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
    </asp:Panel>
    
    <asp:Panel ID="Panel2" runat="server" Width="423px">
    <h2>Please Enter Payment Details</h2>
    <table border="1">
        <tr>
            <td style="width: 100px">
                Card Type:</td>
            <td style="width: 100px">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem>Visa</asp:ListItem>
                    <asp:ListItem>Master</asp:ListItem>
                </asp:RadioButtonList></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 42px">
                Credit Card No</td>
            <td style="width: 100px; height: 42px">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
            <td style="width: 100px; height: 42px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4"
                    Display="Dynamic" ErrorMessage="Please enter a credit card" ValidationGroup="Payment"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Expiry:</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5"
                    ErrorMessage="Provide an expiry date" ValidationGroup="Payment"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:Button ID="Button2" runat="server" Text="Submit Payment" ValidationGroup="Payment" /></td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
    </asp:Panel>
    <br />
    <br />

            </form>
        </body>
    </html>

 


