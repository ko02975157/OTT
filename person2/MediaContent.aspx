<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MediaContent.aspx.cs" Inherits="person2.MediaContent" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <telerik:RadMediaPlayer ID="RadMediaPlayer1" runat="server">
    </telerik:RadMediaPlayer>
    <p>
        &nbsp;<asp:Label ID="Label1" runat="server" Text="標題 : "></asp:Label>
        <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
        </p>
    <p>
        <br />
        <asp:Label ID="Label2" runat="server" Text="上傳時間 : "></asp:Label>
        <asp:TextBox ID="txtCreatedDate" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="瀏覽人次 : "></asp:Label>
        <asp:TextBox ID="txtVisitorCount" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="上傳者 : "></asp:Label>
        <asp:TextBox ID="txtIDUploador" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label5" runat="server" Text="系名稱 : "></asp:Label>
        <asp:TextBox ID="txtDepartment" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label6" runat="server" Text="作者 : "></asp:Label>
        <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label7" runat="server" Text="檔名 : "></asp:Label>
        <asp:TextBox ID="txtFileName" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label8" runat="server" Text="檔案位置 : "></asp:Label>
        <asp:TextBox ID="txtFilePath" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label9" runat="server" Text="youtube URL : "></asp:Label>
        <asp:TextBox ID="txtYouTubeURL" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label10" runat="server" Text="審查通過 :"></asp:Label>
        <asp:TextBox ID="txtIsCheck" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label11" runat="server" Text="媒體審核後狀態 : "></asp:Label>
        <asp:TextBox ID="txtStatus" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label12" runat="server" Text="限閱時須輸入的密碼 : "></asp:Label>
        <asp:TextBox ID="txtRestrictPW" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label13" runat="server" Text="媒體申請時狀態 : "></asp:Label>
        <asp:TextBox ID="txtOrgStatus" runat="server"></asp:TextBox>
    </p>
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
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
