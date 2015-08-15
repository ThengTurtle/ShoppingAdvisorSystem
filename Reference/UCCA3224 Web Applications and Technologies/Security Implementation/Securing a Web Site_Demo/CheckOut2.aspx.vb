Imports System.Data.SqlClient

Partial Class CheckOut2
    Inherits System.Web.UI.Page

    Dim cart As CartItemList
    Dim email As String
    Dim invoiceNumber As String

    Protected Sub Page_Load(ByVal sender As Object,
            ByVal e As System.EventArgs) Handles Me.Load
        If Not Request.IsSecureConnection Then
            Dim url As String
            url = Request.Url.ToString.Replace("http:", "https:")
            Response.Redirect(url)
        Else
            cart = CType(Session("Cart"), CartItemList)
            email = Session("Email").ToString
            If Not IsPostBack Then
                Me.LoadYears()
            End If
        End If
    End Sub

    Private Sub LoadYears()
        Dim count As Integer
        Dim year As Integer = Now.Year
        Do Until count = 6
            ddlYear.Items.Add(year)
            count += 1
            year += 1
        Loop
    End Sub

    Protected Sub btnAccept_Click(ByVal sender As Object,
            ByVal e As System.EventArgs) Handles btnAccept.Click
        If Page.IsValid Then
            Me.PutInvoice()
            Me.GetInvoiceNumber()
            Me.PutLineItems()
            Session.Remove("Cart")
            Response.Redirect("Confirmation.aspx")
        End If
    End Sub

    Private Sub PutInvoice()
        SqlDataSource1.InsertParameters("CustEMail").DefaultValue = email
        SqlDataSource1.InsertParameters("OrderDate").DefaultValue = Today
        Dim quantity As Integer = Me.Quantity
        If rdoGround.Checked Then
            SqlDataSource1.InsertParameters("ShipMethod").DefaultValue =
                "UPS Ground"
            SqlDataSource1.InsertParameters("Shipping").DefaultValue =
                3.95 + (quantity - 1) * 1.25
        ElseIf rdo2Day.Checked Then
            SqlDataSource1.InsertParameters("ShipMethod").DefaultValue =
                "UPS Second Day"
            SqlDataSource1.InsertParameters("Shipping").DefaultValue =
                7.95 + (quantity - 1) * 2.5
        ElseIf rdoFedEx.Checked Then
            SqlDataSource1.InsertParameters("ShipMethod").DefaultValue =
                "Federal Express"
            SqlDataSource1.InsertParameters("Shipping").DefaultValue =
                19.95 + (quantity - 1) * 4.95
        End If
        Dim subtotal As Decimal = Me.SubTotal
        SqlDataSource1.InsertParameters("Subtotal").DefaultValue = subtotal
        Dim salesTax As Decimal = subtotal * 0.075
        SqlDataSource1.InsertParameters("SalesTax").DefaultValue = salesTax
        SqlDataSource1.InsertParameters("Total").DefaultValue = subtotal + salesTax
        SqlDataSource1.InsertParameters("CreditCardType").DefaultValue = lstCardType.SelectedValue
        SqlDataSource1.InsertParameters("CardNumber").DefaultValue = txtCardNumber.Text
        SqlDataSource1.InsertParameters("ExpirationMonth").DefaultValue = ddlMonth.SelectedValue
        SqlDataSource1.InsertParameters("ExpirationYear").DefaultValue = ddlYear.SelectedValue
        SqlDataSource1.Insert()
    End Sub

    Private Function Quantity() As Integer
        Dim qty As Integer
        For i = 0 To cart.Count - 1
            qty += cart(i).Quantity
        Next
        Return qty
    End Function

    Private Function SubTotal() As Decimal
        Dim subtot As Decimal
        For i = 0 To cart.Count - 1
            subtot += cart(i).Quantity * cart(i).Product.UnitPrice
        Next
        Return subtot
    End Function

    Private Sub GetInvoiceNumber()
        Dim conHalloween As New SqlConnection(
            ConfigurationManager.ConnectionStrings("HalloweenConnectionString").ConnectionString)
        Dim invoiceNoCommand As New SqlCommand(
            "Select Ident_Current('Invoices') From Invoices", conHalloween)
        conHalloween.Open()
        invoiceNumber = invoiceNoCommand.ExecuteScalar
        conHalloween.Close()
    End Sub

    Private Sub PutLineItems()
        For i = 0 To cart.Count - 1
            Dim cartItem As CartItem = cart(i)
            SqlDataSource2.InsertParameters("InvoiceNumber").DefaultValue = invoiceNumber
            SqlDataSource2.InsertParameters("ProductID").DefaultValue = cartItem.Product.ProductID
            SqlDataSource2.InsertParameters("UnitPrice").DefaultValue = cartItem.Product.UnitPrice
            SqlDataSource2.InsertParameters("Quantity").DefaultValue = cartItem.Quantity
            SqlDataSource2.Insert()
        Next
    End Sub

    Protected Sub btnCancel_Click(ByVal sender As Object,
            ByVal e As System.EventArgs) Handles btnCancel.Click
        Session.Remove("Cart")
        Dim url As String = "http:" &
            ConfigurationManager.AppSettings("AppPath") &
            "Order.aspx"
        Response.Redirect(url)
    End Sub

    Protected Sub btnContinue_Click(ByVal sender As Object,
            ByVal e As System.EventArgs) Handles btnContinue.Click
        Dim url As String = "http:" &
            ConfigurationManager.AppSettings("AppPath") &
            "Order.aspx"
        Response.Redirect(url)
    End Sub
End Class
