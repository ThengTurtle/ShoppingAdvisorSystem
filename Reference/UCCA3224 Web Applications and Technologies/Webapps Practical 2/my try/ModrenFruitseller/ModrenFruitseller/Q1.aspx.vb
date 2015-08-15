Public Class Q1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Public Sub MyButtonClickEventHandler(ByVal sender As Object, e As System.EventArgs) Handles btnsubmit.Click
        lblMessage.Text = "Your Name is " & txtName.Text

    End Sub
End Class