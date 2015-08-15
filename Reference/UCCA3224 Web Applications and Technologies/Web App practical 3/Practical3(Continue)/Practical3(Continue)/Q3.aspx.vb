Public Class Q3
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load, Button1.Click
        If Not Page.IsPostBack Then
            ListBox1.Items.Add("Econo Sofa")
            ListBox1.Items.Add("Supreme Leather Drapery")
            ListBox1.Items.Add("Threadbare Carpet")
            ListBox1.Items.Add("Antique Lamp")
            ListBox1.Items.Add("Retro-Finish Jacuzzi")
        End If

    End Sub

    Protected Sub cmdGo_Click(sender As Object, _e As EventArgs) Handles Button1.Click
        If ListBox1.SelectedIndex = -1 Then
            Label1.Text = "You must select an item."
        Else
            ' Forward the user to the information page,
            ' with the query string data.
            Dim Url As String = "QueryStringRecipient.aspx?"
            Url &= "Item = " & ListBox1.SelectedItem.Text & "&"
            Url &= "Mode = " & CheckBox1.Checked.ToString()
            Response.Redirect(Url)
        End If
    End Sub


End Class