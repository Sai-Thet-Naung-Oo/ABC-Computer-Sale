﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_UserMasterPage : System.Web.UI.MasterPage
{

    MainDatasetTableAdapters.OrderTableAdapter OrderTbl = new
MainDatasetTableAdapters.OrderTableAdapter();
    DataTable Dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["LogInCustomer"] != null)
        {
            Dt =
           OrderTbl.Order_Select_By_NotiStatus(Convert.ToInt32(Session["LogInCustomer"]));
            if (Dt.Rows.Count > 0)
                Session["NotiStatus"] = "Y";
        }
        if (Session["NotiStatus"] != null)
        {
            if (Session["NotiStatus"] == "-")
                btnMessage.Visible = false;
            else
                btnMessage.Visible = true;

        }
    }
}
