Imports System.Data

Partial Class CheckOut1
    Inherits System.Web.UI.Page

    Dim cookieExists As Boolean
    Dim customerDataView As DataView

    Protected Sub Page_Load(ByVal sender As Object,
            ByVal e As System.EventArgs) Handles Me.Load
        If Not Request.IsSecureConnection Then
            Dim url As String
            url = Request.Url.ToString.Replace("http:", "https:")
            Response.Redirect(url)
        Else
            If Request.Cookies("Email") Is Nothing Then
                cookieExists = False
            Else
                cookieExists = True
            End If
            If Not IsPostBack Then
                If cookieExists Then
                    SqlDataSource1.SelectParameters("Email").DefaultValue =
                        Request.Cookies("Email").Value
                    customerDataView = CType(SqlDataSource1.Select(
                        DataSourceSelectArguments.Empty), DataView)
                    Session("CustomerView") = customerDataView
                    If customerDataView.Count <> 0 Then
                        Me.DisplayCustomerData()
                        txtEmail.Enabled = False
                    Else
                        txtEmail.Enabled = True
                        txtEmail.Text = Request.Cookies("Email").Value
                    End If
                Else
                    txtEmail.Enabled = True
                End If
            End If
        End If

    End Sub

    Private Sub DisplayCustomerData()
        txtEmail.Text = customerDataView(0)("Email").ToString
        txtFirstName.Text = customerDataView(0)("FirstName").ToString
        txtLastName.Text = customerDataView(0)("LastName").ToString
        txtAddress.Text = customerDataView(0)("Address").ToString
        txtCity.Text = customerDataView(0)("City").ToString
        txtState.Text = customerDataView(0)("State").ToString
        txtZipCode.Text = customerDataView(0)("ZipCode").ToString
        txtPhone.Text = customerDataView(0)("PhoneNumber").ToString
    End Sub

    Protected Sub btnCancel_Click(ByVal sender As Object,
            ByVal e As System.EventArgs) Handles btnCancel.Click
        Session.Remove("Cart")
        Dim url As String = "http:" &
            ConfigurationManager.AppSettings("AppPath") &
            "Order.aspx"
        Response.Redirect(url)
    End Sub

    Protected Sub btnCheckOut_Click(ByVal sender As Object,
            ByVal e As System.EventArgs) Handles btnCheckOut.Click
        If Page.IsValid Then
            If Not cookieExists Then
                Me.AddCookie()
            End If
            If Session("CustomerView") Is Nothing Then
                SqlDataSource1.SelectParameters("Email").DefaultValue =
                    txtEmail.Text
                customerDataView = CType(SqlDataSource1.Select(
                    DataSourceSelectArguments.Empty), DataView)
            Else
                customerDataView = CType(Session("CustomerView"), DataView)
            End If
            If customerDataView.Count = 0 Then
                Me.AddCustomer()
            Else
                If CustomerModified() Then
                    Me.UpdateCustomer()
                End If
            End If
            Session("Email") = txtEmail.Text
            Response.Redirect("CheckOut2.aspx")
        End If
    End Sub

    Private Sub AddCookie()
        Dim emailCookie As New HttpCookie("Email", txtEmail.Text)
        emailCookie.Expires = Now.AddYears(1)
        Response.Cookies.Add(emailCookie)
    End Sub

    Private Sub AddCustomer()
        SqlDataSource1.InsertParameters("Email").DefaultValue =
            txtEmail.Text
        SqlDataSource1.InsertParameters("FirstName").DefaultValue =
            txtFirstName.Text
        SqlDataSource1.InsertParameters("LastName").DefaultValue =
            txtLastName.Text
        SqlDataSource1.InsertParameters("Address").DefaultValue =
            txtAddress.Text
        SqlDataSource1.InsertParameters("City").DefaultValue =
            txtCity.Text
        SqlDataSource1.InsertParameters("State").DefaultValue =
            txtState.Text
        SqlDataSource1.InsertParameters("ZipCode").DefaultValue =
            txtZipCode.Text
        SqlDataSource1.InsertParameters("PhoneNumber").DefaultValue =
            txtPhone.Text
        SqlDataSource1.Insert()
    End Sub

    Private Function CustomerModified() As Boolean
        Dim modified As Boolean
        If customerDataView(0)("FirstName").ToString <> txtFirstName.Text Then
            modified = True
        ElseIf customerDataView(0)("LastName").ToString <> txtLastName.Text Then
            modified = True
        ElseIf customerDataView(0)("Address").ToString <> txtAddress.Text Then
            modified = True
        ElseIf customerDataView(0)("City").ToString <> txtCity.Text Then
            modified = True
        ElseIf customerDataView(0)("State").ToString <> txtState.Text Then
            modified = True
        ElseIf customerDataView(0)("ZipCode").ToString <> txtZipCode.Text Then
            modified = True
        ElseIf customerDataView(0)("PhoneNumber").ToString <> txtPhone.Text Then
            modified = True
        End If
        Return modified
    End Function

    Private Sub UpdateCustomer()
        SqlDataSource1.UpdateParameters("FirstName").DefaultValue =
            txtFirstName.Text
        SqlDataSource1.UpdateParameters("LastName").DefaultValue =
            txtLastName.Text
        SqlDataSource1.UpdateParameters("Address").DefaultValue =
            txtAddress.Text
        SqlDataSource1.UpdateParameters("City").DefaultValue =
            txtCity.Text
        SqlDataSource1.UpdateParameters("State").DefaultValue =
            txtState.Text
        SqlDataSource1.UpdateParameters("ZipCode").DefaultValue =
            txtZipCode.Text
        SqlDataSource1.UpdateParameters("PhoneNumber").DefaultValue =
            txtPhone.Text
        SqlDataSource1.UpdateParameters("original_Email").DefaultValue =
            txtEmail.Text
        SqlDataSource1.Update()
    End Sub

    Protected Sub btnContinue_Click(ByVal sender As Object,
            ByVal e As System.EventArgs) Handles btnContinue.Click
        Dim url As String = "http:" &
            ConfigurationManager.AppSettings("AppPath") &
            "Order.aspx"
        Response.Redirect(url)
    End Sub
End Class
