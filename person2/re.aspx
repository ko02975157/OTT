<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="re.aspx.cs" Inherits="person2.re" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="待審清單"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="dsReviewDetailNotReview" GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="pid" HeaderText="pid" SortExpression="pid" Visible="False" />
                <asp:BoundField DataField="PName" HeaderText="上傳者姓名" SortExpression="PName" />
                <asp:BoundField DataField="MCTitle" HeaderText="MCTitle" SortExpression="MCTitle" />
                <asp:BoundField DataField="MCYouTubeURL" HeaderText="MCYouTubeURL" SortExpression="MCYouTubeURL" />
                <asp:BoundField DataField="mcid" HeaderText="mcid" SortExpression="mcid" />
                <asp:BoundField DataField="dreview" HeaderText="dreview" SortExpression="dreview" />
                <asp:BoundField DataField="dresult" HeaderText="dresult" SortExpression="dresult" />
                <asp:BoundField DataField="dreceiveTime" HeaderText="dreceiveTime" SortExpression="dreceiveTime" />
                <asp:BoundField DataField="PDepartment" HeaderText="PDepartment" SortExpression="PDepartment" />
                <asp:BoundField DataField="PCollege" HeaderText="PCollege" SortExpression="PCollege" />
                <asp:BoundField DataField="MCOrgStatus" HeaderText="MCOrgStatus" SortExpression="MCOrgStatus" />
                <asp:BoundField DataField="MCRestrictPW" HeaderText="MCRestrictPW" SortExpression="MCRestrictPW" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:SqlDataSource ID="dsReviewDetailNotReview" runat="server" ConnectionString="<%$ ConnectionStrings:OTTConnectionString %>" SelectCommand="SELECT ReviewDetail.pid, Person.PName, MediaUpload.MCTitle, MediaUpload.MCYouTubeURL, ReviewDetail.mcid, ReviewDetail.dreview, ReviewDetail.dresult, ReviewDetail.dreceiveTime, Person.PDepartment, Person.PCollege, MediaUpload.MCOrgStatus, MediaUpload.MCRestrictPW, MediaUpload.PID AS UploaderPID FROM ReviewDetail INNER JOIN MediaUpload ON ReviewDetail.mcid = MediaUpload.MCID INNER JOIN Person ON MediaUpload.PID = Person.PID WHERE (ReviewDetail.dsendTime IS NULL) AND (ReviewDetail.pid = @pid)">
            <SelectParameters>
                <asp:SessionParameter Name="pid" SessionField="PID" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
