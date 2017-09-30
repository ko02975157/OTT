<% @  Page Language ="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="person2.login" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
    <style type="text/css">
   
    .auto-style8 {
            height: 46px;
            width: 460px;
        }
    .auto-style10 {
        height: 58px;
            width: 460px;
        }
        .auto-style11 {
            width: 469px;
        }
        .auto-style12 {
            width: 677px;
            height: 316px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="auto-style12">
    <tr>
        <td class="auto-style11">
            &nbsp;</td>
        <td class="auto-style13">
            &nbsp;</td>
        <td class="auto-style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11">
            <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="帳號"></asp:Label>
        </td>
        <td class="auto-style13">
            &nbsp;</td>
        <td class="auto-style8">
            <asp:TextBox ID="txtUsername" runat="server" Height="32px" Width="238px">sa</asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">
            <asp:Label ID="Label2" runat="server" Font-Size="XX-Large" Text="密碼"></asp:Label>
        </td>
        <td class="auto-style14">
            &nbsp;</td>
        <td class="auto-style10">
            <asp:TextBox ID="txtPassword" runat="server" Height="32px" Width="238px" TextMode="Password">12345</asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">
            &nbsp;</td>
        <td class="auto-style13">
            &nbsp;</td>
        <td class="auto-style8">
            <asp:Button ID="btnLogin" runat="server" Font-Size="X-Large" Height="40px" OnClick="btnLogin_Click" Text="登入" Width="120px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnRegistration" runat="server" Font-Size="X-Large" Height="40px" Text="註冊" Width="120px" OnClick="btnRegistration_Click1" />
        </td>
    </tr>
</table>
</asp:Content>


