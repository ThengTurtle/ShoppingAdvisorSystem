Public Class FruitsWebpage
    Inherits System.Web.UI.Page

    Dim mywebService As New ModrenFruitseller.net.azurewebsites.ucca3224.WebService1()
    Dim myProduct(5) As ModrenFruitseller.net.azurewebsites.ucca3224.Product

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        myProduct = mywebService.GetProducts()
        label1.Text = mywebService.HelloWorld()

        image1.ImageUrl = myProduct(0).ImageUrl
        label2.Text = myProduct(0).Name

        image2.ImageUrl = myProduct(1).ImageUrl
        label3.Text = myProduct(1).Name
    End Sub

End Class