using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["LogInAdmin"] == null)
        {
            Response.Redirect("../LogIn.aspx");
        }
    }


    protected void lbtnLogOut_Click(object sender, EventArgs e)
    {
        if (Session["LogInAdmin"] != null)
        {
            Session["LogInAdmin"] = null;
            Response.Redirect("../LogIn.aspx");
        }
    }
}
