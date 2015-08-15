
Partial Class SqlDataSourceUpdate
    Inherits System.Web.UI.Page

    Protected Sub sourceEmployees_Updated(sender As Object, e As SqlDataSourceStatusEventArgs) Handles sourceEmployees.Updated
        If e.AffectedRows = 0 Then
            lblMessage.Text = "No update was performed. " & _
"A concurrency error is likely, or the command is incorrectly written."
        Else
            lblMessage.Text = "Record successfully updated."
        End If
    End Sub

    Protected Sub sourceEmployees_Updating(sender As Object, e As SqlDataSourceCommandEventArgs) Handles sourceEmployees.Updating
        e.Command.Parameters("@FName").Value = CType(GridView1.Rows(GridView1.EditIndex).FindControl("txtFirstName"), TextBox).Text
    End Sub


End Class
