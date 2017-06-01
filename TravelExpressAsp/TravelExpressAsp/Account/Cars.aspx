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
            <asp:SessionParameter DefaultValue="0" Name="id_user" SessionField="idu" Type="Int32" />
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

    <div id="ShowAddCar" runat="server" visible="false">
    <br />
        <table>
            <tr>
                <td>
                     Brand :
                </td>
                <td>
                    <asp:TextBox ID="Marque" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Model :
                </td>
                <td>
                    <asp:TextBox ID="Model" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Type :
                </td>
                <td>
                    <asp:DropDownList ID="ListeTypeCar" runat="server">
                        <asp:ListItem Text="Citadine" Value="Citadine" />
                        <asp:ListItem Text="Berline" Value="Berline" />
                        <asp:ListItem Text="4x4" Value="4x4" />
                        <asp:ListItem Text="SUV/Famillial" Value="SUV/Famillial" />
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Places :
                </td>
                <td>
                    <asp:TextBox ID="Places" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Year :
                </td>
                <td>
                    <asp:TextBox ID="Annee" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Registration : 
                </td>
                <td>
                    <asp:TextBox ID="Plaque" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                     <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Terminer" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                     <asp:Label ID="Erreur" Visible="false" runat="server"> Each field has to be filled ! </asp:Label>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                     <asp:Label ID="Erreur2" Visible="false" runat="server"> Year and Places have to be integers ! </asp:Label>
                </td>
            </tr>
        </table>
     </div>

</asp:Content>
