<% @  Page Language ="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="person2.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
        height: 259px;
        margin-bottom: 1px;
    }
    .auto-style8 {
        height: 46px;
    }
    .auto-style9 {
        height: 58px;
        width: 646px;
        text-align: center;
    }
    .auto-style10 {
        height: 58px;
    }
    .auto-style11 {
        height: 46px;
        width: 646px;
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style11">
            <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="帳號"></asp:Label>
        </td>
        <td class="auto-style8">
            <asp:TextBox ID="txtUsername" runat="server" Height="32px" Width="218px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">
            <asp:Label ID="Label2" runat="server" Font-Size="XX-Large" Text="密碼"></asp:Label>
        </td>
        <td class="auto-style10">
            <asp:TextBox ID="txtPassword" runat="server" Height="32px" Width="218px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">
            <asp:Label ID="lblshow" runat="server" Text="Label"></asp:Label>
        </td>
        <td class="auto-style8">
            <asp:Button ID="btnLogin" runat="server" Font-Size="X-Large" Height="40px" OnClick="btnLogin_Click" Text="Login" Width="120px" />
        </td>
    </tr>
</table>
</asp:Content>
