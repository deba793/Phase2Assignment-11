<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Articles.aspx.cs" Inherits="Phase2Assignmrnt_11.Articles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2 class="text-center">Articles</h2>
     <table class="w-100">
         <tr>
             <td>
                 <asp:Label ID="LblMsg" runat="server"></asp:Label>
             </td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td>
                 <asp:GridView ID="GvArticles" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ArticleId" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal">
                     <Columns>
                         <asp:BoundField DataField="ArticleId" HeaderText="ArticleId" ReadOnly="True" SortExpression="ArticleId" />
                         <asp:BoundField DataField="Content" HeaderText="Content" SortExpression="Content" />
                         <asp:BoundField DataField="PublishDate" HeaderText="PublishDate" SortExpression="PublishDate" />
                     </Columns>
                     <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                     <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                     <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                     <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                     <SortedAscendingCellStyle BackColor="#F7F7F7" />
                     <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                     <SortedDescendingCellStyle BackColor="#E5E5E5" />
                     <SortedDescendingHeaderStyle BackColor="#242121" />
                 </asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ContentDBConnectionString %>" ProviderName="<%$ ConnectionStrings:ContentDBConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Articles]"></asp:SqlDataSource>
             </td>
             <td>&nbsp;</td>
         </tr>
     </table>
</asp:Content>
