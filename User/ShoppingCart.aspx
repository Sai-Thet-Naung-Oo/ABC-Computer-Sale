<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="User_ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <link href="../Style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <table>
    <tr>
        <th>Shopping Card
            <asp:TextBox ID="txtLoad" runat="server" Visible="False"></asp:TextBox>
        </th>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server"
                AutoGenerateColumns="False" BorderStyle="Solid" BorderWidth="1px" 
                CellPadding="5" CellSpacing="1" DataKeyNames="ProID" Width="900px" 
                PageSize="6">
                <Columns>
                    <asp:BoundField DataField="No" HeaderText="No"></asp:BoundField>
                    <asp:BoundField DataField="ProID" HeaderText="ProID" Visible="False" />
                    <asp:BoundField DataField="ProName" HeaderText="Product Name" />
                    <asp:BoundField DataField="CatName" HeaderText="Category Name" />
                    <asp:BoundField DataField="Price" HeaderText="Price" />
                    <asp:BoundField DataField="Qty" HeaderText="Qty"/>
                   
                     <asp:TemplateField HeaderText="ChangeQty">
                        <ItemTemplate>
                           <asp:TextBox ID="txtNewQty" runat="server" Text='<%# Bind("Qty") %>' ></asp:TextBox>
                          
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
             
        </td>
    </tr>
    <tr>
        <td>
        <asp:Button ID="btnContinue" runat="server" Text="Continue" 
                onclick="btnContinue_Click" CssClass="button" Width="110px" />
        &nbsp;<asp:Button ID="btnCheckOut" runat="server" Text="Check Out" 
                onclick="btnCheckOut_Click" CssClass="button" Width="110px" />
        &nbsp;<asp:Button ID="btnCancleShopping" runat="server" Text="Cancle Shopping" 
                onclick="btnCancleShopping_Click" CssClass="button" Width="110px" />
        </td>
        </tr>
    </table>

</asp:Content>

