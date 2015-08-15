Public Class _Default
    Inherits System.Web.UI.Page

    Dim p As New Product("Fuji Apple", CDec(30.45), "Images/fuji_apple.jpg")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Image1.ImageUrl = "~/" & p.ImageUrl
        Label1.Text = p.GetHtml()
    End Sub

End Class