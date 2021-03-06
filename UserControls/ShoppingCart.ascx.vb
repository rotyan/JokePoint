Public Class ShoppingCart1
    Inherits System.Web.UI.UserControl

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    'Protected WithEvents introLabel As System.Web.UI.WebControls.Label
    'Protected WithEvents grid As System.Web.UI.WebControls.DataGrid
    'Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    'Protected WithEvents totalAmountLabel As System.Web.UI.WebControls.Label
    'Protected WithEvents continueShoppingButton As System.Web.UI.WebControls.Button
    'Protected WithEvents placeOrderButton As System.Web.UI.WebControls.Button
    'Protected WithEvents similarProductsLabel As System.Web.UI.WebControls.Label

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
    End Sub

    Private Sub BindShoppingCart()
        Dim amount As Decimal = ShoppingCart.GetTotalAmount()
        ' Set the total amount label using the Currency format
        totalAmountLabel.Text = String.Format("{0:c}", amount)
        If amount = 0 Then
            introLabel.Text = "Your shopping cart is empty!"
            grid.Visible = False
            placeOrderButton.Enabled = False
            similarProductsLabel.Visible = False
        Else
            placeOrderButton.Enabled = True
            ' Populate the data grid and set its DataKey field
            grid.DataSource = ShoppingCart.GetProducts
            grid.DataKeyField = "ProductID"
            grid.DataBind()
        End If
    End Sub

    Private Sub continueShoppingButton_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles continueShoppingButton.Click
        ' This will contain the original location but without the ViewCart parameter
        Dim redirectPage As String
        ' For a start we initialize it with the location of default.aspx
        redirectPage = Request.Url.AbsolutePath + "?" + ShoppingCart.RemoveCartFromQueryString()
        ' Redirect to the new page
        Response.Redirect(redirectPage)
    End Sub

    Private Sub grid_EditCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles grid.EditCommand
        grid.EditItemIndex = e.Item.ItemIndex
        BindShoppingCart()
    End Sub

    Private Sub grid_CancelCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles grid.CancelCommand
        grid.EditItemIndex = -1
        BindShoppingCart()
    End Sub

    Private Sub grid_UpdateCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles grid.UpdateCommand
        Dim productId As String = grid.DataKeys(e.Item.ItemIndex)
        Dim quantity As String = CType(e.Item.FindControl("quantityTextBox"), TextBox).Text
        Try
            ShoppingCart.UpdateProductQuantity(productId, quantity)
        Catch ex As Exception
            ' If the update generates an error, here is the place
            ' we should warn the user about it
        Finally
            grid.EditItemIndex = -1
            BindShoppingCart()
        End Try
    End Sub

    Private Sub grid_DeleteCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles grid.DeleteCommand
        Dim productId As String
        productId = grid.DataKeys(e.Item.ItemIndex)
        ShoppingCart.RemoveProduct(productId)
        BindShoppingCart()
    End Sub

    Private Sub placeOrderButton_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles placeOrderButton.Click
        ' Redirect to checkout page
        Response.Redirect("Checkout.aspx")
    End Sub

    Private Sub Page_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.PreRender
        BindShoppingCart()
    End Sub
End Class
