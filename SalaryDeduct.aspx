<%@ Page Title="Salary Deductions" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SalaryDeduct.aspx.vb" Inherits="SuperCOVID.SalaryDeduct" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <p>Deductions from your salary (after tax) into super will gradually replace the amount you deducted for COVID. Since it has already been taxed there wont be any more tax payable on this money.</p> 
    <p>If you are earning less than $37,000 the government may add up to an extra $500pa in <asp:HyperLink ID="hlCoCont" runat="server" NavigateUrl="https://www.ato.gov.au/Individuals/Super/Growing-your-super/Adding-to-your-super/Government-super-contributions/#Supercocontribution">Co-contributions</asp:HyperLink>&nbsp;if you contribute $1,000.</p>
    <p>If you are earning more than $37,000 you might find <asp:HyperLink ID="hlSalarySacrifice" runat="server" NavigateUrl="SalarySacrifice.aspx">Salary Sacrifice deductions</asp:HyperLink>&nbsp;more tax effective if your employer and Super Fund allow it.</p>
        <table style="width:429px">
            <tr>
                <td style="width: 160px">Annual Contribution</td>
                <td><asp:TextBox ID="txtExtra" runat="server">1200</asp:TextBox>        
                    <br />
                    <asp:RegularExpressionValidator ID="vdNumber" runat="server" ControlToValidate="txtExtra" ErrorMessage="Please input a Number between 1-20,000" ForeColor="Red" ValidationExpression="^([1-9]\d{0,3}|1\d{4}|20000)$"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td style="width: 160px">Years to Contribute</td>
                <td><asp:TextBox ID="txtRetire" runat="server" style="margin-right: 0">20</asp:TextBox>
                    <br />
                    <asp:RegularExpressionValidator ID="vdNumber0" runat="server" ControlToValidate="txtRetire" ErrorMessage="Please input a Number between 1-99" ForeColor="Red" ValidationExpression="^(\d?[1-9]|[1-9]0)$"></asp:RegularExpressionValidator></td>

            </tr>
            <tr>
                <td style="width: 160px">Equivalent to Withdraw</td>
                <td>
                    <asp:Label ID="lblResult" runat="server" Text="0"></asp:Label>
                </td>
            </tr>
        </table>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="btnCompute" runat="server" Text="Compute" />
    </p>

</asp:Content>
