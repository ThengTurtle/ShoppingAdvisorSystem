Imports System.Web.Configuration
Imports System.Data.SqlClient

Public Class Prac4q4
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub lblDelete_Click(sender As Object, e As EventArgs) Handles lblDelete.Click
        Dim connectionstring As String = WebConfigurationManager.ConnectionStrings("Prac4DBConnectionString").ConnectionString

        Dim myconnection As New SqlConnection(connectionstring)

        Try
            myconnection.Open()
            Dim mycommand As New SqlCommand()
            mycommand.Connection = myconnection
            mycommand.CommandText = "[DeleteGenre]"
            mycommand.CommandType = CommandType.StoredProcedure
            mycommand.Parameters.Add(New SqlParameter("Id", SqlDbType.Int))
            mycommand.Parameters("Id").Value = tbxID.Text

            Dim i = mycommand.ExecuteNonQuery()

            If i <> 0 Then
                lblMessage.Text = "Delete successful"
            Else
                lblMessage.Text = "Delete fail"

            End If
        Catch ex As Exception
            lblMessage.Text = ex.Message.ToString()
        Finally
            myconnection.Close()
        End Try
        
    End Sub

    Private Sub lblCancel_Click(sender As Object, e As EventArgs) Handles lblCancel.Click
        tbxID.Text = ""

    End Sub
End Class