<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Admin_Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link href="../Style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblError1" runat="server" ForeColor="Red" Font-Bold="True" Font-Size="10pt"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" aria-grabbed="true">

                        <asp:Button ID="btnNew" runat="server" Text="New" CssClass="button" OnClick="btnNew_Click" />
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="button" OnClick="btnUpdate_Click" />
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="button" OnClick="btnDelete_Click" />
                        &nbsp;&nbsp;&nbsp; Search Type :<asp:DropDownList ID="ddlSearchType" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlSearchType_SelectedIndexChanged">
                            <asp:ListItem>ProductName</asp:ListItem>
                            <asp:ListItem>CategoryName</asp:ListItem>
                            <asp:ListItem>Price</asp:ListItem>
                            <asp:ListItem>Quantity</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;<asp:TextBox ID="txtSearch" AutoPostBack="true" runat="server" autocomplete="Off" OnTextChanged="txtSearch_TextChanged"></asp:TextBox>
                        <asp:Button ID="btnPrint" runat="server" CssClass="button" OnClick="btnPrint_Click" Text="Print" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="5" CellSpacing="1" DataKeyNames="ProID" Width="900px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <Columns>


                                <asp:BoundField DataField="No" HeaderText="No" />
                                <asp:BoundField DataField="ProID" HeaderText="ProID" Visible="False" />
                                 <asp:BoundField DataField="CatID" HeaderText="CatID" Visible="False" />

                                <asp:BoundField DataField="ProName" HeaderText="Product Name" />
                                <asp:BoundField DataField="CatName" HeaderText="Category Name" />
                                <asp:BoundField DataField="Price" HeaderText="Price" />
                                <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                                <asp:TemplateField HeaderText="Image">

                                    <ItemTemplate>
                                        <asp:Image ID="imgProduct" runat="server" ImageUrl='<%#Bind ("Image") %>' Width="50" Height="50" />
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Select">
                                    <ItemTemplate>

                                        <asp:LinkButton ID="btnEdit" runat="server" CommandName="Select">
                                            Select
                                            <asp:CheckBox ID="chkSelect" runat="server" />
                                        </asp:LinkButton>

                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>

        </asp:View>
        <asp:View ID="View2" runat="server">
            <asp:Label ID="lblError2" runat="server" ForeColor="Red" Font-Bold="True" Font-Size="10pt"></asp:Label>
            <asp:TextBox ID="txtProductID" runat="server" Visible="False"></asp:TextBox>
            <table style="color: #000000; border: 1px solid #000000">
                <tr>
                    <td colspan="2" class="tablehead">Product</td>
                </tr>
                <tr>
                    <td class="col">Product Name :</td>
                    <td>
                        <asp:TextBox ID="txtProductName" runat="server" Width="200" autocomplete="Off"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="col">Category Name :</td>
                    <td>
                        <asp:DropDownList ID="ddlCategoryName" runat="server" Width="200px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="col">Price:</td>
                    <td>
                        <asp:TextBox ID="txtPrice" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td class="col">Quantity :</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtQuantity" runat="server" Width="200"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td class="col">Image :</td>
                    <td>
                        <asp:TextBox ID="txtImage" runat="server" Visible="False"></asp:TextBox>
                        <asp:FileUpload ID="FileUploadImage" runat="server" />
                     </td>
                </tr>


                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="button" OnClick="btnSave_Click" />
                    </td>
                </tr>

            </table>
        </asp:View>
    </asp:MultiView>



</asp:Content>

