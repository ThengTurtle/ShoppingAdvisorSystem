

Public Class CodeBehind
    Inherits System.Web.UI.Page


    Private WithEvents p As New BasicWebApp.sth.Product("Koala Bear", CDec(213.45), "Images/Koala.jpg")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = "Hello World; the time is now " & DateTime.Now.ToString()

        p.Price = CDec(30.45)
        Image1.ImageUrl = "~/" & p.ImageUrl
        Label2.Text = p.GetHtml


    End Sub

    Private Sub ChangeDectected() Handles p.PriceChanged
        Label1.Text += "  Price has changed..."
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        p.Price = CDec(4.2)
    End Sub
End Class