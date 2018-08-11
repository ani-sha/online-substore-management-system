using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SYSTEMS_SUBSTORE
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string pers_no;
            if (Session["admin"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                pers_no = Session["admin"].ToString();
                Session["admin"] = pers_no;
            }
        }
    }
}