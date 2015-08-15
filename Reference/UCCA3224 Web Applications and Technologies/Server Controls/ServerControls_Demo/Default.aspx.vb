
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub imapBooks2009_Click(sender As Object, e As ImageMapEventArgs)
        Dim book As String
        If (e.PostBackValue.Equals("C++")) Then
            book = "C++ 2008"
        Else
            book = "JavaScript and DOM Scripting"
        End If

        lblMessage.Text = book
    End Sub

    Protected Sub clnArrival_SelectionChanged(sender As Object, e As EventArgs)
        ddlMonth.SelectedValue =
            clnArrival.SelectedDate.Month.ToString()
        ddlDay.SelectedValue =
            clnArrival.SelectedDate.Day.ToString()
        clnArrival.Visible = False
        ibtnCalendar.Visible = True
    End Sub

    Protected Sub ibtnCalendar_Click(sender As Object, e As ImageClickEventArgs) Handles ibtnCalendar.Click
        ibtnCalendar.Visible = False
        clnArrival.Visible = True
    End Sub
End Class
