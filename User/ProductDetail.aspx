<%@ Page Title="ABC Computer Sales Center" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="ProductDetail.aspx.cs" Inherits="User_ProductDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <link href="../Style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

     <table style="color: #000000; border: 1px solid #000000">
        <tr>
            <th colspan="3" class="tablehead">Product Detail</th>
        </tr>
        <tr>
            <td rowspan="3">
                <asp:Image ID="imgProduct" Width="200" Height="200" runat="server" />
            </td>
            <td class="col">Product Name:</td>
            <td>
                <asp:Label ID="lblProductName" Width="200" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="col">
                Category Name:
            </td>
            <td>
                <asp:Label ID="lblCategoryName" Width="200" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="col">Price:</td>
            <td>
                <asp:Label ID="lblPrice" Width="200" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:Button ID="btnContinue" CssClass="button" Width="130" runat="server" Text="Continue Shopping" OnClick="btnContinue_Click" />
            </td>
            <td>
                <asp:Button ID="btnAdd" CssClass="button" Width="130" runat="server" Text="Add to Cart" OnClick="btnAdd_Click" />
            </td>
        </tr>

    </table>

</asp:Content>

