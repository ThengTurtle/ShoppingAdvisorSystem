Namespace sth
    Class Product
        Private _price As Decimal

        Public Property ImageUrl As String
        Public Property Name As String
        Public Property Price As Decimal
            Get
                Return _price
            End Get
            Set(value As Decimal)
                _price = value

                RaiseEvent PriceChanged()
            End Set
        End Property

        Public Sub New()
            ImageUrl = ""
            Name = ""
            Price = 0.0
        End Sub

        Public Sub New(ByVal name As String, ByVal price As Decimal, ByVal imageurl As String)
            Me.Name = name
            Me.Price = price
            Me.ImageUrl = imageurl

        End Sub

        Public Function GetHtml() As String
            Dim sb As New StringBuilder

            sb.Append("<p>Name: ")
            sb.Append(Me.Name)
            sb.Append("</p>")

            Return sb.ToString()
        End Function

        Public Event PriceChanged()

    End Class
End Namespace

