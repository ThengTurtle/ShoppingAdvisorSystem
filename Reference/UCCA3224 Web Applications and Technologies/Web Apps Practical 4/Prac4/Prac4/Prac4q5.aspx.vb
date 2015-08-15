Imports System.Web.Configuration
Imports System.Data.SqlClient

Public Class Prac4q5
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim Id = Request.QueryString("Id")

        Dim connectionString As String = WebConfigurationManager.ConnectionStrings("Prac4DB2ConnectionString").ConnectionString

        Dim myConnection As New SqlConnection(connectionString)

        Try

            myConnection.Open()
            Dim myCommand As New SqlCommand()
            myCommand.Connection = myConnection

            myCommand.CommandText = "GetGenreById"
            myCommand.CommandType = CommandType.StoredProcedure

            myCommand.Parameters.Add(New SqlParameter("Id", SqlDbType.Int))

            myCommand.Parameters("Id").Value = CInt(Id)

            Dim myReader As SqlDataReader


            myReader = myCommand.ExecuteReader()

            While (myReader.Read())
                lblId.Text = Id
                txtName.Text = myReader("Name")
                txtSortOrder.Text = myReader("SortOrder")
            End While


        Catch ex As Exception
            lblMessage.Text = ex.Message.ToString()
        Finally
            myConnection.Close()
        End Try
    End Sub

End Class