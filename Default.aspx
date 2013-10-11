<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head> 
<title> Salary Calculator </title>
    <link rel="stylesheet" type="text/css" href="style.css" /> 
</head>
<body>
    <h1 class="title"> Salary Calculator </h1>
    <form id="form1" runat="server">

    <div>
         <br />
        <br />
        <asp:Label ID="hourslbl" runat="server" Text="Hours:"></asp:Label>
        <asp:TextBox ID="tbhours" runat="server" style="margin-left: 130px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbhours" ErrorMessage="**Please enter your weekly hours"></asp:RequiredFieldValidator>
        <br />
        <br />
    
    </div>
    <div>
        <asp:Label ID="wagelbl" runat="server" Text="Wage:"></asp:Label>
        <asp:TextBox ID="tbhourlyWage" runat="server" style="margin-left: 134px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbhourlyWage" ErrorMessage="**Please enter your hourly wages"></asp:RequiredFieldValidator>
     <br />
     <br />
    </div>
    <div>
            <asp:Label ID="preTaxDeductionslbl" runat="server" Text="Pre-Tax Deductions:"></asp:Label>
            <asp:TextBox ID="tbpreTaxDeductions" runat="server" style="margin-left: 29px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbpreTaxDeductions" ErrorMessage="**Please enter your pre-tax deductions"></asp:RequiredFieldValidator>
    <br />
     <br />
         </div>
    <div>
        <asp:Label ID="postTaxDeductionslbl" runat="server" Text="Post-Tax Deductions:"></asp:Label>
        <asp:TextBox ID="tbpostTaxDeductions" runat="server" style="margin-left: 22px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbpostTaxDeductions" ErrorMessage="**Please enter your post-tax deductions"></asp:RequiredFieldValidator>
    </div>
&nbsp;
    <p>
            <asp:Button ID="CalculateButton" runat="server" Text="Calculate" Height="26px" Width="84px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ClearButton" runat="server" style="margin-left: 0px" Text="Clear" Height="26px" Width="84px" />
    </p>
    <div>
        <asp:Label ID="netPaylbl" runat="server" Text="Net Pay:                                                                                          "></asp:Label>
        <asp:Label ID="lbloutcome" runat="server" Width="208px"></asp:Label>
    </div>
    </form>
</body>
</html>
