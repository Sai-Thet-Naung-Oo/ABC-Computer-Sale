using CrystalDecisions.CrystalReports.Engine;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_ProductReport : System.Web.UI.Page
{

    MainDatasetTableAdapters.ProductTableAdapter ProTbl = new MainDatasetTableAdapters.ProductTableAdapter();
    DataTable Dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        Dt = ProTbl.GetData();
        ReportDocument report = new ReportDocument();
        report.Load(Server.MapPath("crptProductReport.rpt"));
        report.SetDataSource(Dt);

        CrystalReportViewer1.ReportSource = report;
        CrystalReportViewer1.DataBind();

    }
}