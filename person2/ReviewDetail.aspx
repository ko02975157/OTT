<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReviewDetail.aspx.cs" Inherits="person2.reviewdetail" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style5 {
            width: 379px;
            height: 80px;
        }
        .auto-style6 {
            height: 80px;
        }
        .auto-style11 {
            margin-top: 0px;
        }
        .auto-style15 {
            width: 379px;
            height: 27px;
        }
        .auto-style16 {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
                        <asp:Panel ID="Panel1" runat="server" Height="400px" Width="1355px">
                            <telerik:RadMediaPlayer ID="RadMediaPlayer1" runat="server" Culture="zh-TW" Height="350px" RenderMode="Mobile">
                            </telerik:RadMediaPlayer>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" Text="開始審核" OnClick="Button1_Click" Height="50px" Width="150px" />
                        </asp:Panel>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Panel ID="Panel2" runat="server" Height="400px" Width="1355px">
                            <telerik:RadMediaPlayer ID="RadMediaPlayer2" runat="server" Culture="zh-TW" Height="350px">
                            </telerik:RadMediaPlayer>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" Text="開始審核" Height="50px" OnClick="Button2_Click" Width="150px" />
                        </asp:Panel>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <div>
            <asp:Panel ID="Panel3" runat="server" CssClass="auto-style11" Height="468px">
                <table class="auto-style1" aria-disabled="False">
                    <tr>
                        <td class="auto-style15">批次代號</td>
                        <td class="auto-style16">
                            <asp:Label ID="lbl1" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">影音代號</td>
                        <td class="auto-style16">
                            <asp:Label ID="lbl2" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">初審人員代號</td>
                        <td class="auto-style16">
                            <asp:Label ID="lbl3" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">審查通過</td>
                        <td class="auto-style16">
                            <asp:DropDownList ID="DDL1" runat="server">
                                <asp:ListItem>1.否</asp:ListItem>
                                <asp:ListItem>2.是</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">審查意見</td>
                        <td class="auto-style6">
                            <asp:Label ID="lbl4" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">審核結果</td>
                        <td class="auto-style16">
                            <asp:DropDownList ID="DDL2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                                <asp:ListItem>1.公開</asp:ListItem>
                                <asp:ListItem>2.校園內公開</asp:ListItem>
                                <asp:ListItem>3.限閱</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">youtube URL</td>
                        <td class="auto-style16">
                            <asp:Label ID="lbl5" runat="server" Text="https://youtu.be/35FSJVS77Fw"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">送出時間</td>
                        <td class="auto-style16">
                            <asp:Label ID="lbl6" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button3" runat="server" Text="確認" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
                        </div>
</asp:Content>
