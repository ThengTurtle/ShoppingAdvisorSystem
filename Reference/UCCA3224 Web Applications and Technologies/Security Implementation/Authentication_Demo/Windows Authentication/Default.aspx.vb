
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        userLabel.Text = User.Identity.Name

        userTypeLabel.Text = User.Identity.AuthenticationType

        userAuthenticatedLabel.Text = User.Identity.IsAuthenticated

    End Sub
End Class
