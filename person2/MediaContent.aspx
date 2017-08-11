<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MediaContent.aspx.cs" Inherits="person2.reviewdetail" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 379px;
        }
        .auto-style3 {
            width: 379px;
            height: 9px;
        }
        .auto-style4 {
            height: 9px;
        }
        .auto-style5 {
            width: 379px;
            height: 76px;
        }
        .auto-style6 {
            height: 76px;
        }
        .auto-style7 {
            width: 379px;
            height: 28px;
        }
        .auto-style8 {
            height: 28px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
            <Scripts>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js">
                </asp:ScriptReference>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js">
                </asp:ScriptReference>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js">
                </asp:ScriptReference>
            </Scripts>
        </telerik:RadScriptManager>
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">標題</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">上傳時間</td>
                    <td class="auto-style8">
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">上傳者</td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">系名稱</td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">作者</td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">檔名</td>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">檔案位置</td>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">youtube URL</td>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="https://www.youtube.com/embed/S5iroMSW20Y"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">審查通過</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>否</asp:ListItem>
                            <asp:ListItem>是</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">審查意見</td>
                    <td class="auto-style6">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">媒體審核後結果</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>1.公開</asp:ListItem>
                            <asp:ListItem>2.校園內公開</asp:ListItem>
                            <asp:ListItem>3.限閱</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">限閱時輸入的密碼</td>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">媒體申請時狀態</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="DropDownList3" runat="server">
                            <asp:ListItem>1.公開</asp:ListItem>
                            <asp:ListItem>2.校園內公開</asp:ListItem>
                            <asp:ListItem>3.限閱</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2">
                        <telerik:RadMediaPlayer ID="RadMediaPlayer1" runat="server" Culture="zh-TW" Height="394px">
                        </telerik:RadMediaPlayer>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
