<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="person2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <br />
        <asp:Button ID="btnLogout" runat="server" Text="登出" OnClick="btnLogout_Click" />
    </div>

    <div class="auto-style1">
    </div>

</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadPlaceHolder">
    <style type="text/css">
    .auto-style1 {
        height: 40px;
    }
</style>
</asp:Content>

