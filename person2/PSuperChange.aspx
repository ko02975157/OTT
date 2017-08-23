<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PSuperChange.aspx.cs" Inherits="person2.PSuperChange" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;</p>
    <div class="auto-style1">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourcePSuper" Height="182px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="805px">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="PID" HeaderText="PID" InsertVisible="False" ReadOnly="True" SortExpression="PID" />
                <asp:BoundField DataField="PName" HeaderText="PName" SortExpression="PName" />
                <asp:BoundField DataField="PRoleType" HeaderText="PRoleType" SortExpression="PRoleType" />
                <asp:TemplateField HeaderText="PSuper" SortExpression="PSuper">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourcePSuper" DataTextField="PSuperDescription" DataValueField="PSuper" SelectedValue='<%# Bind("PSuper", "{0}") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourcePSuper" runat="server" ConnectionString="<%$ ConnectionStrings:OTTConnectionString %>" SelectCommand="SELECT * FROM [PSuperType]"></asp:SqlDataSource>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("PSuper") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    <asp:SqlDataSource ID="SqlDataSourcePSuper" runat="server" ConnectionString="<%$ ConnectionStrings:OTTConnectionString %>" SelectCommand="SELECT [PID], [PName], [PRoleType], [PSuper] FROM [Person]" UpdateCommand="UPDATE Person SET PSuper=@PSuper WHERE (PName= @PName)"></asp:SqlDataSource>
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
