<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MediaUpload.aspx.cs" Inherits="person2.MediaUpload" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
    <style type="text/css">
        .auto-style5 {
            height: 252px;
        }
        .auto-style7 {
        height: 35px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <telerik:RadMediaPlayer ID="RadMediaPlayer1" runat="server" Font-Size="Medium" Height="450px" RenderMode="Auto" Width="800px" AutoPlay="True">
    </telerik:RadMediaPlayer>
    <p>
        &nbsp;</p>
    <p>
<div  class="auto-style5">
     <p>    
    <asp:Label ID="Label6" runat="server" Text="YouTubeURL :"></asp:Label>
&nbsp;<telerik:RadTextBox ID="radtxtYouTubeURL" Runat="server" >
        </telerik:RadTextBox>
    <telerik:RadButton ID="RadButton2" runat="server" OnClick="RadButton1_Click" Text="播放" Height="22px">
    </telerik:RadButton>
      </p>
    <p>
        <asp:Label ID="Label5" runat="server" Text="標題 :"></asp:Label>
        <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="上傳者 :"></asp:Label>
        <asp:Label ID="lblName" runat="server" Text="Label" ></asp:Label>
&nbsp;</p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="系名稱 :"></asp:Label>
        <asp:Label ID="lblDepartment" runat="server" Text="lblDepartment"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="媒體申請時狀態 :"></asp:Label>
        <asp:DropDownList ID="ddlOrgStatus" runat="server">
            <asp:ListItem>公開</asp:ListItem>
            <asp:ListItem>非公開</asp:ListItem>
            <asp:ListItem>限閱</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="限閱時須輸入的密碼 :"></asp:Label>
        <asp:TextBox ID="txtRestrictPW" runat="server"></asp:TextBox>
    </p>
    <p class="auto-style7">
        <asp:Button ID="btnMediaUpload" runat="server" Height="30px" OnClick="btnMediaUpload_Click1" Text="上傳影片" Width="80px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnClean" runat="server" Text="清除" Height="30px" Width="80px" OnClick="btnClean_Click1" />
    </p>
</div>
</p>
    <p>
        &nbsp;</p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
