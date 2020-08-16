<%@ Page Title="Sell Something" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SellSomething.aspx.vb" Inherits="SuperCOVID.SellSomething" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <p>Find some items of value that you dont really need or you could replace with less expensive alternatives and sell them. Your super fund may allow you to contribute the funds as a one off contribution to top up your super.</p>
    <p>The difference between the price of your super funds units on the date of withdraw and the date of redepositing may mean you need to deposit a different amount.</p>
        <table style="width:429px">
            <tr>
                <td style="width: 160px">Sale Proceeds</td>
                <td><asp:TextBox ID="txtProceeds" runat="server">10000</asp:TextBox>        
                    <br />
                    <asp:RegularExpressionValidator ID="vdNumber" runat="server" ControlToValidate="txtProceeds" ErrorMessage="Please input a Number" ForeColor="Red" ValidationExpression="^(\d*\.)?\d+$"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td style="width: 160px">Unit Price at Withdraw</td>
                <td><asp:TextBox ID="txtWithdawl" runat="server" style="margin-right: 0">3.500</asp:TextBox>
                    <br />
                    <asp:RegularExpressionValidator ID="vdNumber0" runat="server" ControlToValidate="txtWithdawl" ErrorMessage="Please input a Number" ForeColor="Red" ValidationExpression="^(\d*\.)?\d+$"></asp:RegularExpressionValidator></td>

            </tr>
                        <tr>
                <td style="width: 160px">Unit Price at Deposit</td>
                <td><asp:TextBox ID="txtDeposit" runat="server" style="margin-right: 0">4.200</asp:TextBox>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtDeposit" ErrorMessage="Please input a Number" ForeColor="Red" ValidationExpression="^(\d*\.)?\d+$"></asp:RegularExpressionValidator></td>

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