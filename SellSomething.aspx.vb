Public Class SellSomething
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnCompute_Click(sender As Object, e As EventArgs) Handles btnCompute.Click
        Try
            lblResult.Text = Decimal.Parse(CDec(txtProceeds.Text) * (CDec(txtWithdawl.Text) / CDec(txtDeposit.Text))).ToString("c")
        Catch ex As Exception
            lblResult.Text = 0
        End Try
    End Sub
End Class