<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TravelExpressAsp.Account.Register"  MasterPageFile="~/Site.Master"%>

<asp:Content ID="RegisterForm" ContentPlaceHolderID="MainContent" runat="server">
    
    <br/>
    <table>
        <tr>
            <td style="width: 185px">
            </td>
            <td>
                Registration :
            </td>
        </tr>
        <tr>
            <td style="width: 185px">
                Pseudo :
                <br />
                <asp:Label ID="Erreur2" runat="server" Text="this pseudo already exist" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Pseudo" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 185px">
                Password :
            </td>
            <td>
                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 185px">
                Mail :
            </td>
            <td>
                <asp:TextBox ID="Mail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 185px">
                First name :
            </td>
            <td>
                <asp:TextBox ID="F_name" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 185px">
                Last name :
            </td>
            <td>
                <asp:TextBox ID="L_Name" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 185px">
                Phone :
            </td>
            <td>
                <asp:TextBox ID="Phone" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 185px">
                Address :
            </td>
            <td>
                <asp:TextBox ID="Address" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 185px">
                Town :
            </td>
            <td>
                <asp:TextBox ID="Town" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 185px">
            </td>
            <td>
                Preferences :
            </td>
        </tr>
        <tr>
            <td style="width: 185px">
                Smoking (default NO) :
            </td>
            <td>
                <asp:CheckBox ID="Smoke" runat="server" Text="Yes" />
            </td>
        </tr>
        <tr>
            <td style="width: 185px">
                Other :
            </td>
            <td>
                <asp:TextBox ID="Other" runat="server" Height="70px" TextMode="MultiLine" Width="283px"></asp:TextBox>
            </td>
        </tr>
    </table>
    

    <asp:Button ID="RegisterBtn" runat="server" Text="Register" OnClick="Register_Click" />

    <br />
    <asp:Label ID="Erreur1" runat="server" Text="You have to fill everything" Visible="False"></asp:Label>
    <br />

</asp:Content>

