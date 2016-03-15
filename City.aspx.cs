using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class City : System.Web.UI.Page
{
    DataClassesDataContext lnq_obj = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
            return;
    }
    protected void txt_submit_Click(object sender, EventArgs e)
    {
        lnq_obj.insert_city(txt_city.Text);
        lnq_obj.SubmitChanges();
    }
}