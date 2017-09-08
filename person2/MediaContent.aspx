<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MediaContent.aspx.cs" Inherits="person2.MediaContent" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OTTConnectionString %>" SelectCommand="SELECT * FROM [MediaUpload]"></asp:SqlDataSource>
    <telerik:RadMediaPlayer ID="RadMediaPlayer1" runat="server" Height="350px">
    </telerik:RadMediaPlayer>
    <p style="height: 105px">
        <asp:ListBox ID="ListBox1" runat="server" Style="z-index: 1; position: absolute; height: 98px; right: 998px" DataSourceID="SqlDataSource2" DataTextField="MCID" DataValueField="MCID" AutoPostBack="True" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:OTTConnectionString %>' SelectCommand="SELECT * FROM [MediaUpload]"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;<asp:Label ID="Label1" runat="server" Text="標題 : "></asp:Label>
        <asp:TextBox ID="txtTitle" runat="server" OnTextChanged="txtTitle_TextChanged"></asp:TextBox>
    </p>
    <p>
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
        <asp:Label ID="Label13" runat="server" Text="媒體申請時狀態 : "></asp:Label>
        <asp:TextBox ID="txtOrgStatus" runat="server"></asp:TextBox>
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
