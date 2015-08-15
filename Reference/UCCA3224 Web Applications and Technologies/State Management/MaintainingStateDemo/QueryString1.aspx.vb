
Partial Class QS
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.Redirect(String.Format("QueryString2.aspx?Visitor={0}&Age={1}&ID={2}", Server.UrlEncode(Name.Text), Server.UrlEncode(Age.Text), "a123"))
    End Sub
End Class
