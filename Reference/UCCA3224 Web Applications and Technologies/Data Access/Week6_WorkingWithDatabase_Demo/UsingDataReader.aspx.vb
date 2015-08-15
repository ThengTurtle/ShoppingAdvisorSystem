Imports System.Data.SqlClient
Imports System.Web.Configuration

Partial Class UsingDataReader
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        ' Define the ADO.NET Connection object.
        Dim connectionString As String = _
        WebConfigurationManager.ConnectionStrings("Pubs").ConnectionString
        Dim myConnection As New SqlConnection(connectionString)
        Dim myCommand As New SqlCommand()
        Dim myReader As SqlDataReader

        Dim a As Dictionary(Of Integer, String)

        a.Add(123, "sun TH")

        Try

            myConnection.Open()

            myCommand.Connection = myConnection
            myCommand.CommandText = "SELECT * FROM Authors ORDER BY au_lname"

            ' You don't need the new keyword, as the Command will create the DataReader.

            myReader = myCommand.ExecuteReader()

            While myReader.Read() ' The first row in the result set is now available.
                lstNames.Items.Add(myReader("au_lname") & ", " & myReader("au_fname") & ", City: " & myReader("City"))
            End While
            myReader.Close()
            lblInfo.Text &= a(123)
        Catch Err As SqlException
            ' Handle an error by displaying the information.
            lblInfo.Text = "Error reading the database."
            lblInfo.Text &= Err.Number
            lblInfo.Text &= Err.Message
        Catch gErr As Exception
            lblInfo.Text &= gErr.Message
        Finally

            myConnection.Close()


        End Try

    End Sub

 
End Class
