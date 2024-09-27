<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultPageMaster.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="de1.home" %>
<%@ Register src="UserControl/Bai4.ascx" tagname="Bai4" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:Bai4 ID="Bai41" runat="server" />
</asp:Content>
