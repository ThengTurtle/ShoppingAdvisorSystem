Public Class Q2
    Inherits System.Web.UI.Page

    Dim myCustomer As New Customer()

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub


    Private Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        myCustomer.FirstName = txtFName.Text
        myCustomer.LastName = txtLName.Text

        txtFName.Text = ""
        txtLName.Text = ""

        ViewState("myCustomer") = myCustomer

    End Sub


    Private Sub btnLoad_Click(sender As Object, e As EventArgs) Handles btnLoad.Click
        myCustomer = CType(ViewState("myCustomer"), Customer)

        lblResult.Text = myCustomer.FirstName & " " & myCustomer.LastName
    End Sub
End Class