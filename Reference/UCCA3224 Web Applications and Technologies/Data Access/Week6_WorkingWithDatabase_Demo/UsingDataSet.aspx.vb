Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration

Partial Class UsingDataSet
    Inherits System.Web.UI.Page

    Private Sub FillAuthorList()
        Dim connectionString As String = _
        WebConfigurationManager.ConnectionStrings("Pubs").ConnectionString
        lstAuthor.Items.Clear()
        ' Define ADO.NET objects.
        Dim selectSQL As String
        selectSQL = "SELECT au_lname, au_fname, au_id FROM Authors"
        Dim con As New SqlConnection(connectionString)
        Dim cmd As New SqlCommand(selectSQL, con)
        Dim adapter As New SqlDataAdapter(cmd)
        Dim dsPubs As New DataSet()
        ' Try to open database and read information.
        Try
            con.Open()
            ' All the information in transferred with one command.
            ' This command creates a new DataTable (named Authors)
            ' inside the DataSet.
            adapter.Fill(dsPubs, "Authors")
        Catch err As Exception
            lblResults.Text = "Error reading list of names. "
            lblResults.Text &= err.Message
        Finally
            con.Close()
        End Try
        For Each row As DataRow In dsPubs.Tables("Authors").Rows
            Dim newItem As New ListItem()
            newItem.Text = row("au_lname") & ", " & _
            row("au_fname")
            newItem.Value = row("au_id").ToString()
            lstAuthor.Items.Add(newItem)
        Next
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        FillAuthorList()
    End Sub
End Class
