Public Class Q3receipient
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblinfo.Text = "Item : " & Request.QueryString("Item")
        lblinfo.Text &= "<br/> Show Full record: "
        lblinfo.Text &= Request.QueryString("Mode")
    End Sub

End Class