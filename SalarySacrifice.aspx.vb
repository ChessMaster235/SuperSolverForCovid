Public Class SalarySacrifice
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnCompute_Click(sender As Object, e As EventArgs) Handles btnCompute.Click
        Try
            lblResult.Text = Decimal.Parse(PV(0.06, CDec(txtRetire.Text), CDec(txtExtra.Text) * -0.85)).ToString("c")
        Catch ex As Exception
            lblResult.Text = 0
        End Try
    End Sub
End Class