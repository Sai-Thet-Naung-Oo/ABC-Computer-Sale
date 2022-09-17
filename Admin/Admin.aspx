<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Style.css" rel="stylesheet" />
     <style type="text/css">
        .auto-style1 {
            height: 38px;
        }
        .auto-style2 {
            height: 240px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


     <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblError1" runat="server" ForeColor="Red" Font-Bold="True" Font-Size="10pt"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="btnNew" runat="server" Text="New" CssClass="button" OnClick="btnNew_Click" />
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="button" OnClick="btnUpdate_Click" />
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="button" OnClick="btnDelete_Click" />
                        <asp:Button ID="btnPrint" runat="server" Text="Print" CssClass="button" OnClick="btnPrint_Click" />
                        &nbsp;&nbsp;&nbsp; Admin Name : 
                        <asp:TextBox ID="txtSearch" AutoPostBack="true" runat="server"  autocomplete="Off" OnTextChanged="txtSearch_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="5" CellSpacing="1" DataKeyNames="AdminID" Width="700px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                            <Columns>
                                <asp:BoundField DataField="No" HeaderText="No" />
                                <asp:BoundField DataField="AdminID" HeaderText="AdminID" Visible="False" />
                                <asp:BoundField DataField="AdminName" HeaderText="Admin Name" />
                                <asp:BoundField DataField="Password" HeaderText="Password" Visible="False" />
                                <asp:TemplateField HeaderText="Select">
                                    <ItemTemplate> 

                                        <asp:LinkButton ID="btnEdit" runat="server" CommandName="Select">Select
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
            <asp:TextBox ID="txtAdminID" runat="server" Visible="False"></asp:TextBox>
            <table style="color:#000000; border:1px solid #000000">
                <tr>
                    <td colspan="2" class="tablehead">New Admin</td>                    
                </tr>
                <tr>
                    <td class="col">Admin Name :</td>
                     <td> <asp:TextBox ID="txtAdminName" runat="server" Width="200" autocomplete="Off"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="col">Password :</td>
                    <td> <asp:TextBox ID="txtPassword" runat="server" Width="200" TextMode="Password" ></asp:TextBox></td>
                </tr>
                <tr>
                     <td class="col">ConfirmPassword:</td>
                <td>
                    <asp:TextBox ID="txtConfirmPassword" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                    </td> 
                </tr>
                <tr>
                    <td></td>
                    <td>
                       <asp:Button ID="btnSave" runat="server" Text="Save"  CssClass="button" OnClick="btnSave_Click"  />
                    </td>
                </tr>
               
            </table>
        </asp:View>
    </asp:MultiView>

</asp:Content>

