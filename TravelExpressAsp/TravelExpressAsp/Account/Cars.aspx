<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cars.aspx.cs" Inherits="TravelExpressAsp.Account.Cars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
</asp:GridView>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="AddCar" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:travelexpressConnectionString2 %>" DeleteCommand="DELETE FROM [car] WHERE [id_car] = ? AND [id_user] = ? AND [brand] = ? AND [model] = ? AND [type] = ? AND [places] = ? AND [year] = ? AND [registration] = ?" InsertCommand="INSERT INTO [car] ([id_car], [id_user], [brand], [model], [type], [places], [year], [registration]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:travelexpressConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [car] WHERE ([id_user] = ?)" UpdateCommand="UPDATE [car] SET [id_user] = ?, [brand] = ?, [model] = ?, [type] = ?, [places] = ?, [year] = ?, [registration] = ? WHERE [id_car] = ? AND [id_user] = ? AND [brand] = ? AND [model] = ? AND [type] = ? AND [places] = ? AND [year] = ? AND [registration] = ?">
        <DeleteParameters>
            <asp:Parameter Name="original_id_car" Type="Int32" />
            <asp:Parameter Name="original_id_user" Type="Int32" />
            <asp:Parameter Name="original_brand" Type="String" />
            <asp:Parameter Name="original_model" Type="String" />
            <asp:Parameter Name="original_type" Type="String" />
            <asp:Parameter Name="original_places" Type="Int32" />
            <asp:Parameter Name="original_year" Type="Int32" />
            <asp:Parameter Name="original_registration" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id_car" Type="Int32" />
            <asp:Parameter Name="id_user" Type="Int32" />
            <asp:Parameter Name="brand" Type="String" />
            <asp:Parameter Name="model" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="places" Type="Int32" />
            <asp:Parameter Name="year" Type="Int32" />
            <asp:Parameter Name="registration" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter DefaultValue="1" Name="id_user" SessionField="idu" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="id_user" Type="Int32" />
            <asp:Parameter Name="brand" Type="String" />
            <asp:Parameter Name="model" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="places" Type="Int32" />
            <asp:Parameter Name="year" Type="Int32" />
            <asp:Parameter Name="registration" Type="String" />
            <asp:Parameter Name="original_id_car" Type="Int32" />
            <asp:Parameter Name="original_id_user" Type="Int32" />
            <asp:Parameter Name="original_brand" Type="String" />
            <asp:Parameter Name="original_model" Type="String" />
            <asp:Parameter Name="original_type" Type="String" />
            <asp:Parameter Name="original_places" Type="Int32" />
            <asp:Parameter Name="original_year" Type="Int32" />
            <asp:Parameter Name="original_registration" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
