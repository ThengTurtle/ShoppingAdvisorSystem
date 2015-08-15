Imports System.Web.Configuration
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        lblMesage.Text = WebConfigurationManager.ConnectionStrings("HALLOWEEN.MDFConnectionString").ConnectionString

    End Sub
End Class
