Imports System.Data.SqlClient
Imports System.Data
Imports System.Configuration

Partial Class BindingGridViewToDataView
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        ' Create the command and the connection. 
        Dim connectionString As String =
            "Data Source=.\SQLExpress;" &
                "AttachDBFilename=|DataDirectory|\Northwnd.mdf;Integrated Security=SSPI;User Instance=True"
        Dim sql As String =
            "SELECT EmployeeID, FirstName, LastName, Title, City FROM Employees"
        Dim con As New SqlConnection(connectionString)
        Dim cmd As New SqlCommand(sql, con)

        Dim da As New SqlDataAdapter(cmd)
        Dim ds As New DataSet
        Dim dv As New DataView

        da.Fill(ds)
        dv = ds.Tables(0).DefaultView
        gvEmployees1.DataSource = dv
        gvEmployees1.DataBind()

        gvEmployees2.DataSource = dv
        gvEmployees2.DataBind()

    End Sub
End Class
