<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="Admin_LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  
               <asp:Label ID="lblError" runat="server" ForeColor="Red" Font-Bold="True" Font-Size="10pt"></asp:Label>
         
            <table style="color:#000000; border:1px solid #000000">
                <tr>
                    <td colspan="2" class="tablehead">Admin LogIn</td>                    
                </tr>
                <tr>
                    <td class="col">&nbsp;Name :</td>
                     <td> <asp:TextBox ID="txtAdminName" runat="server" Width="200" autocomplete="Off"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="col">Password :</td>
                    <td> <asp:TextBox ID="txtPassword" runat="server" Width="200" TextMode="Password" ></asp:TextBox></td>
                </tr>
            
                <tr>
                    <td></td>
                    <td>
                       <asp:Button ID="btnLogIn" runat="server" Text="Log In"  CssClass="button" OnClick="btnLogIn_Click"  />
                    </td>
                </tr>
               
            </table>





</asp:Content>

