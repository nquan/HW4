
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub CalculateButton_Click(sender As Object, e As EventArgs) Handles CalculateButton.Click
        'Declaring the Variables for each field
        Dim hours As Double
        Dim wage As Double
        Dim preTaxDeductions As Double
        Dim postTaxDeductions As Double
        Dim grossPay As Double
        Dim taxablePay As Double
        Dim pay As Double
        Dim tax As Double
        Dim netPay As Double

        'Retrieve Variables
        hours = CDbl(tbhours.Text)
        wage = CDbl(tbhourlyWage.Text)
        preTaxDeductions = CDbl(tbpreTaxDeductions.Text)
        postTaxDeductions = CDbl(tbpostTaxDeductions.Text)


        'Calculate gross pay
        grossPay = hours * wage

        'Calculate taxable pay
        taxablePay = grossPay - preTaxDeductions

        'Make conditions
        If grossPay < 500 Then
            tax = taxablePay * 0.18
        Else : tax = taxablePay * 0.22
        End If

        'Calculate pay
        pay = taxablePay - tax

        'Calculate net pay
        netPay = pay - postTaxDeductions

        'format netpay 
        lbloutcome.Text = FormatCurrency(netpay)


    End Sub 'calculateButton_Click
    Protected Sub ClearButton_Click(sender As Object, e As EventArgs) Handles ClearButton.Click

        'Clear the whole input
        tbhours.Text = ""
        tbhourlyWage.Text = ""
        tbpreTaxDeductions.Text = ""
        tbpostTaxDeductions.Text = ""
        lbloutcome.Text = ""
    End Sub 'ClearButton.Click

End Class 'Default