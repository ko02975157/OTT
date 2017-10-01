<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReviewWait.aspx.cs" Inherits="person2.re" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="待審清單"></asp:Label>
    </p>
    <p>
        <div class="auto-style2">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="dsReviewDetailNotReview" GridLines="Vertical" ForeColor="Black">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="pid" HeaderText="pid" SortExpression="pid" Visible="False" />
                <asp:BoundField DataField="PName" HeaderText="上傳者名稱" SortExpression="PName" >
                <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="MCTitle" HeaderText="影片名稱" SortExpression="MCTitle" />
                <asp:BoundField DataField="MCYouTubeURL" HeaderText="YouTubeURL" SortExpression="MCYouTubeURL" />
                <asp:BoundField DataField="mcid" HeaderText="MCID" SortExpression="mcid" />
                <asp:BoundField DataField="dreview" HeaderText="審核意見" SortExpression="dreview" />
                <asp:BoundField DataField="dresult" HeaderText="審核結果" SortExpression="dresult" />
                <asp:BoundField DataField="dreceiveTime" HeaderText="上傳時間" SortExpression="dreceiveTime" />
                <asp:BoundField DataField="PDepartment" HeaderText="系" SortExpression="PDepartment" />
                <asp:BoundField DataField="PCollege" HeaderText="院" SortExpression="PCollege" />
                <asp:BoundField DataField="MCOrgStatus" HeaderText="影片申請狀態" SortExpression="MCOrgStatus" />
                <asp:BoundField DataField="MCRestrictPW" HeaderText="限閱密碼" SortExpression="MCRestrictPW" />
                <asp:BoundField DataField="UploaderPID" HeaderText="UploaderPID" SortExpression="UploaderPID" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        </div>
        <asp:SqlDataSource ID="dsReviewDetailNotReview" runat="server" ConnectionString="<%$ ConnectionStrings:OTTConnectionString %>" SelectCommand="SELECT ReviewDetail.pid, Person.PName, MediaUpload.MCTitle, MediaUpload.MCYouTubeURL, ReviewDetail.mcid, ReviewDetail.dreview, ReviewDetail.dresult, ReviewDetail.dreceiveTime, Person.PDepartment, Person.PCollege, MediaUpload.MCOrgStatus, MediaUpload.MCRestrictPW, MediaUpload.PID AS UploaderPID FROM ReviewDetail INNER JOIN MediaUpload ON ReviewDetail.mcid = MediaUpload.MCID INNER JOIN Person ON MediaUpload.PID = Person.PID WHERE (ReviewDetail.dsendTime IS NULL) AND (ReviewDetail.pid = @pid)">
            <SelectParameters>
                <asp:SessionParameter Name="pid" SessionField="PID" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="已審清單"></asp:Label>
    </p>
    <p>
        <div class="auto-style2">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="dsReviewDetailReview" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="pid" HeaderText="pid" SortExpression="pid" Visible="False" />
                    <asp:BoundField DataField="PName" HeaderText="上傳者名稱" SortExpression="PName" />
                    <asp:BoundField DataField="MCTitle" HeaderText="影片名稱" SortExpression="MCTitle" />
                    <asp:BoundField DataField="MCYouTubeURL" HeaderText="YouTubeURL" SortExpression="MCYouTubeURL" />
                    <asp:BoundField DataField="mcid" HeaderText="MCID" SortExpression="mcid" />
                    <asp:BoundField DataField="dreview" HeaderText="審核意見" SortExpression="dreview" />
                    <asp:BoundField DataField="dresult" HeaderText="審核結果" SortExpression="dresult" />
                    <asp:BoundField DataField="dreceiveTime" HeaderText="上傳時間" SortExpression="dreceiveTime" />
                    <asp:BoundField DataField="PDepartment" HeaderText="系" SortExpression="PDepartment" />
                    <asp:BoundField DataField="PCollege" HeaderText="院" SortExpression="PCollege" />
                    <asp:BoundField DataField="MCOrgStatus" HeaderText="影片審核狀態" SortExpression="MCOrgStatus" />
                    <asp:BoundField DataField="MCRestrictPW" HeaderText="限閱密碼" SortExpression="MCRestrictPW" />
                    <asp:BoundField DataField="UploaderPID" HeaderText="UploaderPID" SortExpression="UploaderPID" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="dsReviewDetailReview" runat="server" ConnectionString="<%$ ConnectionStrings:OTTConnectionString %>" SelectCommand="SELECT ReviewDetail.pid, Person.PName, MediaUpload.MCTitle, MediaUpload.MCYouTubeURL, ReviewDetail.mcid, ReviewDetail.dreview, ReviewDetail.dresult, ReviewDetail.dreceiveTime, Person.PDepartment, Person.PCollege, MediaUpload.MCOrgStatus, MediaUpload.MCRestrictPW, MediaUpload.PID AS UploaderPID FROM ReviewDetail INNER JOIN MediaUpload ON ReviewDetail.mcid = MediaUpload.MCID INNER JOIN Person ON MediaUpload.PID = Person.PID WHERE (ReviewDetail.dsendTime IS NOT NULL) AND (ReviewDetail.pid = @pid)">
            <SelectParameters>
                <asp:SessionParameter Name="pid" SessionField="PID" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
