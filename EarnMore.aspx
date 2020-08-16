<%@ Page Title="Earn More" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EarnMore.aspx.vb" Inherits="SuperCOVID.EarnMore" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <p>If you earn more salary it will increase the amount your employer contributes to your super.</p>
        <table style="width:429px">
            <tr>
                <td style="width: 160px">Extra Salary</td>
                <td><asp:TextBox ID="txtExtra" runat="server">10000</asp:TextBox>        
                    <br />
                    <asp:RegularExpressionValidator ID="vdNumber" runat="server" ControlToValidate="txtExtra" ErrorMessage="Please input a Number between 1-20,000" ForeColor="Red" ValidationExpression="^([1-9]\d{0,3}|1\d{4}|20000)$"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td style="width: 160px">Years of Earning</td>
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
