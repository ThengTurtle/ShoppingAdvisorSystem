Imports System.Data.SqlClient

Public Class prac4q5
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim id = Request.QueryString("Id")


        Dim myReader As SqlDataReader

        While (myReader.Read())
            lblId.Text = id
            txtName.text = myReader("Name")
            txtSortOrder.text = myReader("SortOrder")

        End While
    End Sub

End Class