<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TravelExpressAsp.Account.Register"  MasterPageFile="~/Site.Master"%>

<asp:Content ID="RegisterForm" ContentPlaceHolderID="MainContent" runat="server">
    
    <br/>
    <table>
        <tr>
            <td>
                Pseudo :
            </td>
            <td>
                <asp:TextBox ID="Pseudo" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Password :
            </td>
            <td>
                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Mail :
            </td>
            <td>
                <asp:TextBox ID="Mail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                First name :
            </td>
            <td>
                <asp:TextBox ID="F_name" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Last name :
            </td>
            <td>
                <asp:TextBox ID="L_Name" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Phone :
            </td>
            <td>
                <asp:TextBox ID="Phone" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Address :
            </td>
            <td>
                <asp:TextBox ID="Address" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Town :
            </td>
            <td>
                <asp:TextBox ID="Town" runat="server"></asp:TextBox>
            </td>
        </tr>

    </table>
    

    <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />

</asp:Content>

