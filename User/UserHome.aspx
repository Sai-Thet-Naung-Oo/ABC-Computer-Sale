<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="User_UserHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Style.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style1 {
            width: 100%;
             margin-left: auto;
  margin-right: auto;
  text-align: center;
            
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">



    <table class="auto-style1"  >
        <tr>
            <td>

                    <asp:Image ID="Image1" runat="server" ImageUrl="../Images/gallery/Picture1.jpg" />
              
            </td>
        </tr>
        <tr>
            <td>

                <a href="Product.aspx">
                    <asp:Image ID="Image2" runat="server"  ImageUrl="~/Images/ProImage/CPU1.jpg" Width="100" Height="100" />
                </a>
                 <a href="Product.aspx">
                    <asp:Image ID="Image3" runat="server"  ImageUrl="~/Images/ProImage/Monitor1.jpg" Width="100" Height="100" />
                </a>
                 <a href="Product.aspx">
                    <asp:Image ID="Image4" runat="server"  ImageUrl="~/Images/ProImage/Keyboard2.jpg" Width="100" Height="100" />
                </a>
                 <a href="Product.aspx">
                    <asp:Image ID="Image5" runat="server"  ImageUrl="~/Images/ProImage/LapTop1.jpg" Width="100" Height="100" />
                </a>
                 <a href="Product.aspx">
                    <asp:Image ID="Image6" runat="server"  ImageUrl="~/Images/ProImage/Memory1.JPG" Width="100" Height="100" />
                </a>
                 <a href="Product.aspx">
                    <asp:Image ID="Image7" runat="server"  ImageUrl="~/Images/ProImage/MotherBoard1.jpg" Width="100" Height="100" />

                </a>
                 <a href="Product.aspx">
                    <asp:Image ID="Image8" runat="server"  ImageUrl="~/Images/ProImage/SU1.jpg" Width="100" Height="100" />
                </a>

            </td>
        </tr>
    </table>



</asp:Content>

