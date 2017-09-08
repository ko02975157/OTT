<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PSuperChange.aspx.cs" Inherits="person2.PSuperChange" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
    <style type="text/css">
        .auto-style3 {
            text-decoration: underline;
            margin-top: 0px;
            margin-bottom: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;</p>
    <div class="auto-style2">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourcePSuper" Height="243px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="906px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CssClass="auto-style3">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="PID" HeaderText="PID" InsertVisible="False" ReadOnly="True" SortExpression="PID" />
                <asp:BoundField DataField="PName" HeaderText="PName" SortExpression="PName" />
                <asp:BoundField DataField="PRoleType" HeaderText="PRoleType" SortExpression="PRoleType" />
                <asp:TemplateField HeaderText="PSuper" SortExpression="PSuper">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourcePSuper" DataTextField="PSuperDescription" DataValueField="PSuper" SelectedValue='<%# Bind("PSuper", "{0}") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourcePSuper" runat="server" ConnectionString="<%$ ConnectionStrings:OTTConnectionString %>" SelectCommand="SELECT * FROM [PSuperType]" OnSelecting="SqlDataSourcePSuper_Selecting"></asp:SqlDataSource>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("PSuper") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
    </div>
    <asp:SqlDataSource ID="SqlDataSourcePSuper" runat="server" ConnectionString="<%$ ConnectionStrings:OTTConnectionString %>" SelectCommand="SELECT [PID], [PName], [PRoleType], [PSuper] FROM [Person] WHERE ([PSuper] &lt;&gt; @PSuper)" UpdateCommand="UPDATE Person SET PSuper = @PSuper WHERE (PName = @PName)">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="PSuper" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <p>
    </p>
    <p>
        &nbsp;</p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
