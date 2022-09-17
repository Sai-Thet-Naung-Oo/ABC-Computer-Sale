﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports.Engine;
//using CrystalDecisions.Shared;
using System.Data;


public partial class Admin_Report : System.Web.UI.Page
{
    public void resetCrystal() {

        CrystalReportViewer1.Visible = false;
        CrystalReportViewer2.Visible = false;
        CrystalReportViewer3.Visible = false;
        CrystalReportViewer4.Visible = false;
    }

    protected void Page_Load(object sender, EventArgs e)
    {


        if (Session["ReportDt"] != null && Session["ReportName"] == "crptAdmin.rpt")
        {

            ReportDocument report = new ReportDocument();
            report.Load(Server.MapPath(Session["ReportName"].ToString()));

            report.SetDataSource((DataTable)Session["ReportDt"]);

            CrystalReportViewer1.ReportSource = report;
            CrystalReportViewer1.DataBind();
            CrystalReportViewer1.ReportSource = report;
            CrystalReportViewer1.RefreshReport();
            resetCrystal();
            CrystalReportViewer1.Visible = true;
            Session["ReportDt"] = null;

        }
        else if (Session["ReportDt"] != null && Session["ReportName"] == "crptCategory.rpt")
        {

            ReportDocument report = new ReportDocument();
            report.Load(Server.MapPath(Session["ReportName"].ToString()));

            report.SetDataSource((DataTable)Session["ReportDt"]);

            CrystalReportViewer2.ReportSource = report;
            CrystalReportViewer2.DataBind();
            CrystalReportViewer2.ReportSource = report;
            CrystalReportViewer2.RefreshReport();
            resetCrystal();
            CrystalReportViewer2.Visible = true;
            Session["ReportDt"] = null;

        }
        else if (Session["ReportDt"] != null && Session["ReportName"] == "crptProduct.rpt")
        {

            ReportDocument report = new ReportDocument();
            report.Load(Server.MapPath(Session["ReportName"].ToString()));

            report.SetDataSource((DataTable)Session["ReportDt"]);

            CrystalReportViewer3.ReportSource = report;
            CrystalReportViewer3.DataBind();
            CrystalReportViewer3.ReportSource = report;
            CrystalReportViewer3.RefreshReport();
            resetCrystal();
            CrystalReportViewer3.Visible = true;
            Session["ReportDt"] = null;

        }
        else if (Session["ReportDt"] != null && Session["ReportName"] == "crptOrder.rpt")
        {

            ReportDocument report = new ReportDocument();
            report.Load(Server.MapPath(Session["ReportName"].ToString()));

            report.SetDataSource((DataTable)Session["ReportDt"]);

            CrystalReportViewer4.ReportSource = report;
            CrystalReportViewer4.DataBind();
            CrystalReportViewer4.ReportSource = report;
            CrystalReportViewer4.RefreshReport();
            resetCrystal();
            CrystalReportViewer4.Visible = true;
            Session["ReportDt"] = null;

        }

    }
}