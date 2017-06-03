<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="TravelExpressAsp.Account.Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Mon Compte"></asp:Label>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:travelexpressConnectionString2 %>"  ProviderName="<%$ ConnectionStrings:travelexpressConnectionString2.ProviderName %>" SelectCommand="SELECT [first_name], [last_name], [address], [town], [telephone], [pseudo], [mail] FROM [user] WHERE ([id_user] = ?)">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="0" Name="id_user" SessionField="idu" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DefaultMode="Edit">
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
            first_name:
            <asp:Label ID="first_nameLabel" runat="server" Text='<%# Bind("first_name") %>' />
            <br />
            last_name:
            <asp:Label ID="last_nameLabel" runat="server" Text='<%# Bind("last_name") %>' />
            <br />
            address:
            <asp:Label ID="addressLabel" runat="server" Text='<%# Bind("address") %>' />
            <br />
            town:
            <asp:Label ID="townLabel" runat="server" Text='<%# Bind("town") %>' />
            <br />
            telephone:
            <asp:Label ID="telephoneLabel" runat="server" Text='<%# Bind("telephone") %>' />
            <br />
            pseudo:
            <asp:Label ID="pseudoLabel" runat="server" Text='<%# Bind("pseudo") %>' />
            <br />
            mail:
            <asp:Label ID="mailLabel" runat="server" Text='<%# Bind("mail") %>' />
            <br />

        </ItemTemplate>
    </asp:FormView>
    <asp:Label ID="Label2" runat="server" Text="Mes voitures"></asp:Label>
    <br />
    <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" AutoGenerateColumns="False" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="brand" HeaderText="brand" SortExpression="brand" />
            <asp:BoundField DataField="model" HeaderText="model" SortExpression="model" />
            <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
            <asp:BoundField DataField="places" HeaderText="places" SortExpression="places" />
            <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
            <asp:BoundField DataField="registration" HeaderText="registration" SortExpression="registration" />
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
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="AddCar" />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:travelexpressConnectionString2 %>" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:travelexpressConnectionString2.ProviderName %>" SelectCommand="SELECT [brand], [model], [type], [places], [year], [registration] FROM [car] WHERE ([id_user] = ?)" OnSelecting="SqlDataSource2_Selecting">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="0" Name="id_user" SessionField="idu" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
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
        <asp:Label ID="Label3" runat="server" Text="Mes Préférences"></asp:Label>
     </div>

</asp:Content>
