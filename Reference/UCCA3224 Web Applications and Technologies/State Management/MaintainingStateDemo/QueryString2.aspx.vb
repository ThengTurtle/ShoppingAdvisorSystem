Public Partial Class QueryString2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        VisitorName.Text = Request.QueryString("Visitor")
        age.Text = Server.UrlDecode(Request.QueryString("Age"))
    End Sub

End Class