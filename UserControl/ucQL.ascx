<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucQL.ascx.cs" Inherits="de1.UserControl.ucQL" %>
<asp:DataList ID="DataList1" runat="server" DataKeyField="CatID" DataSourceID="CategoryListEntityDataSource">
    <ItemTemplate>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("CatName") %>' Text='<%# Eval("CatName") + "(" + Eval("Beverages.Count") + ")" %>'></asp:HyperLink>
        <br />
        <br />
    </ItemTemplate>
</asp:DataList>
<asp:EntityDataSource ID="CategoryListEntityDataSource" runat="server" ConnectionString="name=QLDoUongEntities" DefaultContainerName="QLDoUongEntities" EnableFlattening="False" EntitySetName="Categories" EntityTypeFilter="Category" Include="Beverages">
</asp:EntityDataSource>


