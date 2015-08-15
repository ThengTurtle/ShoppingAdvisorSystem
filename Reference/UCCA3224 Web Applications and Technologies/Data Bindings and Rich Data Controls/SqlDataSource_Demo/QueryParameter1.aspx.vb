
Partial Class QueryParameter1
    Inherits System.Web.UI.Page

    
    Protected Sub cmdGo_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdGo.Click
        Response.Redirect("QueryParameter2.aspx?city=" + lstCities.SelectedValue)
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class
