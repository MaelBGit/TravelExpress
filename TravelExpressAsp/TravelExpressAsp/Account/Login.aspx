<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TravelExpressAsp.Account.Login"  MasterPageFile="~/Site.Master"%>

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
        

    </table>
    <asp:Button ID="Button1" runat="server" Text="Log In" Width="60px" OnClick="Button1_Click" />

    </asp:Content>

