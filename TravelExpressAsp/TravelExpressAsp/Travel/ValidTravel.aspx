<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ValidTravel.aspx.cs" Inherits="TravelExpressAsp.Travel.ValidTravel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        More Information on the travel:</p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="id_journey" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="410px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="start" HeaderText="start" SortExpression="start" />
                <asp:BoundField DataField="end" HeaderText="end" SortExpression="end" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="departure" HeaderText="departure" SortExpression="departure" />
                <asp:BoundField DataField="arrival" HeaderText="arrival" SortExpression="arrival" />
                <asp:BoundField DataField="places" HeaderText="places" SortExpression="places" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="brand" HeaderText="brand" SortExpression="brand" />
                <asp:BoundField DataField="model" HeaderText="model" SortExpression="model" />
                <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
                <asp:BoundField DataField="registration" HeaderText="registration" SortExpression="registration" />
                <asp:CheckBoxField DataField="smoke" HeaderText="smoker" SortExpression="smoke" />
                <asp:BoundField DataField="other" HeaderText="other" SortExpression="other" />
                <asp:BoundField DataField="telephone" HeaderText="for more information" SortExpression="telephone" />
                <asp:BoundField DataField="id_journey" HeaderText="id_journey" InsertVisible="False" ReadOnly="True" SortExpression="id_journey" Visible="False" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:travelexpressConnectionString2 %>" ProviderName="<%$ ConnectionStrings:travelexpressConnectionString2.ProviderName %>" SelectCommand="SELECT travel.start, travel.end, travel.`date`, travel.departure, travel.arrival, travel.places, travel.price, car.brand, car.model, car.type, car.year, car.registration, preference.smoke, preference.other, `user`.telephone, travel.id_journey FROM car INNER JOIN travel ON car.id_car = travel.id_car INNER JOIN `user` ON car.id_user = `user`.id_user INNER JOIN preference ON `user`.id_user = preference.id_user WHERE (travel.id_journey = @Param1)">
            <FilterParameters>
                <asp:QueryStringParameter DefaultValue="0" Name="newparameter" QueryStringField="travel" />
            </FilterParameters>
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="0" Name="Param1" QueryStringField="travel" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        places to take :<asp:TextBox ID="Places" runat="server" AutoPostBack="True" Width="52px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
&nbsp;max:
        <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource2" DataTextField="AvailablePlaces" DataValueField="price" Height="20px" Width="44px" Enabled="False" EnableTheming="False" EnableViewState="False"  ></asp:ListBox>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:travelexpressConnectionString2 %>" ProviderName="<%$ ConnectionStrings:travelexpressConnectionString2.ProviderName %>" SelectCommand="SELECT travel.places - COALESCE(SUM(reservation.places), 0) AS AvailablePlaces, travel.price FROM reservation RIGHT OUTER JOIN travel ON reservation.id_journey = travel.id_journey GROUP BY travel.id_journey, travel.price HAVING (travel.id_journey = @Param1)" >
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="0" Name="Param1" QueryStringField="travel" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <asp:label runat="server" Text="Number of places incorrect" Visible="False" ID="Error"></asp:label>
    <p>
        Price : <asp:Label ID="Price" runat="server" Text="0"></asp:Label>
    </p>
    <p>
        <asp:Button ID="Validate" runat="server" Text="Validate" OnClick="Validate_Click" />
    </p>
</asp:Content>
