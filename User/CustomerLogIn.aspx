<%@ Page Title="ABC Computer Sales Center" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="CustomerLogIn.aspx.cs" Inherits="User_CustomerLogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../Style.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">


    <div>
        <asp:Label ID="lblError" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="Red"></asp:Label>
    </div>
    <div>
        <table style="color: #000000; border: 1px solid #000000">
            <tr>
                <th colspan="3" class="tablehead">Login</th>
            </tr>


            <tr>
                <td class="col">Email:</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" Width="200px" autocomplete="Off"></asp:TextBox>
                </td>
                <td></td>
            </tr>
            <tr>
                <td class="col">Password:</td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                </td>
                <td></td>
            </tr>



            <tr>
                <td></td>
                <td colspan="2">
                    <asp:Button ID="btnLogin" runat="server" Text="Login"
                        CssClass="button" OnClick="btnLogin_Click" />
                </td>
            </tr>
        </table>
    </div>



</asp:Content>

