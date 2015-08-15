
Partial Class Site
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim daysUntil As Integer = DaysUntilHalloween()
        If daysUntil = 0 Then
            lblMessage.Text = "Happy Halloween!"
        ElseIf daysUntil = 1 Then
            lblMessage.Text = "Tomorrow is Halloween!"
        Else
            lblMessage.Text = "There are only " & daysUntil & _
                " days left until Halloween!"
        End If
    End Sub

    Private Function DaysUntilHalloween() As Integer
        Dim halloweenDate As Date = New DateTime(DateTime.Today.Year, 10, 31)
        If DateTime.Today > halloweenDate Then
            halloweenDate = halloweenDate.AddYears(1)
        End If
        Dim timeUntil As TimeSpan = halloweenDate - DateTime.Today
        Return timeUntil.Days
    End Function

End Class

