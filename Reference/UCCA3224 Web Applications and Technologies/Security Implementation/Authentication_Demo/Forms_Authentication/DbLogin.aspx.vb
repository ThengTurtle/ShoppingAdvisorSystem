
Partial Class DbLogin
    Inherits System.Web.UI.Page

  

    Protected Sub LoginAction_Click(sender As Object, e As EventArgs) Handles LoginAction.Click
        Page.Validate()
        If Not Page.IsValid Then
            Return
        End If
        If PasswordText.Text = "secret" Then
            ' Create the ticket, add the cookie to the response
            ' and redirect to the originally requested page

            FormsAuthentication.RedirectFromLoginPage(UsernameText.Text, False)
        Else
            ' Username and password are not correct
            LegendStatus.Text = "Invalid username or password!"
        End If
    End Sub
End Class
