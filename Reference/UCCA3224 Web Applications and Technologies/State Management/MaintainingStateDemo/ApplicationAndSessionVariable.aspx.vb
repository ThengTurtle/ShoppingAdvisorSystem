
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then

            Application.Lock()

            Application("Visits") = CInt(Application("Visits")) + 1

            Application.UnLock()
        End If


        Dim colconvert As New System.Drawing.ColorConverter()


        lblVisits.ForeColor = colconvert.ConvertFromString(Session("ForeColor"))
        lblVisits.BackColor = colconvert.ConvertFromString(Session("BackColor"))
        lblVisits.Text = "This page has been visited " & _
        CStr(Application("Visits")) & " times."
    End Sub
End Class
