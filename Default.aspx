<%@ Page Title="Welcome" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="SuperCOVID._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <p>If you deducted money from your Super under the COVID rules you should now be thinking about how this might impact your future. In most cases this will mean trying to catch up once you are back on your feet. You might think it is not important right now but fixing it gets more difficult as you get older and life goes much faster than you think! The Super Solver can explain your options and help you make the right decision.</p>
    <p>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/aging.png" />
    </p>
<%--    <p>
        How Much Have You Withdrawn?
         <asp:TextBox ID="txtWithdrawn" runat="server">10000</asp:TextBox>
        <asp:Button ID="btnWizard" runat="server" Text="Use the Wizard" />
        <asp:RegularExpressionValidator ID="vdNumber" runat="server" ControlToValidate="txtWithdrawn" ErrorMessage="Please input a Number between 1-20,000" ForeColor="Red" ValidationExpression="^([1-9]\d{0,3}|1\d{4}|20000)$"></asp:RegularExpressionValidator>
    </p>
        or...
    <br />--%>
        The first thing you should do is determine if you have a problem.
    <ul>
        <li>
            <p>
                Check how your super is going compared to the average aussie using the
        <asp:HyperLink ID="hlAverages" runat="server" NavigateUrl="WhatsAverage.aspx">Averages in Super Solver</asp:HyperLink>?
            </p>
        </li>
        <li>
            <p>
                Try a
        <asp:HyperLink ID="hlProejction" runat="server" NavigateUrl="https://moneysmart.gov.au/how-super-works/superannuation-calculator" Target="_blank">Super Projection Tool</asp:HyperLink>. Will you still have enough money to retire when you want to?</p>
        </li>
    </ul>

        To replace your withdraw use the links and calculators below to find &quot;The Solution&quot;
    <ul>
        <li>
            <p>
                Ask your employer to 
        <asp:HyperLink ID="hlSalaryDeduct" runat="server" NavigateUrl="SalaryDeduct.aspx">make extra deductions</asp:HyperLink>&nbsp;out of your after tax salary into the super fund.
            </p>
        </li>
        <li>
            <p>
                Talk to your payroll department and find out if they will let you make 
        <asp:HyperLink ID="hlSalarySacrifice" runat="server" NavigateUrl="SalarySacrifice.aspx">Salary Sacrifice deductions</asp:HyperLink>&nbsp;into your Super Fund?
            </p>
        </li>
        <li>
            <p>
                Do you have any options to 
        <asp:HyperLink ID="hlEarnMore" runat="server" NavigateUrl="EarnMore.aspx">Earn More Income</asp:HyperLink>?
            </p>
        </li>
        <li>
            <p>
                Could you 
        <asp:HyperLink ID="hlSellSomething" runat="server" NavigateUrl="SellSomething.aspx">sell something</asp:HyperLink>&nbsp;and put the proceeds into super?
            </p>
        </li>
        <li>
            <p>
                Is  
        <asp:HyperLink ID="hlSelfManaged" runat="server" NavigateUrl="https://moneysmart.gov.au/how-super-works/self-managed-super-funds-smsf" Target="_blank">Self Managed Super</asp:HyperLink>&nbsp;an option for you?
            </p>
        </li>
        <li>
            <p>
                If you can&#39;t find an answer, go back to the calculator 
        <asp:HyperLink ID="hlExtendRetire" runat="server" NavigateUrl="https://moneysmart.gov.au/how-super-works/superannuation-calculator" Target="_blank">Extend Your Retirement Age</asp:HyperLink>. Sorry, you may be very old before you can retire!!!
            </p>
        </li>
    </ul>
</asp:Content>
