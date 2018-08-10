using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SYSTEMS_SUBSTORE
{
    public partial class Report_substore : System.Web.UI.Page
    {

        static string constr = ConfigurationManager.ConnectionStrings["SubStrConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select ReqNo,Mcode,Mdesc,ReqDate,AppDate,ReqQty,AppStatus from UserIN where Pno=@PNo and ReqDate IN(@FromDate,@ToDate)",con);
            cmd.Parameters.AddWithValue("@PNo", text_pno.Text);
            cmd.Parameters.AddWithValue("@FromDate", from_date.Text);
            cmd.Parameters.AddWithValue("@ToDate", to_date.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void from_date_TextChanged(object sender, EventArgs e)
        {
           
        }
    }
}