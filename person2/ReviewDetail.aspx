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
        .auto-style17 {
            width: 379px;
            height: 26px;
        }
        .auto-style18 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
                        <asp:Panel ID="Panel1" runat="server" Height="400px" Width="1355px">
                            <telerik:RadMediaPlayer ID="RadMediaPlayer1" runat="server" Culture="zh-TW" Height="350px" RenderMode="Mobile">
                            </telerik:RadMediaPlayer>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OTTConnectionString2 %>" SelectCommand="SELECT [MCTitle], [MCYouTubeURL], [MCCreatedDate] FROM [MediaUpload]"></asp:SqlDataSource>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:ListBox ID="lbMedia" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="MCTitle" DataValueField="MCTitle"></asp:ListBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </asp:Panel>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                        <br />
                        <br />
&nbsp;<div>
            <asp:Panel ID="Panel2" runat="server" CssClass="auto-style11" Height="468px">
                <table class="auto-style1" aria-disabled="False">
                    <tr>
                        <td class="auto-style15">批次代號</td>
                        <td class="auto-style16">
                            <asp:Label ID="lblbatch" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">影音代號</td>
                        <td class="auto-style16">
                            <asp:Label ID="lblmcid" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">初審人員代號</td>
                        <td class="auto-style16">
                            <asp:TextBox ID="txtpid" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">送出時間</td>
                        <td class="auto-style18">
                            <asp:Label ID="lbldsendtime" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">審查意見</td>
                        <td class="auto-style6">
                            <asp:TextBox ID="txtreview" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">審核結果</td>
                        <td class="auto-style16">
                            <asp:DropDownList ID="ddlresult" runat="server" >
                                <asp:ListItem>1.公開</asp:ListItem>
                                <asp:ListItem>2.校園內公開</asp:ListItem>
                                <asp:ListItem>3.限閱</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">youtube URL</td>
                        <td class="auto-style16">
                            <asp:Label ID="lblURL" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">建立時間</td>
                        <td class="auto-style16">
                            <asp:Label ID="lblrecievetime" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btncorrect" runat="server" Text="確認" OnClick="btncorrect_Click" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
                        </div>
</asp:Content>
