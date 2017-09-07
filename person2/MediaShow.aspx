<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MediaShow.aspx.cs" Inherits="person2.MediaShow" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;&nbsp; <telerik:RadMediaPlayer ID="RadMediaPlayer1" runat="server" Culture="zh-TW">
        <Sources>
            <telerik:MediaPlayerSource IsHD="False" MimeType="" Path="" />
        </Sources>
<PlaylistSettings Mode="Scrollbar" ButtonsTrigger="Hover"></PlaylistSettings>
    </telerik:RadMediaPlayer>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="影片資訊" />
    </p>
    <telerik:RadMediaPlayer ID="RadMediaPlayer2" runat="server">
    </telerik:RadMediaPlayer>
    <p>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="影片資訊" />
    </p>
    <telerik:RadMediaPlayer ID="RadMediaPlayer3" runat="server">
    </telerik:RadMediaPlayer>
    <p>
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="影片資訊" />
    </p>
    <telerik:RadMediaPlayer ID="RadMediaPlayer4" runat="server">
    </telerik:RadMediaPlayer>
    <p>
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="影片資訊" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
