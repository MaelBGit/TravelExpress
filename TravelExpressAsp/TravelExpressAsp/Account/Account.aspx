<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="TravelExpressAsp.Account.Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Mon Compte"></asp:Label>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:travelexpressConnectionString2 %>"  ProviderName="<%$ ConnectionStrings:travelexpressConnectionString2.ProviderName %>" SelectCommand="SELECT [id_user], [first_name], [address], [last_name], [town], [telephone], [pseudo], [mail] FROM [user] WHERE ([id_user] = ?)" OldValuesParameterFormatString="original_{0}">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="0" Name="id_user" SessionField="idu" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            first name:
            <asp:TextBox ID="first_nameTextBox" runat="server"  Text='<%# Bind("first_name") %>' />
            <br />
            last name:
            <asp:TextBox ID="last_nameTextBox" runat="server" Text='<%# Bind("last_name") %>' />
            <br />
            address:
            <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
            <br />
            town:
            <asp:TextBox ID="townTextBox" runat="server" Text='<%# Bind("town") %>' />
            <br />
            telephone:
            <asp:TextBox ID="telephoneTextBox" runat="server" Text='<%# Bind("telephone") %>' />
            <br />
            pseudo:
            <asp:TextBox ID="pseudoTextBox" runat="server" Text='<%# Bind("pseudo") %>' />
            <br />
            mail:
            <asp:TextBox ID="mailTextBox" runat="server" Text='<%# Bind("mail") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle HorizontalAlign="Center" VerticalAlign="Top" />
        <InsertItemTemplate>
            first_name:
            <asp:TextBox ID="first_nameTextBox" runat="server" Text='<%# Bind("first_name") %>' />
            <br />
            last_name:
            <asp:TextBox ID="last_nameTextBox" runat="server" Text='<%# Bind("last_name") %>' />
            <br />
            address:
            <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
            <br />
            town:
            <asp:TextBox ID="townTextBox" runat="server" Text='<%# Bind("town") %>' />
            <br />
            telephone:
            <asp:TextBox ID="telephoneTextBox" runat="server" Text='<%# Bind("telephone") %>' />
            <br />
            pseudo:
            <asp:TextBox ID="pseudoTextBox" runat="server" Text='<%# Bind("pseudo") %>' />
            <br />
            mail:
            <asp:TextBox ID="mailTextBox" runat="server" Text='<%# Bind("mail") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <table style="width: 100%; height: 99px;">
                <tr>
                    <td>first_name:</td>
                    <td style="width: 134px">
                        <asp:Label ID="first_nameLabel" runat="server" Text='<%# Bind("first_name") %>' />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>last_name: </td>
                    <td style="width: 134px">
                    <asp:Label ID="last_nameLabel" runat="server" Text='<%# Bind("last_name") %>' />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>address:</td>
                    <td style="width: 134px"><asp:Label ID="addressLabel" runat="server" Text='<%# Bind("address") %>' />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>town:</td>
                    <td><asp:Label ID="townLabel" runat="server" Text='<%# Bind("town") %>' /></td>
                    <td></td>
                </tr>
                <tr>
                    <td>telephone:</td>
                    <td><asp:Label ID="telephoneLabel" runat="server" Text='<%# Bind("telephone") %>' /></td>
                    <td></td>
                </tr>
                <tr>
                    <td>pseudo:</td>
                    <td><asp:Label ID="pseudoLabel" runat="server" Text='<%# Bind("pseudo") %>' /></td>
                    <td></td>
                </tr>
                <tr>
                    <td>mail:</td>
                    <td><asp:Label ID="mailLabel" runat="server" Text='<%# Bind("mail") %>' /></td>
                    <td></td>
                </tr>
            </table>
            &nbsp;<br />
            <br />


        </ItemTemplate>
    </asp:FormView>
    <asp:Label ID="Label2" runat="server" Text="Mes voitures"></asp:Label>
    <br />
    <asp:GridView ID="Cars" OnRowDeleting="Cars_RowDeleting" runat="server" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" DataKeyNames="id_car" GridLines="None" Width="100%" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="brand" HeaderText="brand" SortExpression="brand" />
            <asp:BoundField DataField="model" HeaderText="model" SortExpression="model" />
            <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
            <asp:BoundField DataField="places" HeaderText="places" SortExpression="places" />
            <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
            <asp:BoundField DataField="registration" HeaderText="registration" SortExpression="registration" />
            <asp:BoundField DataField="id_car" HeaderText="id_car" InsertVisible="False" ReadOnly="True" SortExpression="id_car" Visible="False" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:travelexpressConnectionString2 %>" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:travelexpressConnectionString2.ProviderName %>" SelectCommand="SELECT [id_car], [brand], [model], [type], [places], [year], [registration] FROM [car] WHERE ([id_user] = ?)" OnSelecting="SqlDataSource2_Selecting" DeleteCommand="DELETE FROM [car] WHERE [id_car] = @id_car" InsertCommand="INSERT INTO [car] ( [brand], [model], [type], [places], [year], [registration]) VALUES ( ?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE [car] SET [brand] = ?, [model] = ?, [type] = ?, [places] = ?, [year] = ?, [registration] = ? WHERE [id_car] = ?">
            <DeleteParameters>
                <asp:Parameter Name="id_car"   />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id_car" Type="Int32" />
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
                <asp:Parameter Name="brand" Type="String" />
                <asp:Parameter Name="model" Type="String" />
                <asp:Parameter Name="type" Type="String" />
                <asp:Parameter Name="places" Type="Int32" />
                <asp:Parameter Name="year" Type="Int32" />
                <asp:Parameter Name="registration" Type="String" />
                <asp:Parameter Name="original_id_car" Type="Int32" />
            </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="AddCar" />

    <br />
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
                <td style="height: 24px">
                    Year :
                </td>
                <td style="height: 24px">
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
        <br />
        
     </div>
    <asp:Label ID="Label3" runat="server" Text="Mes Préférences"></asp:Label>
</asp:Content>
