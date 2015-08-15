<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <form id="form1" runat="server">
<div>

    <asp:ImageMap ID="imapBooks2009" runat="server"
        ImageUrl="~/Images/new_books_2009.jpg"
        HotSpotMode="PostBack" OnClick="imapBooks2009_Click">
        <asp:PolygonHotSpot Coordinates="3,14,66,4,70,33,61,79,19,89"
            PostBackValue="C++" />
        <asp:PolygonHotSpot Coordinates="74,14,70,33,61,89,122,100,136,26"
            PostBackValue="JavaScript" />
    </asp:ImageMap>

    <br />
    <br />
    Arrival date:
    <asp:DropDownList ID="ddlMonth" runat="server">
        <asp:ListItem Value="1">January</asp:ListItem>
        <asp:ListItem Value="2">February</asp:ListItem>
        <asp:ListItem Value="3">March</asp:ListItem>
        <asp:ListItem Value="4">April</asp:ListItem>
        <asp:ListItem Value="5">May</asp:ListItem>
        <asp:ListItem Value="6">June</asp:ListItem>
        <asp:ListItem Value="7">July</asp:ListItem>
        <asp:ListItem Value="8">August</asp:ListItem>
        <asp:ListItem Value="9">September</asp:ListItem>
        <asp:ListItem Value="10">October</asp:ListItem>
        <asp:ListItem Value="11">November</asp:ListItem>
        <asp:ListItem Value="12">Devember</asp:ListItem>
    </asp:DropDownList>
    <asp:DropDownList ID="ddlDay" runat="server">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>6</asp:ListItem>
        <asp:ListItem>7</asp:ListItem>
        <asp:ListItem>8</asp:ListItem>
        <asp:ListItem>9</asp:ListItem>
        <asp:ListItem>10</asp:ListItem>
        <asp:ListItem>11</asp:ListItem>
        <asp:ListItem>12</asp:ListItem>
        <asp:ListItem>13</asp:ListItem>
        <asp:ListItem>14</asp:ListItem>
        <asp:ListItem>15</asp:ListItem>
        <asp:ListItem>16</asp:ListItem>
        <asp:ListItem>17</asp:ListItem>
        <asp:ListItem>18</asp:ListItem>
        <asp:ListItem>19</asp:ListItem>
        <asp:ListItem>20</asp:ListItem>
        <asp:ListItem>21</asp:ListItem>
        <asp:ListItem>22</asp:ListItem>
        <asp:ListItem>23</asp:ListItem>
        <asp:ListItem>24</asp:ListItem>
        <asp:ListItem>25</asp:ListItem>
        <asp:ListItem>26</asp:ListItem>
        <asp:ListItem>27</asp:ListItem>
        <asp:ListItem>28</asp:ListItem>
        <asp:ListItem>29</asp:ListItem>
        <asp:ListItem>30</asp:ListItem>
        <asp:ListItem>31</asp:ListItem>
    </asp:DropDownList>
    <asp:ImageButton ID="ibtnCalendar" runat="server" ImageUrl="~/Images/calendar.jpg" />

    <asp:Calendar ID="clnArrival" runat="server"
        Visible="False"
        OnSelectionChanged="clnArrival_SelectionChanged"
        BorderColor="Black" BorderStyle="Solid">
        <TodayDayStyle BackColor="Blue" Font-Bold="True"
            ForeColor="White" />
        <TitleStyle BackColor="Blue" Font-Bold="True"
            ForeColor="White" />
        <NextPrevStyle ForeColor="White" />
    </asp:Calendar>


    <br />


    <br />
    <br />

    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>

        </div>
    </form>

</body>
</html>
