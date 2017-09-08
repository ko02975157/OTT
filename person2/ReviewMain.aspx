<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReviewMain.aspx.cs" Inherits="person2.ReviewMain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 32%;
        }
        .auto-style4 {
            width: 139px;
            height: 24px;
        }
        .auto-style9 {
            width: 139px;
            height: 30px;
        }
        .auto-style11 {
            width: 448px;
            height: 24px;
        }
        .auto-style12 {
            width: 448px;
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="400px">
    <telerik:RadMediaPlayer ID="RadMediaPlayer1" runat="server">
    </telerik:RadMediaPlayer>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Height="50px" Text="開始審核" Width="150px" />
</asp:Panel>
<asp:Panel ID="Panel2" runat="server" Height="400px">
    <telerik:RadMediaPlayer ID="RadMediaPlayer2" runat="server">
    </telerik:RadMediaPlayer>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Height="50px" Text="開始審核" Width="150px" />
    <asp:Panel ID="Panel3" runat="server" Height="360px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="auto-style2">
            <tr>
                <td class="auto-style9">批次代號</td>
                <td class="auto-style12">
                    <asp:Label ID="lbl1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">影音代號</td>
                <td class="auto-style12">
                    <asp:Label ID="lbl2" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">批次名稱</td>
                <td class="auto-style12">
                    <asp:Label ID="lbl3" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">成立時間</td>
                <td class="auto-style12">
                    <asp:Label ID="lbl4" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">總審人員代號</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">送至時間</td>
                <td class="auto-style12">
                    <asp:Label ID="lbl5" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">審核意見</td>
                <td class="auto-style12">
                    <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">審核結果</td>
                <td class="auto-style12">
                    <asp:DropDownList ID="ddl1" runat="server">
                        <asp:ListItem>1.公開</asp:ListItem>
                        <asp:ListItem>2.校園內公開</asp:ListItem>
                        <asp:ListItem>3.限閱</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">送出時間</td>
                <td class="auto-style12">
                    <asp:Label ID="lbl6" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Panel>
</asp:Content>
