<%@ Page Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="MultiView.aspx.vb"
    Inherits="MultiView" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <asp:RadioButtonList AutoPostBack="True" ID="rblView" OnSelectedIndexChanged="rblView_SelectedIndexChanged"
        RepeatDirection="Horizontal" runat="server">
        <asp:ListItem Value="-1">Nothing</asp:ListItem>
        <asp:ListItem Value="0">First</asp:ListItem>
        <asp:ListItem Value="1">Second</asp:ListItem>
        <asp:ListItem Value="2">Third</asp:ListItem>
        <asp:ListItem Value="3">Last</asp:ListItem>
    </asp:RadioButtonList>
    <asp:Button ID="Button1" runat="server" Text="Next View" />
    &nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true">
    </asp:DropDownList>
    <br />
    Current Index:
    <asp:Label ID="lblCurrentIndex" runat="server"></asp:Label>
    <br />
    <asp:MultiView ID="MultiView1" runat="server"  ActiveViewIndex="-1" OnActiveViewChanged="MultiView1_ActiveViewChanged">
        <asp:View ID="Cyprus" runat="server" OnActivate="ActivateView" OnDeactivate="DeactivateView">
            <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl="~/images/cyprus golf.jpg"
                Width="300px" />
            <asp:Button ID="cmdViewXNext1" runat="server" Text="Next >" CommandName="NextView" />
            <asp:Button ID="cmdViewXPrev4" runat="server" Text="< Prev" CommandName="PrevView" />
        </asp:View>
        <asp:View ID="Paphos" runat="server" OnActivate="ActivateView" OnDeactivate="DeactivateView">
            <asp:Image ID="Image2" runat="server" Height="300px" ImageUrl="~/images/paphos.jpg"
                Width="300px" />
            <asp:Button ID="cmdViewXNext2" runat="server" Text="Next >" CommandName="NextView" />
            <asp:Button ID="cmdViewXPrev3" runat="server" Text="< Prev" CommandName="PrevView" />
        </asp:View>
        <asp:View ID="Venus" runat="server" OnActivate="ActivateView" OnDeactivate="DeactivateView">
            <asp:Image ID="Image3" runat="server" ImageUrl="~/images/venus.jpg" />
            <asp:Button ID="cmdViewXNext3" runat="server" Text="Next >" CommandName="NextView" /><asp:Button
                ID="cmdViewXPrev2" runat="server" Text="< Prev" CommandName="PrevView" /></asp:View>
        <asp:View ID="Mallorca" runat="server" OnActivate="ActivateView" OnDeactivate="DeactivateView">
            <asp:Image ID="Image4" runat="server" Height="300px" ImageUrl="~/images/mallorca.jpg"
                Width="300px" />
            <asp:Button ID="cmdViewXPrev1" runat="server" Text="< Prev" CommandName="PrevView" />
        </asp:View>
    </asp:MultiView>
    <asp:Label ID="lblViewActivation" runat="server" />
    <asp:Label ID="lblViewDeActivation" runat="server" />
</asp:Content>
