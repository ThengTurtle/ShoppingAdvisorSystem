Imports System.Web.Configuration
Imports System.Data.SqlClient

Public Class Prac4q3
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub lbInsert_Click(sender As Object, e As EventArgs) Handles lbInsert.Click

        Dim connectionString As String = WebConfigurationManager.ConnectionStrings("Prac4DB2ConnectionString").ConnectionString

        Dim myConnection As New SqlConnection(connectionString)

        Try

            myConnection.Open()
            Dim myCommand As New SqlCommand()
            myCommand.Connection = myConnection

            myCommand.CommandText = "InsertGenre"
            myCommand.CommandType = CommandType.StoredProcedure

            myCommand.Parameters.Add(New SqlParameter("Name", SqlDbType.NVarChar))
            myCommand.Parameters.Add(New SqlParameter("SortOrder", SqlDbType.Int))

            myCommand.Parameters("Name").Value = txtName.Text
            myCommand.Parameters("SortOrder").Value = CInt(txtSortOrder.Text)

            Dim i = myCommand.ExecuteNonQuery()

            If i <> 0 Then
                lblMessage.Text = "Insert Successful"
            Else
                lblMessage.Text = "Insert Failed!"
            End If

        Catch ex As Exception
            lblMessage.Text = ex.Message.ToString()
        Finally
            myConnection.Close()
        End Try
    End Sub

    Private Sub lbCancel_Click(sender As Object, e As EventArgs) Handles lbCancel.Click
        txtName.Text = ""
        txtSortOrder.Text = ""
    End Sub
End Class