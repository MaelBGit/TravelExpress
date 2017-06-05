<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyTravels.aspx.cs" Inherits="TravelExpressAsp.Account.MyTravels" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    Travel Reserved:<br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" Width="100%" CellPadding="4" DataKeyNames="id_journey" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="availableplaces" HeaderText="availableplaces" SortExpression="availableplaces" />
            <asp:BoundField DataField="id_journey" HeaderText="id_journey" InsertVisible="False" ReadOnly="True" SortExpression="id_journey" />
            <asp:BoundField DataField="start" HeaderText="start" SortExpression="start" />
            <asp:BoundField DataField="end" HeaderText="end" SortExpression="end" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="departure" HeaderText="departure" SortExpression="departure" />
            <asp:BoundField DataField="arrival" HeaderText="arrival" SortExpression="arrival" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="places" HeaderText="places" SortExpression="places" />
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
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:travelexpressConnectionString2 %>" ProviderName="<%$ ConnectionStrings:travelexpressConnectionString2.ProviderName %>" SelectCommand="SELECT travel.places - COALESCE(SUM(reservation.places), 0) AS availableplaces, travel.id_journey, travel.start, travel.end, travel.`date`, travel.departure, travel.arrival, travel.price, reservation.places FROM reservation RIGHT OUTER JOIN travel ON reservation.id_journey = travel.id_journey GROUP BY travel.id_journey, travel.start, travel.end, travel.`date`, travel.departure, travel.arrival, travel.price, reservation.places, reservation.id_user HAVING (reservation.id_user = @Param1)" OnSelecting="SqlDataSource4_Selecting">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="0" Name="Param1" SessionField="idu" />
                </SelectParameters>
</asp:SqlDataSource>
        <br />
    Travel Proposed:<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_journey" DataSourceID="SqlDataSource3" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id_journey" HeaderText="id_journey" InsertVisible="False" ReadOnly="True" SortExpression="id_journey" Visible="False" />
            <asp:BoundField DataField="start" HeaderText="start" SortExpression="start" />
            <asp:BoundField DataField="end" HeaderText="end" SortExpression="end" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="departure" HeaderText="departure" SortExpression="departure" />
            <asp:BoundField DataField="arrival" HeaderText="arrival" SortExpression="arrival" />
            <asp:BoundField DataField="places" HeaderText="places" SortExpression="places" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="id_car" HeaderText="id_car" SortExpression="id_car" Visible="False" />
            <asp:BoundField DataField="brand" HeaderText="brand" SortExpression="brand" />
            <asp:BoundField DataField="registration" HeaderText="registration" SortExpression="registration" />
            <asp:BoundField DataField="id_user" HeaderText="id_user" SortExpression="id_user" Visible="False" />
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
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:travelexpressConnectionString2 %>" ProviderName="<%$ ConnectionStrings:travelexpressConnectionString2.ProviderName %>" SelectCommand="SELECT travel.*, car.brand, car.registration, car.id_user FROM car INNER JOIN travel ON car.id_car = travel.id_car WHERE (car.id_user = ?)">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="0" Name="id_user" SessionField="idu" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Button ID="ShowTravel" runat="server" Text="AddTravel" OnClick="ShowTravel_Click" />
    <br />
    <div id="ShowAddTravel" runat="server" visible="false">
    Choose Car :<asp:DropDownList ID="ListCar" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="registration" DataValueField="id_car" TabIndex="1" OnDataBound="ListCar_DataBound">
    </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:travelexpressConnectionString2 %>" ProviderName="<%$ ConnectionStrings:travelexpressConnectionString2.ProviderName %>" SelectCommand="SELECT [id_car], [registration] FROM [car] WHERE ([id_user] = ?)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="0" Name="id_user" SessionField="idu" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    <br />
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
    <br />

        <div id="ShowAddTravelCar" runat="server" visible="false">
    <br />
        <table>
            <tr>
                <td>
                     Place of
                     Start :
                </td>
                <td>
                    <asp:TextBox ID="Start" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Place of
                    End :
                </td>
                <td>
                    <asp:TextBox ID="End" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Date :
                </td>
                <td>
                    <asp:Calendar ID="Date" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td>
                    Time of departure :
                </td>
                <td>
                    <asp:TextBox ID="Departure" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 24px">
                    Estimated time of arrival</td>
                <td style="height: 24px">
                    <asp:TextBox ID="Arrival" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    places : 
                </td>
                <td>
                    <asp:TextBox ID="TravelPlaces" runat="server"></asp:TextBox>
                &nbsp;max :
                    <asp:ListBox ID="MaxPlace" runat="server" DataSourceID="SqlDataSource1" DataTextField="places" DataValueField="places" Enabled="False" Height="21px" OnDataBound="MaxPlace_DataBound"></asp:ListBox>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:travelexpressConnectionString2 %>" ProviderName="<%$ ConnectionStrings:travelexpressConnectionString2.ProviderName %>" SelectCommand="SELECT [places] FROM [car] WHERE ([id_car] = ?)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ListCar" DefaultValue="0" Name="id_car2" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="height: 24px">
                    Price:</td>
                <td style="height: 24px">
                    <asp:TextBox ID="Price" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                     <asp:Button ID="ValidateTravel" runat="server" OnClick="ValidateTravel_Click" Text="Terminer" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                     <asp:Label ID="Erreur3" Visible="false" runat="server"> Each field has to be filled ! </asp:Label>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                     <asp:Label ID="Erreur4" Visible="false" runat="server"> Year and Places have to be integers ! </asp:Label>
                </td>
            </tr>
        </table>
        <br />
     </div>
    </div>
    <br />
   
</asp:Content>
