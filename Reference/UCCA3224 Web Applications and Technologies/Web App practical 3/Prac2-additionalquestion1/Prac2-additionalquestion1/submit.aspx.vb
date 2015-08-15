Public Class submit
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblName.Text = Request.Form("name")
        lblHidName.Text = Request.Form("hidname")
        lblHidKey.Text = Request.Form("hiddenkey")
        lblPassword.Text = Request.Form("password")
        lblCity.Text = Request.Form("city")
        lblCountry.Text = Request.Form("country")
        lblStreet.Text = Request.Form("street")
        lblEmail.Text = Request.Form("email")

        Dim unpop As Integer = CInt(Request.Form("unpop"))
        Dim caramel As Integer = CInt(Request.Form("unpop"))
        Dim nutpop As Integer = CInt(Request.Form("caramelnut"))
        Dim toffelnut As Integer = CInt(Request.Form("toffeynut"))

        Dim totalprice As Integer = (3.0 * unpop)

        lblunpop.Text = unpop.ToString
        lblCaramel.Text = caramel.ToString
        lblNutPopcorn.Text = nutpop.ToString
        lblToffeyNutPopcorn.Text = toffelnut.ToString

        Dim feedbackvg As String = Request.Form("feedbackvg")
        Dim feedbackg As String = Request.Form("feedbackg")
        Dim feedbacknl As String = Request.Form("feedbacknl")
        Dim feedbackp As String = Request.Form("feedbackp")

        Dim lb As Label
        Dim cb As CheckBox
        Dim panel1 As Panel


        If (feedbackvg IsNot Nothing) Then
            lb = New Label()
            lb.Text = "Very Good"
            panel1.controls.add(lb)
            cb = New CheckBox()
            cb.Enabled = False
            panel1.Controls.Add(cb)
        End If
        If (feedbackg IsNot Nothing) Then
            lb = New Label()
            lb.Text = "Good"
            panel1.Controls.Add(lb)
            cb = New CheckBox()
            cb.Enabled = False
            panel1.Controls.Add(cb)
        End If
        If (feedbacknl IsNot Nothing) Then
            lb = New Label()
            lb.Text = "No Like"
            panel1.Controls.Add(lb)
            cb = New CheckBox()
            cb.Enabled = False
            panel1.Controls.Add(cb)
        End If
        If (feedbackp IsNot Nothing) Then
            lb = New Label()
            lb.Text = "Poor"
            panel1.Controls.Add(lb)
            cb = New CheckBox()
            cb.Enabled = False
            panel1.Controls.Add(cb)
        End If
    End Sub

End Class