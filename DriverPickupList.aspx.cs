﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

public partial class customs_code_DriverPickupList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USER"] == null)
        {
            Response.Redirect("Authorize.aspx");
        }

        DataTable dt;
        BLL.DriverPickupList _Bll = new BLL.DriverPickupList();
        dt = _Bll.getDriverPickupList_All();
        RadGrid1.DataSource = dt;

    }


    protected void RadGrid1_ItemDataBound(object sender, Telerik.Web.UI.GridItemEventArgs e)
    {


        if (e.Item is GridDataItem)
        {
            Label lbl = e.Item.FindControl("numberLabel") as Label;
            lbl.Text = (e.Item.ItemIndex + 1).ToString();
        }

    }

    protected void RadGrid1_PreRender(object sender, EventArgs e)
    {


        RadGrid1.MasterTableView.GetColumn("RDCPlaningID").Visible = false;
    }
}