<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TravelExpressAsp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">

        <h1>Travel Express</h1>
        <p class="lead">
            Departure Town :
            <asp:TextBox ID="Departure" runat="server" Width="105px"></asp:TextBox>
&nbsp;Arrival Town :
            <asp:TextBox ID="Arrival" runat="server" Width="100px"></asp:TextBox>
&nbsp;<asp:Button ID="Search" runat="server" Text="Search" OnClick="Search_Click" />
        </p>
        <p class="lead">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_journey" DataSourceID="SqlDataSource1" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="availableplaces" HeaderText="Available places" SortExpression="availableplaces" />
                    <asp:BoundField DataField="id_journey" HeaderText="id_journey" InsertVisible="False" ReadOnly="True" SortExpression="id_journey" Visible="False" />
                    <asp:BoundField DataField="start" HeaderText="start" SortExpression="start" />
                    <asp:BoundField DataField="end" HeaderText="end" SortExpression="end" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                    <asp:BoundField DataField="departure" HeaderText="departure" SortExpression="departure" />
                    <asp:BoundField DataField="arrival" HeaderText="arrival" SortExpression="arrival" />
                    <asp:BoundField DataField="places" HeaderText="places" SortExpression="places" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                    <asp:HyperLinkField Text="Take a place" DataNavigateUrlFormatString="~/Travel/ValidTravel.aspx?travel={0}"
    DataNavigateUrlFields="id_journey" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:travelexpressConnectionString2 %>" ProviderName="<%$ ConnectionStrings:travelexpressConnectionString2.ProviderName %>" SelectCommand="SELECT travel.places - COALESCE(SUM(reservation.places),0) AS availableplaces, travel.id_journey, travel.start, travel.end, travel.`date`, travel.departure, travel.arrival, travel.places, travel.price FROM reservation RIGHT JOIN travel ON reservation.id_journey = travel.id_journey GROUP BY travel.id_journey, travel.start, travel.end, travel.`date`, travel.departure, travel.arrival, travel.places, travel.price"></asp:SqlDataSource>
        </p>
    </div>
</asp:Content>
