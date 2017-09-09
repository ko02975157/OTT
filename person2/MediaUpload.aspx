<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MediaUpload.aspx.cs" Inherits="person2.MediaUpload" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
    <style type="text/css">
        .auto-style3 {
            z-index: 1;
            left: 98px;
            top: 624px;
            position: absolute;
            width: 78px;
            margin-bottom: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <telerik:RadMediaPlayer ID="RadMediaPlayer1" runat="server" Font-Size="Medium" Height="450px" RenderMode="Auto" Width="800px" AutoPlay="True">
    </telerik:RadMediaPlayer>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label6" runat="server" Text="YouTubeURL :"></asp:Label>
&nbsp;<telerik:RadTextBox ID="radtxtYouTubeURL" Runat="server" >
        </telerik:RadTextBox>
    <telerik:RadButton ID="RadButton2" runat="server" OnClick="RadButton1_Click" style="top: 17px; left: 3px" Text="播放" Height="16px">
    </telerik:RadButton>
    <p>
        <asp:Label ID="Label5" runat="server" Text="標題 :"></asp:Label>
        <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="上傳者 :"></asp:Label>
        <asp:Label ID="lblName" runat="server" Text="Label" CssClass="auto-style3"></asp:Label>
&nbsp;</p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="系名稱 :"></asp:Label>
        <asp:DropDownList ID="ddlDepartment" runat="server">
            <asp:ListItem>企業管理學系</asp:ListItem>
            <asp:ListItem>會計學系</asp:ListItem>
            <asp:ListItem>財務金融學系國際金融管理組</asp:ListItem>
            <asp:ListItem>財務金融學系財務金融組</asp:ListItem>
            <asp:ListItem>風險管理與保險學系</asp:ListItem>
            <asp:ListItem>國際企業學系國際企業經營組</asp:ListItem>
            <asp:ListItem>國際企業學系外貿行銷管理組</asp:ListItem>
            <asp:ListItem>新媒體暨傳播管理學系</asp:ListItem>
            <asp:ListItem>廣播電視學系</asp:ListItem>
            <asp:ListItem>廣告暨策略行銷學系</asp:ListItem>
            <asp:ListItem>新聞學系</asp:ListItem>
            <asp:ListItem>法律學系</asp:ListItem>
            <asp:ListItem>財金法律學系</asp:ListItem>
            <asp:ListItem>應用統計資訊學系</asp:ListItem>
            <asp:ListItem>經濟學系</asp:ListItem>
            <asp:ListItem>應用中國文學系</asp:ListItem>
            <asp:ListItem>應用英語學系</asp:ListItem>
            <asp:ListItem>應用日語學系</asp:ListItem>
            <asp:ListItem>華語文教學學系</asp:ListItem>
            <asp:ListItem>商業設計學系</asp:ListItem>
            <asp:ListItem>商品設計學系</asp:ListItem>
            <asp:ListItem>數位媒體設計學系</asp:ListItem>
            <asp:ListItem>建築學系</asp:ListItem>
            <asp:ListItem>都市規劃與防災學系</asp:ListItem>
            <asp:ListItem>觀光事業學系</asp:ListItem>
            <asp:ListItem>休閒遊憩管理學系</asp:ListItem>
            <asp:ListItem>餐旅管理學系</asp:ListItem>
            <asp:ListItem>犯罪防治系</asp:ListItem>
            <asp:ListItem>公共事務學系</asp:ListItem>
            <asp:ListItem>諮商與工商心理學系</asp:ListItem>
            <asp:ListItem>資訊管理學系</asp:ListItem>
            <asp:ListItem>資訊傳播工程學系</asp:ListItem>
            <asp:ListItem>資訊工程學系</asp:ListItem>
            <asp:ListItem>電子工程學系</asp:ListItem>
            <asp:ListItem>電腦與通訊工程學系</asp:ListItem>
            <asp:ListItem>醫療資訊與管理學系</asp:ListItem>
            <asp:ListItem>生物科技學系</asp:ListItem>
            <asp:ListItem>生物醫學工程學系</asp:ListItem>
        </asp:DropDownList>
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
    <p style="height: 35px">
        <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click1" Text="確定上傳" Width="80px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="清除" Height="30px" Width="80px" />
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
