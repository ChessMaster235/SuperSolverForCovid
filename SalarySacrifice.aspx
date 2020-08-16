<%@ Page Title="Salary Sacrifice" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SalarySacrifice.aspx.vb" Inherits="SuperCOVID.SalarySacrifice" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <p>Your employer may allow you to Salary Sacrifice some of your salary into super. This can be a very effective way of topping up your Super if your income is above $37,000. The contribution comes out of your income before it is taxed and is only taxed at up to 15% in the fund. You need to be aware of some of the limits. <asp:HyperLink ID="hlSalarySacrifice" runat="server" NavigateUrl="https://www.ato.gov.au/Individuals/Super/Growing-your-super/Adding-to-your-super/Salary-sacrificing-super/" Target="_blank">Check the Tax Office Website to understand the rules.</asp:HyperLink></p>
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
