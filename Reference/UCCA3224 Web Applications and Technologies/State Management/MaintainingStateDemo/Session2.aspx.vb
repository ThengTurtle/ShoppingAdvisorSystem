Public Partial Class Session2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Session("UserName") Is Nothing Then
            SessionResults.Text = "Welcome back, " & Session("UserName").ToString()
        End If

    End Sub

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSubmit.Click
        Results.Text = String.Format("Welcome to the web, {0}!", Name.Text)
        Age.BackColor = System.Drawing.Color.Pink
    End Sub
End Class