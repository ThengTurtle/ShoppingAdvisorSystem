
Partial Class ValidationControl
    Inherits System.Web.UI.Page

    Protected Sub CustomValidator1_ServerValidate(ByVal source As Object, ByVal args As System.Web.UI.WebControls.ServerValidateEventArgs) Handles CustomValidator1.ServerValidate
        Dim roomType As String = DropDownList1.SelectedIndex
        Dim allowedGuest As Integer = 0

        Select Case roomType
            Case 1  'Single Room
                allowedGuest = 1
            Case 2  'Twin Sharing
                allowedGuest = 2
            Case 3  'Double Bed
                allowedGuest = 3
        End Select

        If args.Value <> allowedGuest Then
            args.IsValid = False
        Else
            args.IsValid = True
        End If

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If Page.IsValid Then
            'Label1.Text = "Your reservation will be processed within 2 working days. thank you"
            Panel2.Visible = True
        End If
    End Sub

    
    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Panel1.Visible = True
        Panel2.Visible = False

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        If Page.IsValid Then
            Label1.Text = "<h2 style='color:blue'>Your reservation will be processed within 2 working days. thank you</h2>"
            Panel2.Visible = True
        End If
    End Sub
End Class
