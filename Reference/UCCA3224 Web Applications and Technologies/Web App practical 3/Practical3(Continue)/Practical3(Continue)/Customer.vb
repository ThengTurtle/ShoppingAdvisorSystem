'<Serializable()> Public Class

Public Class Customer
    Private _FirstName As String
    Private _LastName As String

    Public Property FirstName() As String
        Get
            Return _FirstName
        End Get
        Set(value As String)
            _FirstName = value
        End Set
    End Property

    Public Property LastName() As String
        Get
            Return _LastName
        End Get
        Set(ByVal value As String)
            _LastName = value
        End Set
    End Property

    Public Sub New(ByVal firstname As String, ByVal lastname As String)
        Me._FirstName = firstname
        Me._LastName = lastname
    End Sub

    Public Sub New()
        Me._FirstName = ""
        Me._LastName = ""
    End Sub

End Class
