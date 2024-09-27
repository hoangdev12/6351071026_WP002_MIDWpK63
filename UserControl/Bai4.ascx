<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Bai4.ascx.cs" Inherits="de1.UserControl.Bai4" %>
<asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="Bai4EntityDataSource">

    <ItemTemplate>
        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
        <br />
        <asp:Image ID="ImageFilePathLabel" runat="server"  ImageUrl='<%# "~/images/Beverages/" + Eval("ImageFilePath") %>'  />
        <br />
        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
        <br />
      </ItemTemplate>
    <LayoutTemplate>
        <div style="" id="itemPlaceholderContainer" runat="server">
            <span runat="server" id="itemPlaceholder" />
        </div>
        <div style="">
            <asp:DataPager ID="DataPager1" runat="server" PageSize="3">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                    <asp:NumericPagerField />
                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                </Fields>
            </asp:DataPager>
        </div>
    </LayoutTemplate>
</asp:ListView>
<asp:EntityDataSource ID="Bai4EntityDataSource" runat="server" ConnectionString="name=QLDoUongEntities" DefaultContainerName="QLDoUongEntities" EnableFlattening="False" EntitySetName="Beverages">
</asp:EntityDataSource>

