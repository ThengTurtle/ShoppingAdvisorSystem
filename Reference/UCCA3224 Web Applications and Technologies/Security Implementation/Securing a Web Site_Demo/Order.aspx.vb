Imports System.Data

Partial Class Order
    Inherits System.Web.UI.Page

    Private selectedProduct As Product

    Protected Sub Page_Load(ByVal sender As Object,
            ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            ddlProducts.DataBind()
        End If
        selectedProduct = Me.GetSelectedProduct
        lblName.Text = selectedProduct.Name
        lblShortDescription.Text = selectedProduct.ShortDescription
        lblLongDescription.Text = selectedProduct.LongDescription
        lblUnitPrice.Text = FormatCurrency(selectedProduct.UnitPrice)
        imgProduct.ImageUrl = "Images/Products/" &
            selectedProduct.ImageFile
    End Sub

    Private Function GetSelectedProduct() As Product
        Dim productTable As DataView = CType(SqlDataSource1.Select(
            DataSourceSelectArguments.Empty), DataView)
        productTable.RowFilter = "ProductID = '" & ddlProducts.SelectedValue & "'"
        Dim productRow As DataRowView = productTable(0)

        Dim product As New Product
        product.ProductID = productRow("ProductID").ToString
        product.Name = productRow("Name").ToString
        product.ShortDescription = productRow("ShortDescription").ToString
        product.LongDescription = productRow("LongDescription").ToString
        product.UnitPrice = CDec(productRow("UnitPrice"))
        product.ImageFile = productRow("ImageFile").ToString
        Return product
    End Function

    Protected Sub btnAdd_Click(ByVal sender As Object,
            ByVal e As System.EventArgs) Handles btnAdd.Click
        If Page.IsValid Then
            Dim cart As CartItemList = CartItemList.GetCart
            Dim cartItem As CartItem = cart(selectedProduct.ProductID)
            If cartItem Is Nothing Then
                cart.AddItem(selectedProduct, CInt(txtQuantity.Text))
            Else
                cartItem.AddQuantity(CInt(txtQuantity.Text))
            End If
            Response.Redirect("Cart.aspx")
        End If
    End Sub

    Protected Sub btnCheckOut_Click(ByVal sender As Object,
            ByVal e As System.EventArgs) Handles btnCheckOut.Click
        Dim url As String = "https:" &
            ConfigurationManager.AppSettings("AppPath") &
            "CheckOut1.aspx"
        Response.Redirect(url)
    End Sub

End Class
