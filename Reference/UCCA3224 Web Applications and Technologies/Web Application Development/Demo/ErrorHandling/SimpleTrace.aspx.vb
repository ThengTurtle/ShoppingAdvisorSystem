
Partial Class SimpleTrace
    Inherits System.Web.UI.Page

    Protected Sub cmdTrace_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdTrace.Click
        If Trace.IsEnabled = True Then
            Trace.Warn("cmdTree.Click", "Handling the click event")
        End If
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Trace.Warn("Page Load", "Page Loading")
    End Sub
End Class
