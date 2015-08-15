Imports System.Data.SqlClient
Imports System.Web.Configuration

Partial Class TestingConnection
    Inherits System.Web.UI.Page

    Protected Sub btnConnect_Click(sender As Object, e As EventArgs) Handles btnConnect.Click
        'Dim myConnection As New SqlConnection()
        'myConnection.ConnectionString = "Data Source = (localdb)\v11.0;" & "Initial Catalog = Pubs;Integrated Security = SSPI"

        ' Define the ADO.NET Connection object.
        Dim connectionString As String = WebConfigurationManager.ConnectionStrings("Pubs").ConnectionString
        Dim myConnection As New SqlConnection(connectionString)


        Try
            ' Try to open the connection.
            myConnection.Open()
            lblInfo.Text = " <b> Server Version:</b> " & myConnection.ServerVersion
            lblInfo.Text &= " <br /> <b> Connection Is:</b> " & _
            myConnection.State.ToString()
        Catch err As Exception
            ' Handle an error by displaying the information.
            lblInfo.Text = "Error reading the database."
            lblInfo.Text &= err.Message
        Finally
            ' Either way, make sure the connection is properly closed.
            ' (Even if the connection wasn't opened successfully,
            ' calling Close() won't cause an error.)
            myConnection.Close()
            lblInfo.Text &= " <br /> <b> Now Connection Is:</b> "
            lblInfo.Text &= myConnection.State.ToString()
        End Try

    End Sub
End Class
