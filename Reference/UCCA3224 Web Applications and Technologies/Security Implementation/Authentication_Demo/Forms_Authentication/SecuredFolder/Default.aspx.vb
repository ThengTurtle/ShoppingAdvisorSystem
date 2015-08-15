
Partial Class SecuredFolder_Default
    Inherits System.Web.UI.Page

   
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        lblMessage.Text = "You have reached the secured page, "
        lblMessage.Text &= User.Identity.Name + "."
    End Sub

    Protected Sub cmdSignOut_Click(sender As Object, e As EventArgs) Handles cmdSignOut.Click
        FormsAuthentication.SignOut()
        Response.Redirect("~/DbLogin.aspx")
    End Sub
End Class
