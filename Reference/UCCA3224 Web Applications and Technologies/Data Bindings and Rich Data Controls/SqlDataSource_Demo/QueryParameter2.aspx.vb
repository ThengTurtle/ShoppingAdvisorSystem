
Partial Class QueryParameter2
    Inherits System.Web.UI.Page

    Protected Sub sourceEmployees_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles sourceEmployees.Selecting
        If IsNothing(e.Command.Parameters("@City").Value) Then
            e.Command.CommandText = "SELECT * FROM EMPLOYEES"
        End If
    End Sub
End Class
