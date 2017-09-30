<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReviewAll.aspx.cs" Inherits="person2.ReviewAll" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
    <style type="text/css">


        .auto-style2 {
            width: 39%;
        }
        .auto-style23 {
            width: 459px;
            height: 30px;
        }
        .auto-style12 {
            width: 448px;
            height: 30px;
        }
        .auto-style4 {
            width: 459px;
            height: 24px;
        }
        .auto-style11 {
            width: 448px;
            height: 24px;
        }
        .auto-style13 {
            width: 100%;
        }
        .auto-style14 {
            width: 193px;
        }
        .auto-style18 {
            width: 287px;
        }
        .auto-style19 {
            width: 274px;
        }
        .auto-style20 {
            width: 191px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="341px">
        <telerik:RadMediaPlayer ID="RadMediaPlayer1" runat="server">
        </telerik:RadMediaPlayer>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OTTConnectionString2 %>" SelectCommand="SELECT [MCTitle], [MCYouTubeURL], [MCCreatedDate] FROM [MediaUpload]"></asp:SqlDataSource>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Height="270px">
        <table class="auto-style2">
            <tr>
                <td class="auto-style4">院長代號</td>
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
                <td class="auto-style23">最終審核結果</td>
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
        <asp:Button ID="btncorrect" runat="server" Text="確認" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnreturn" runat="server" Text="退回重審" />
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" Height="319px">
        <table class="auto-style2">
            <tr>
                <td class="auto-style4">系主任代號</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtPID0" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">審核意見</td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtreview0" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">審核結果</td>
                <td class="auto-style12">
                    <asp:DropDownList ID="ddlresult0" runat="server">
                        <asp:ListItem>1.通過</asp:ListItem>
                        <asp:ListItem>2.不通過</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <table class="auto-style13">
            <tr>
                <td class="auto-style14">初審人員代號</td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtPID1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style14">初審人員代號</td>
                <td class="auto-style19">
                    <asp:TextBox ID="txtPID2" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style20">初審人員代號</td>
                <td>
                    <asp:TextBox ID="txtPID3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">審查意見</td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtreview1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style14">審查意見</td>
                <td class="auto-style19">
                    <asp:TextBox ID="txtreview2" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style20">審查意見</td>
                <td>
                    <asp:TextBox ID="txtreview3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">審查結果</td>
                <td class="auto-style18">
                    <asp:DropDownList ID="ddlresult1" runat="server">
                        <asp:ListItem>1.通過</asp:ListItem>
                        <asp:ListItem>2.不通過</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style14">審查結果</td>
                <td class="auto-style19">
                    <asp:DropDownList ID="ddlresult2" runat="server">
                        <asp:ListItem>1.通過</asp:ListItem>
                        <asp:ListItem>2.不通過</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style20">審查結果</td>
                <td>
                    <asp:DropDownList ID="ddlresult3" runat="server">
                        <asp:ListItem>1.通過</asp:ListItem>
                        <asp:ListItem>2.不通過</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
