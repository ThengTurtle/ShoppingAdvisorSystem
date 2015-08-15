Public Class Q2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub


   
    Protected Sub ShowPanel(sender As Object, e As EventArgs) Handles chkPanel.CheckedChanged
        pn1Content.Visible = chkPanel.Checked
    End Sub

    Private Sub Wizard1_FinishButtonClick(sender As Object, e As WizardNavigationEventArgs) Handles Wizard1.FinishButtonClick
        Result.Text = "Your name is " & YourName.Text
        Result.Text &= "<br />Your favorite"
    End Sub
End Class