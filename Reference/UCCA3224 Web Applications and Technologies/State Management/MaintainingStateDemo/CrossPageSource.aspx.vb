
Partial Class CrossPageSource
    Inherits System.Web.UI.Page

    Public ReadOnly Property Name() As String
        Get
            Return nameValue.Text
        End Get
    End Property

    Protected Sub btnManualTransfer_Click(sender As Object, e As EventArgs) Handles btnManualTransfer.Click
        Server.Transfer("CrossPageTarget.aspx")
    End Sub
End Class
