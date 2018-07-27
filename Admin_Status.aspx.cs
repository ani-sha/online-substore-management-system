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
    public partial class Admin_Status : System.Web.UI.Page
    {

        static string q = ConfigurationManager.ConnectionStrings["SubStrConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(q);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                con.Open();
                Session["substr_rq"] = text_no.Text;

                string pno = (String)(Session["admin"]);

                text_pno.Text = pno;
                string str = "select pay_name from login11 where pay_pers_no = @pno";
                SqlCommand cmd1 = new SqlCommand(str, con);

                cmd1.Parameters.AddWithValue("@pno", text_pno.Text);
                SqlDataReader dr = cmd1.ExecuteReader();

                while (dr.Read())
                {
                    text_name.Text = dr["pay_name"].ToString();
                    Session["pass_name"] = text_name.Text;

                }
                dr.Close();

            }
            con.Close();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            con.Open();
            string rno = text_no.Text;

            String acc = "select ReqNo from UserIN where PNo = @PNo";

            SqlCommand cmd = new SqlCommand(acc, con);
            cmd.Parameters.AddWithValue("@PNo", text_pno.Text);
            SqlDataReader r = cmd.ExecuteReader();
            while (r.Read())
            {

                string var = r["ReqNo"].ToString();

                if (var.Equals(rno) == true)
                {

                    Response.Redirect("Admin_Print.aspx?No=" + text_no.Text.Trim());


                }


                else
                {
                    lbl_msg.Visible = true;
                    lbl_msg.Text = "NO REQUISITION FOUND";
                }


            }

            con.Close();

        }

        protected void text_pno_TextChanged(object sender, EventArgs e)
        {

        }

        protected void text_name_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}