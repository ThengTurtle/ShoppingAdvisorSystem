
Partial Class CrossPageTarget
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        ''Getting the data from the Server.Transfer
        'lbl.Text = Request.Form("nameValue")

        'Getting data from CrossPage Posting
        If PreviousPage IsNot Nothing Then
            If Not PreviousPage.IsValid Then
                Response.Redirect(Request.UrlReferrer.AbsolutePath & "?err=true")
            Else
                lbl.Text = "You came from a page titled " & _
                    PreviousPage.Header.Title & "<br />"
                Dim prevPage As CrossPageSource = _
                    TryCast(PreviousPage, CrossPageSource)
                If prevPage IsNot Nothing Then
                    lbl.Text &= "You typed in this: " & _
                        prevPage.Name & "<br />"
                End If
                If PreviousPage.IsCrossPagePostBack Then
                    lbl.Text &= "The page was posted directly"
                Else
                    lbl.Text &= "You used Server.Transfer()"
                End If
            End If
        End If
    End Sub
End Class
