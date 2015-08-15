Public Partial Class Session1
    Inherits System.Web.UI.Page

   

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Session("UserName") = Name.Text
    End Sub
End Class