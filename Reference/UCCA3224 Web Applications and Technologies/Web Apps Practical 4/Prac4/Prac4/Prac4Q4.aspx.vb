Imports System.Web.Configuration
Imports System.Data.SqlClient

Public Class Prac4Q4
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub lbDeleteRecord_Click(sender As Object, e As EventArgs) Handles lbDeleteRecord.Click
        Dim connectionString As String = WebConfigurationManager.ConnectionStrings("Prac4DB2ConnectionString").ConnectionString

        Dim myConnection As New SqlConnection(connectionString)

        Try

            myConnection.Open()
            Dim myCommand As New SqlCommand()
            myCommand.Connection = myConnection

            myCommand.CommandText = "DeleteGenreById"
            myCommand.CommandType = CommandType.StoredProcedure

            myCommand.Parameters.Add(New SqlParameter("Id", SqlDbType.Int))

            myCommand.Parameters("Id").Value = CInt(txtId.Text)

            Dim i = myCommand.ExecuteNonQuery()

            If i <> 0 Then
                lblMessage.Text = "Delete Successful"
            Else
                lblMessage.Text = "Delete Failed!"
            End If

        Catch ex As Exception
            lblMessage.Text = ex.Message.ToString()
        Finally
            myConnection.Close()
        End Try
    End Sub

    Private Sub lbCancel_Click(sender As Object, e As EventArgs) Handles lbCancel.Click
        txtId.Text = ""
    End Sub
End Class