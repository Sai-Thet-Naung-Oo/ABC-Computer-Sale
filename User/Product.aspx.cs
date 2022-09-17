using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Product : System.Web.UI.Page
{

    MainDatasetTableAdapters.CategoryTableAdapter CategoryTbl = new
MainDatasetTableAdapters.CategoryTableAdapter();
    MainDatasetTableAdapters.ProductTableAdapter ProductTbl = new
    MainDatasetTableAdapters.ProductTableAdapter();
    DataTable Dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (txtLoad.Text.ToString() == string.Empty)
        {
            Dt = CategoryTbl.Category_Select_By_Product();
            CatNameList.DataSource = Dt;
            CatNameList.DataBind();
            if (Dt.Rows.Count > 0)
            {
                Productlist.DataSource = ProductTbl.Product_Select_By_CatID(Convert.ToInt32(Dt.Rows[0][1].ToString()));
                Productlist.DataBind();
            }
            txtLoad.Text = "Load";
        }

    }



    protected void CatNameList_SelectedIndexChanged(object sender, EventArgs e)
    {

        Productlist.DataSource =ProductTbl.Product_Select_By_CatID(Convert.ToInt32(CatNameList.SelectedValue.ToString()));
        Productlist.DataBind();

    }

    protected void Productlist_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["ProductID"] = Productlist.SelectedValue.ToString();
        Response.Redirect("ProductDetail.aspx");
    }
}