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
    public partial class Admin_Print : System.Web.UI.Page
    {
        static string constr = ConfigurationManager.ConnectionStrings["SubStrConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);


        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            string pno1 = (String)(Session["admin"]);
            string rno = (String)(Session["substr_rq"]);
            string name1 = (String)(Session["pass_name"]);
            String name2 = (String)(Session["pass_desc"]);


            if (Request.QueryString["No"] != null)
                txt_req_no.Text = Request.QueryString["No"];

            string query = "Select * From UserIN where ReqNo= @rno";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@rno", txt_req_no.Text);

            SqlDataReader r = cmd.ExecuteReader();

            while (r.Read())
            {

                txt_pno.Text = pno1;
                txt_name.Text = name1;
                text_mat_desc.Text = name2;
                text_mat_code.Text = r["Mcode"].ToString();
                txt_req_dt.Text = r["ReqDate"].ToString();
                txt_req_qty.Text = r["ReqQty"].ToString();
            }
            r.Close();
            String Mcode = text_mat_code.Text;
            string st = "select Mdesc from Stock where Mcode = @Mcode ";
            SqlCommand cmd5 = new SqlCommand(st, con);

            cmd5.Parameters.AddWithValue("@Mcode", text_mat_code.Text);
            SqlDataReader dr1 = cmd5.ExecuteReader();

            while (dr1.Read())
            {
                text_mat_desc.Text = dr1["Mdesc"].ToString();

            }
            dr1.Close();
            con.Close();
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}