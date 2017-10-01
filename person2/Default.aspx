<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="person2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtsearch" runat="server" style="z-index: 1; left: 204px; top: 215px; position: absolute; height: 20px; width: 150px">搜尋</asp:TextBox>
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/帶燈放大鏡_icon.png" OnClick="ImageButton1_Click" style="z-index: 1; left: 366px; top: 215px; position: absolute; height: 20px" />
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 10px; top: 263px; position: absolute; height: 24px; width: 92px" Text="運動"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Label" CssClass="auto-style5"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
        <br />
        <table class="auto-style2">
            <tr>
                <td class="auto-style3"><telerik:RadMediaPlayer ID="RadMediaPlayer1" runat="server" Font-Size="Medium" Height="180px" RenderMode="Auto" Width="280px" AutoPlay="True">
    </telerik:RadMediaPlayer>
                </td>
                <td><telerik:RadMediaPlayer ID="RadMediaPlayer2" runat="server" Font-Size="Medium" Height="180px" RenderMode="Auto" Width="280px" AutoPlay="True">
    </telerik:RadMediaPlayer>
                </td>
                <td class="auto-style3"><telerik:RadMediaPlayer ID="RadMediaPlayer3" runat="server" Font-Size="Medium" Height="180px" RenderMode="Auto" Width="280px" AutoPlay="True">
    </telerik:RadMediaPlayer>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td><telerik:RadMediaPlayer ID="RadMediaPlayer4" runat="server" Font-Size="Medium" Height="180px" RenderMode="Auto" Width="280px" AutoPlay="True">
    </telerik:RadMediaPlayer>
                </td>
            </tr>
        </table>
    </div>

    </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadPlaceHolder">
    <style type="text/css">
        .jumbotron {
            height: 2037px;
        }
       
        .auto-style2 {
            width: 280px;
            height: 180px;
        }
        
        .auto-style3 {
            width: 300px;
        }
        .auto-style4 {
            width: 4px;
        }
        .auto-style5 {
            z-index: 1;
            left: 15px;
            top: 558px;
            position: absolute;
            height: 15px;
        }
    </style>
</asp:Content>

