<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MediaContent.aspx.cs" Inherits="person2.MediaContent" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
    <style type="text/css">
        .auto-style3 {
            z-index: 1;
            position: absolute;
            height: 98px;
            right: 250px;
            top: 508px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <telerik:RadMediaPlayer ID="RadMediaPlayer1" runat="server" Height="350px">
    </telerik:RadMediaPlayer>
    <div>

        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:OTTConnectionString %>' SelectCommand="SELECT * FROM [MediaUpload] WHERE ([PName] = @PName)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="" Name="PName" SessionField="PName" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:ListBox ID="lbMedia" runat="server" DataSourceID="SqlDataSource2" DataTextField="MCTitle" DataValueField="MCID" AutoPostBack="True" CssClass="auto-style3" OnSelectedIndexChanged="lbMedia_SelectedIndexChanged" > </asp:ListBox> 

    </div>
   <div>
    <p>
        &nbsp;<asp:Label ID="Label1" runat="server" Text="標題 : "></asp:Label>
        <asp:Label ID="lblTitle" runat="server" Text="lblTitle"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="上傳時間 : "></asp:Label>
        <asp:Label ID="lblCreatedDate" runat="server" Text="lblCreatedDate"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="上傳者 : "></asp:Label>
        <asp:Label ID="lblIDUploador" runat="server" Text="lblIDUploador"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label5" runat="server" Text="系名稱 : "></asp:Label>
        <asp:Label ID="lblDepartment" runat="server" Text="lblDepartment"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label13" runat="server" Text="媒體申請時狀態 : "></asp:Label>
        <asp:Label ID="lblOrgStatus" runat="server" Text="lblOrgStatus"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label10" runat="server" Text="審查狀態 :"></asp:Label>
        <asp:Label ID="lblApprovalStatus" runat="server" Text="lblApprovalStatus"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label11" runat="server" Text="媒體審核後狀態 : "></asp:Label>
        <asp:TextBox ID="txtStatus" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label12" runat="server" Text="限閱時須輸入的密碼 : "></asp:Label>
        <asp:Label ID="lblRestrictPW" runat="server" Text="lblRestrictPW"></asp:Label>
    </p>
    </div>
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
