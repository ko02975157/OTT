<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MediaPlayer.aspx.cs" Inherits="person2.MediaPlayer" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
*{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}*,:after,:before{color:#000!important;text-shadow:none!important;background:0 0!important;-webkit-box-shadow:none!important;box-shadow:none!important}

*,
*:before,
*:after {
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
}

  * {
    color: #000 !important;
    text-shadow: none !important;
    background: transparent !important;
    box-shadow: none !important;
  }
  .h4,h4{font-size:18px}.h4,.h5,.h6,h4,h5,h6{margin-top:10px;margin-bottom:10px}.h1,.h2,.h3,.h4,.h5,.h6,h1,h2,h3,h4,h5,h6{font-family:inherit;font-weight:500;line-height:1.1;color:inherit}

h4,
.h4 {
  font-size: 18px;
}

h4,
h5,
h6 {
  margin-top: 10px;
  margin-bottom: 10px;
}

h1,
h2,
h3,
h4,
h5,
h6,
.h1,
.h2,
.h3,
.h4,
.h5,
.h6 {
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-weight: 500;
  line-height: 1.1;
}

button,select{text-transform:none}button{overflow:visible}

button,
select {
  text-transform: none;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
        </telerik:RadAjaxManager>
        <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
            <Scripts>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js">
                </asp:ScriptReference>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js">
                </asp:ScriptReference>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js">
                </asp:ScriptReference>
            </Scripts>
        </telerik:RadScriptManager>
        <div>
            <br />
           <telerik:RadMediaPlayer ID="RadMediaPlayer1" runat="server" HDSource="~/video/【Ziv】汁iv：其實我不太會玩蛇女！聊天室：開戳囉！艾希怎麼死的？碎念混分過譽綜藝台！20170628.mp4" Source="~/video/【Ziv】汁iv：其實我不太會玩蛇女！聊天室：開戳囉！艾希怎麼死的？碎念混分過譽綜藝台！20170628.mp4">
        </telerik:RadMediaPlayer>
        <br />
            <br />
            <br />
        &nbsp;
            <asp:Label ID="Label13" runat="server" Text="youtube URL : "></asp:Label>
        <telerik:RadTextBox ID="radtxtYouTubeURL" Runat="server" LabelWidth="64px" Resize="None" Text="https://www.youtube.com/watch?v=JNygHO63xas" Width="160px" OnTextChanged="radtxtYouTubeURL_TextChanged">
        </telerik:RadTextBox>
            <telerik:RadButton ID="RadButton1" runat="server" OnClick="RadButton1_Click" Text="播放">
            </telerik:RadButton>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="標題 : "></asp:Label>
            <asp:TextBox ID="txtTitle" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="上傳者 : "></asp:Label>
            <asp:TextBox ID="txtIDUploador" runat="server" Height="19px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="系名稱 : "></asp:Label>
            <asp:TextBox ID="txtDepartment" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="作者 : "></asp:Label>
            <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="確認上傳" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="清除資料" />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="height: 21px" Text="取消" />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
