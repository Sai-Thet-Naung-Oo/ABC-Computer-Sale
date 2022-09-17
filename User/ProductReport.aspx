<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="ProductReport.aspx.cs" Inherits="User_ProductReport" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true"  ReportSourceID="CrystalReportSource1" HasRefreshButton="True" ToolPanelView="None" />
    <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
        <Report FileName="crptProductReport.rpt">
        </Report>
    </CR:CrystalReportSource>
</asp:Content>

