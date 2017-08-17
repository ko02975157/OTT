<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="person2.registration" %>

    <asp:Content ID="ContentHeader" ContentPlaceHolderID="HeadPlaceHolder" runat="server">

        <style type="text/css">
        .auto-style2 {
            width: 243px;
            text-align: center;
            background-color: #CCCCCC;
            padding: 16px 4px 16px 4px;
        }

        .auto-style7 {
            color: #000000;
            font-size: x-large;
        }
        .auto-style8 {
            width: 266px;
            text-align: center;
            background-color: #FFFFFF;
            padding: 16px 4px 16px 4px;
        }
        
        .auto-style10 {
            width: 266px;
            text-align: center;
            background-color: #FFFFFF;
            padding: 16px 4px 16px 4px;
            height: 74px;
        }
        .auto-style11 {
            width: 243px;
            text-align: center;
            background-color: #CCCCCC;
            padding: 16px 4px 16px 4px;
            height: 74px;
        }
        .auto-style12 {
                height: 74px;
                width: 385px;
            }
        .auto-style13 {
        width: 375px;
    }
        .auto-style14 {
            height: 74px;
            width: 375px;
        }
            .auto-style15 {
                font-size: x-large;
            }
    .auto-style16 {
        width: 4px;
    }
    .auto-style17 {
        height: 74px;
        width: 4px;
    }
    .auto-style18 {
        width: 266px;
        text-align: center;
        background-color: #FFFFFF;
        padding: 16px 4px 16px 4px;
        height: 52px;
    }
    .auto-style19 {
        width: 243px;
        text-align: center;
        background-color: #CCCCCC;
        padding: 16px 4px 16px 4px;
        height: 52px;
    }
    .auto-style20 {
        width: 4px;
        height: 52px;
    }
    .auto-style21 {
        width: 375px;
        height: 52px;
    }
    .auto-style22 {
        height: 52px;
                width: 385px;
            }
    .auto-style23 {
        width: 1011px;
        height: 35px;
        left: 748px;
        top: 10px;
        margin-bottom: 1px;
    }
            .auto-style24 {
                width: 385px;
            }
    </style>

    </asp:Content>
    <asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div>
            <table class="auto-style23">
                <tr>
                    <td class="auto-style18">
                        </td>
                    <td class="auto-style19">
                    </td>
                    <td class="auto-style20">
                        </td>
                    <td class="auto-style21">
                        </td>
                    <td class="auto-style22">
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="姓名" CssClass="auto-style7"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style13">
                        &nbsp;</td>
                    <td class="auto-style24">
                        <asp:TextBox ID="txtName" runat="server" Font-Size="X-Large"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="學生/教職員 編號" CssClass="auto-style7"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style13">
                        &nbsp;</td>
                    <td class="auto-style24">
                        <asp:TextBox ID="txtCode" runat="server" Font-Size="X-Large"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        </td>
                    <td class="auto-style11">
                        <asp:Label ID="Label3" runat="server" Text="角色" CssClass="auto-style7"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        </td>
                    <td class="auto-style14">
                        </td>
                    <td class="auto-style12">
                        <asp:DropDownList ID="ddlroletype" runat="server" DataSourceID="SqlDataSourceRoleType" DataTextField="roletypeDescription" DataValueField="roletype" Font-Size="X-Large">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceRoleType" runat="server" ConnectionString="<%$ ConnectionStrings:OTTConnectionString %>" SelectCommand="SELECT [roletype], [roletypeDescription] FROM [RoleType]" ></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="e-mail" CssClass="auto-style7"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style13">
                        &nbsp;</td>
                    <td class="auto-style24">
                        <asp:TextBox ID="txtEmail" runat="server" Width="369px" Font-Size="X-Large" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Text="帳號" CssClass="auto-style7"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style13">
                        &nbsp;</td>
                    <td class="auto-style24">
                        <asp:TextBox ID="txtUsername" runat="server" Font-Size="X-Large"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label6" runat="server" Text="密碼" CssClass="auto-style7"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style13">
                        &nbsp;</td>
                    <td class="auto-style24">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Font-Size="X-Large"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" Text="性別" CssClass="auto-style7"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style13">
                        &nbsp;</td>
                    <td class="auto-style24">
                        <asp:RadioButtonList ID="rblSex" runat="server" Height="16px" Width="162px" Font-Size="X-Large" RepeatDirection="Horizontal">
                            <asp:ListItem Value="1">男</asp:ListItem>
                            <asp:ListItem Value="2">女</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label8" runat="server" Text="國家" CssClass="auto-style7"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style13">
                        &nbsp;</td>
                    <td class="auto-style24">
                        <asp:DropDownList ID="ddlCountry" runat="server" DataSourceID="SqlDataSourceCountry" DataTextField="countryname" DataValueField="country" Font-Size="X-Large" Height="36px" Width="167px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceCountry" runat="server" ConnectionString="<%$ ConnectionStrings:OTTConnectionString %>" SelectCommand="SELECT [country], [countryname] FROM [Country]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label9" runat="server" Text="生日" CssClass="auto-style7"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style13">
                        &nbsp;</td>
                    <td class="auto-style24">
                        <asp:DropDownList ID="ddlYear" runat="server" Height="36px" Width="114px" Font-Size="Large">
                            <asp:ListItem>1950</asp:ListItem>
                            <asp:ListItem>1951</asp:ListItem>
                            <asp:ListItem>1952</asp:ListItem>
                            <asp:ListItem>1953</asp:ListItem>
                            <asp:ListItem>1954</asp:ListItem>
                            <asp:ListItem>1955</asp:ListItem>
                            <asp:ListItem>1956</asp:ListItem>
                            <asp:ListItem>1957</asp:ListItem>
                            <asp:ListItem>1958</asp:ListItem>
                            <asp:ListItem>1959</asp:ListItem>   
                            <asp:ListItem>1960</asp:ListItem>
                            <asp:ListItem>1961</asp:ListItem>
                            <asp:ListItem>1962</asp:ListItem>
                            <asp:ListItem>1963</asp:ListItem>
                            <asp:ListItem>1964</asp:ListItem>
                            <asp:ListItem>1965</asp:ListItem>
                            <asp:ListItem>1966</asp:ListItem>
                            <asp:ListItem>1967</asp:ListItem>
                            <asp:ListItem>1968</asp:ListItem>
                            <asp:ListItem>1969</asp:ListItem>
                            <asp:ListItem>1970</asp:ListItem>
                            <asp:ListItem>1971</asp:ListItem>
                            <asp:ListItem>1972</asp:ListItem>
                            <asp:ListItem>1973</asp:ListItem>
                            <asp:ListItem>1974</asp:ListItem>
                            <asp:ListItem>1975</asp:ListItem>
                            <asp:ListItem>1976</asp:ListItem>
                            <asp:ListItem>1977</asp:ListItem>
                            <asp:ListItem>1978</asp:ListItem>
                            <asp:ListItem>1979</asp:ListItem>
                            <asp:ListItem>1980</asp:ListItem>
                            <asp:ListItem>1981</asp:ListItem>
                            <asp:ListItem>1982</asp:ListItem>
                            <asp:ListItem>1983</asp:ListItem>
                            <asp:ListItem>1984</asp:ListItem>
                            <asp:ListItem>1985</asp:ListItem>
                            <asp:ListItem>1986</asp:ListItem>
                            <asp:ListItem>1987</asp:ListItem>
                            <asp:ListItem>1988</asp:ListItem>
                            <asp:ListItem>1989</asp:ListItem>
                            <asp:ListItem>1990</asp:ListItem>
                            <asp:ListItem>1991</asp:ListItem>
                            <asp:ListItem>1992</asp:ListItem>
                            <asp:ListItem>1993</asp:ListItem>
                            <asp:ListItem>1994</asp:ListItem>
                            <asp:ListItem>1995</asp:ListItem>
                            <asp:ListItem>1996</asp:ListItem>
                            <asp:ListItem>1997</asp:ListItem>
                            <asp:ListItem>1998</asp:ListItem>
                            <asp:ListItem>1999</asp:ListItem>
                            <asp:ListItem>2000</asp:ListItem>
                            <asp:ListItem>2001</asp:ListItem>
                            <asp:ListItem>2002</asp:ListItem>
                            <asp:ListItem>2003</asp:ListItem>
                            <asp:ListItem>2004</asp:ListItem>
                            <asp:ListItem>2005</asp:ListItem>
                           

                        </asp:DropDownList>
                        <span class="auto-style15">年<asp:DropDownList ID="ddlMonth" runat="server" Font-Size="Large">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                        </asp:DropDownList>
                        月<asp:DropDownList ID="ddlDay" runat="server" Font-Size="Large">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>
                            <asp:ListItem>23</asp:ListItem>
                            <asp:ListItem>24</asp:ListItem>
                            <asp:ListItem>25</asp:ListItem>
                            <asp:ListItem>26</asp:ListItem>
                            <asp:ListItem>27</asp:ListItem>
                            <asp:ListItem>28</asp:ListItem>
                            <asp:ListItem>29</asp:ListItem>
                            <asp:ListItem>30</asp:ListItem>
                            <asp:ListItem>31</asp:ListItem>
                        </asp:DropDownList>
                        日</span></td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label10" runat="server" Text="教育程度" CssClass="auto-style7"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style13">
                        &nbsp;</td>
                    <td class="auto-style24">
                        <asp:DropDownList ID="ddlEducation" runat="server" DataSourceID="SqlDataSourceEducation" DataTextField="edu" DataValueField="edu" Font-Size="X-Large" Height="36px" Width="167px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceEducation" runat="server" ConnectionString="<%$ ConnectionStrings:OTTConnectionString %>" SelectCommand="SELECT [edu] FROM [Education]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label11" runat="server" Text="居住縣市" CssClass="auto-style7"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style13">
                        &nbsp;</td>
                    <td class="auto-style24">
                        <asp:DropDownList ID="ddlRegion" runat="server" DataSourceID="SqlDataSourceRegion" DataTextField="rei" DataValueField="rei" Font-Size="X-Large" Height="28px" Width="165px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceRegion" runat="server" ConnectionString="<%$ ConnectionStrings:OTTConnectionString %>" SelectCommand="SELECT [rei] FROM [Reig]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                    </td>
                    <td class="auto-style11">
                        <asp:Label ID="Label12" runat="server" Text="職業" CssClass="auto-style7" Font-Size="X-Large"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style14">
                        &nbsp;</td>
                    <td class="auto-style12">
                        <asp:DropDownList ID="ddlCareer" runat="server" DataSourceID="SqlDataSourceCareer" DataTextField="careername" DataValueField="career" Font-Size="X-Large" Height="28px" Width="165px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceCareer" runat="server" ConnectionString="<%$ ConnectionStrings:OTTConnectionString %>" SelectCommand="SELECT [career], [careername] FROM [Career]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnRegistration" runat="server" OnClick="btnRegistration_Click" Text="註冊" Width="190px" CssClass="auto-style9" Font-Size="X-Large" Height="49px" />
   </asp:Content>
