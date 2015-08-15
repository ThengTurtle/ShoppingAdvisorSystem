Imports System.Web.Configuration
Imports System.Data.SqlClient

Public Class Prac4q3
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub lblInsert_Click(sender As Object, e As EventArgs) Handles lblInsert.Click
        Dim connectionstring As String = WebConfigurationManager.ConnectionStrings("Prac4DBConnectionString").ConnectionString

        Dim myconnection As New SqlConnection(connectionstring)

        Try
            myconnection.Open()
            Dim mycommand As New SqlCommand()
            mycommand.Connection = myconnection
            mycommand.CommandText = "InsertGenre"
            mycommand.CommandType = CommandType.StoredProcedure

            mycommand.Parameters.Add(New SqlParameter("Name", SqlDbType.NVarChar))
            mycommand.Parameters.Add(New SqlParameter("SortOrder", SqlDbType.Int))
            mycommand.Parameters("Name").Value = txtName.Text
            mycommand.Parameters("SortOrder").Value = txtSortOrder.Text
            Dim i = mycommand.ExecuteNonQuery()

            If i <> 0 Then
                lblMessage.Text = "insert successful"
            Else
                lblMessage.Text = "insert fail"

            End If


        Catch ex As Exception
            lblMessage.Text = ex.Message.ToString()
        Finally
            myconnection.Close()

        End Try
    End Sub

    Private Sub lblCancel_Click(sender As Object, e As EventArgs) Handles lblCancel.Click
        txtName.Text = ""
        txtSortOrder.Text = ""

    End Sub
End Class