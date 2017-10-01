<% @  Page Language ="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="person2.login" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">

    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
    <style type="text/css">
   
    .auto-style8 {
            height: 46px;
            width: 460px;
        }
    .auto-style10 {
        height: 20%;
            width: 100%;
        }
        .auto-style11 {
            width: 20%;
            height: 50%;
    }
        .auto-style12 {
            width: 50%;
            height: 50%;
            vertical-align: middle;
        }
        .auto-style13 {
            width: 5%;
            height: 50%;
        }
        .auto-style14 {
            width: 507px;
            height: 20px;
        }
        .auto-style15 {
            width: 5%;
            height: 20px;
        }
        .auto-style16 {
            height: 20px;
            width: 460px;
        }

        .auto-style18 {
            width: 5%;
            height: 42px;
        }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <table class="auto-style12">
    <tr>
        <td class="auto-style14">
            </td>
        <td class="auto-style15">
            </td>
        <td class="auto-style16">
            </td>
    </tr>
    <tr>
        <td class="auto-style11">
            <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="帳號"></asp:Label>
        </td>
        <td class="auto-style18">
            </td>
        <td class="auto-style10">
            <asp:TextBox ID="txtUsername" runat="server" Height="32px" Width="238px">sa</asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">
            <asp:Label ID="Label2" runat="server" Font-Size="XX-Large" Text="密碼"></asp:Label>
        </td>
        <td class="auto-style13">
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
            <asp:Button ID="btnRegistration" runat="server" Font-Size="X-Large" Height="40px" Text="註冊" Width="120px" OnClick="btnRegistration_Click1" />
        </td>
    </tr>
</table>

</asp:Content>


