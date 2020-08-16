<%@ Page Title="Whats Average" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WhatsAverage.aspx.vb" Inherits="SuperCOVID.WhatsAverage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
 <div>
     Select your range and hit compute to determine what an average person in Australia is doing.<br />
     <table style="width: 250px;">
         <tr>
             <td class="modal-sm" style="width: 100px">Age</td>
             <td><asp:DropDownList ID="dlAge" runat="server" DataSourceID="SqlAge" DataTextField="AgeRange" DataValueField="AgeRange"></asp:DropDownList></td>
         </tr>
         <tr>
             <td class="modal-sm" style="width: 100px">Gender</td>
             <td><asp:DropDownList ID="dlGender" runat="server" DataSourceID="SqlGender" DataTextField="Sex" DataValueField="Sex"></asp:DropDownList></td>
         </tr>
         <tr>
             <td class="modal-sm" style="width: 100px">Income</td>
             <td><asp:DropDownList ID="dlIncome" runat="server" DataSourceID="SqlIncome" DataTextField="IncomeRange" DataValueField="IncomeRange"></asp:DropDownList></td>
         </tr>
     </table>
     <br />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Button ID="btnRefresh" runat="server" Text="Compute" />
     <br />
     <br />
     What Does the Average Person Do?<br />
     <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BorderColor="#0000CC" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataSourceID="SqlSuper" Height="50px" Width="250px" ForeColor="#333333" GridLines="None">
         <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
         <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
         <EditRowStyle BackColor="#999999" />
         <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
         <Fields>
             <asp:BoundField DataField="AvTotCont" DataFormatString="{0:c}" HeaderText="Average Contribution" SortExpression="AvTotCont" >
             <ItemStyle HorizontalAlign="Right" />
             </asp:BoundField>
             <asp:BoundField DataField="AverageMemberBalance" DataFormatString="{0:c}" HeaderText="Average Balance" SortExpression="AverageMemberBalance" >
             <ItemStyle HorizontalAlign="Right" />
             </asp:BoundField>
             <asp:BoundField DataField="MedianMemberBalance" DataFormatString="{0:c}" HeaderText="Median Balance" SortExpression="MedianMemberBalance" >
             <ItemStyle HorizontalAlign="Right" />
             </asp:BoundField>
         </Fields>
         <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
         <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
         <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#284775" />
         <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
     </asp:DetailsView>
     <br />
     Who Contributes?
     <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="Solid" BorderWidth="3px" CellPadding="3" CellSpacing="2" DataSourceID="SqlSuper" Height="50px" Width="250px">
         <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
         <Fields>
             <asp:BoundField DataField="AvEmpCont" DataFormatString="{0:c}" HeaderText="Employer" SortExpression="AvEmpCont" >
             <ItemStyle HorizontalAlign="Right" />
             </asp:BoundField>
             <asp:BoundField DataField="AvPersCont" DataFormatString="{0:c}" HeaderText="Personal" SortExpression="AvPersCont" >
             <ItemStyle HorizontalAlign="Right" />
             </asp:BoundField>
             <asp:BoundField DataField="AvOthrCont" DataFormatString="{0:c}" HeaderText="Other" SortExpression="AvOthrCont">
             <ItemStyle HorizontalAlign="Right" />
             </asp:BoundField>
         </Fields>
         <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
         <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
         <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
         <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
     </asp:DetailsView>
     <br />

     <asp:SqlDataSource ID="SqlSuper" runat="server" ConnectionString="<%$ ConnectionStrings:GOVHACKConnectionString %>" SelectCommand="SELECT [NoPeople], [AvEmpCont], [AvPersCont], [AvOthrCont], [AvTotCont], [AverageMemberBalance], [MedianMemberBalance] FROM [SuperTax] WHERE (([AgeRange] = @AgeRange) AND ([Sex] = @Sex) AND ([IncomeRange] = @IncomeRange))">
         <SelectParameters>
             <asp:ControlParameter ControlID="dlAge" Name="AgeRange" PropertyName="SelectedValue" Type="String" />
             <asp:ControlParameter ControlID="dlGender" Name="Sex" PropertyName="SelectedValue" Type="String" />
             <asp:ControlParameter ControlID="dlIncome" Name="IncomeRange" PropertyName="SelectedValue" Type="String" />
         </SelectParameters>
     </asp:SqlDataSource>
          <asp:SqlDataSource ID="SqlAge" runat="server" ConnectionString="<%$ ConnectionStrings:GOVHACKConnectionString %>" SelectCommand="SELECT DISTINCT AgeRange FROM SuperTax">
     </asp:SqlDataSource>
          <asp:SqlDataSource ID="SqlGender" runat="server" ConnectionString="<%$ ConnectionStrings:GOVHACKConnectionString %>" SelectCommand="SELECT DISTINCT Sex FROM SuperTax">
     </asp:SqlDataSource>
          <asp:SqlDataSource ID="SqlIncome" runat="server" ConnectionString="<%$ ConnectionStrings:GOVHACKConnectionString %>" SelectCommand="SELECT DISTINCT IncomeRange FROM SuperTax">
     </asp:SqlDataSource>
 </div>

</asp:Content>
