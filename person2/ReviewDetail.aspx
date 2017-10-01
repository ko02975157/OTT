<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReviewDetail.aspx.cs" Inherits="person2.ReviewDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
    <style type="text/css">


        .auto-style2 {
            width: 38%;
        }
        .auto-style12 {
            width: 448px;
            height: 30px;
        }
        .auto-style11 {
            width: 448px;
            height: 24px;
        }
        .auto-style23 {
            width: 668px;
            height: 30px;
        }
        .auto-style24 {
            width: 668px;
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="345px">
        <telerik:RadMediaPlayer ID="RadMediaPlayer1" runat="server">
        </telerik:RadMediaPlayer>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OTTConnectionString2 %>" SelectCommand="SELECT [MCTitle], [MCYouTubeURL], [MCCreatedDate] FROM [MediaUpload]"></asp:SqlDataSource>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Height="426px">
        <table class="auto-style2">
            <tr>
                <td class="auto-style23">批次代號</td>
                <td class="auto-style12">
                    <asp:Label ID="lblbatch" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">影音代號</td>
                <td class="auto-style12">
                    <asp:Label ID="lblmcid" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">批次名稱</td>
                <td class="auto-style12">
                    <asp:Label ID="lblbatchname" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style24">初審人員代號</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtPID" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">送至時間</td>
                <td class="auto-style12">
                    <asp:Label ID="lblreceivetime" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">審核意見</td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtreview" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">審核結果</td>
                <td class="auto-style12">
                    <asp:DropDownList ID="ddlresult" runat="server">
                        <asp:ListItem>1.通過</asp:ListItem>
                        <asp:ListItem>2.不通過</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">送出時間</td>
                <td class="auto-style12">
                    <asp:Label ID="lblsendtime" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="btnsent" runat="server" Text="送出" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </asp:Panel>
</asp:Content>
