
Partial Class MultiView
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            DropDownList1.DataSource = MultiView1.Views
            DropDownList1.DataTextField = "ID"
            DropDownList1.DataBind()
        End If


    End Sub

    Protected Sub Page_PreRender(ByVal sender As Object, ByVal e As EventArgs) Handles Me.PreRender

        lblCurrentIndex.Text = MultiView1.ActiveViewIndex.ToString
    End Sub
    
    Protected Sub MultiView1_ActiveViewChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles MultiView1.ActiveViewChanged
        rblView.SelectedIndex = MultiView1.ActiveViewIndex + 1
        DropDownList1.SelectedIndex = MultiView1.ActiveViewIndex
    End Sub

    Protected Sub rblView_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rblView.SelectedIndexChanged
        If Not rblView.SelectedIndex = 0 Then
            MultiView1.ActiveViewIndex = CInt(rblView.SelectedValue)

        Else
            MultiView1.ActiveViewIndex = -1
            lblViewActivation.Text = "Nothing to display"

        End If
        DropDownList1.SelectedIndex = rblView.SelectedIndex - 1

    End Sub

    Protected Sub ActivateView(ByVal sender As Object, ByVal e As EventArgs)

        Dim str As String = lblViewActivation.Text
        Dim v As View = sender

        If MultiView1.ActiveViewIndex = -1 Then
            lblViewActivation.Text = "Nothing to display"
        Else
            str = "View " + v.ID + " activated <br/>"
            lblViewActivation.Text = str
        End If

    End Sub

    Protected Sub DeactivateView(ByVal sender As Object, ByVal e As EventArgs)
        Dim str As String = lblViewActivation.Text
        Dim v As View = sender

        If MultiView1.ActiveViewIndex = -1 Then
            lblViewActivation.Text = "Nothing to display"
            lblViewDeActivation.Text = ""
            rblView.SelectedIndex = 0
        Else
            str = "View " + v.ID + " deactivated <br/>"
            lblViewDeActivation.Text = str
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        
        If Not MultiView1.ActiveViewIndex = MultiView1.Views.Count - 1 Then
            MultiView1.ActiveViewIndex += 1
            If MultiView1.ActiveViewIndex = 0 Then
                MultiView1_ActiveViewChanged(sender, e)
                ActivateView(MultiView1.Views(0), e)
            End If
        End If



    End Sub

    Protected Sub MyDropDownList(sender As Object, e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        MultiView1.ActiveViewIndex = DropDownList1.SelectedIndex

    End Sub
End Class
