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
    public partial class Mat_Master : System.Web.UI.Page
    {
        static string constr = ConfigurationManager.ConnectionStrings["SubStrConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void txt_mat_cd_TextChanged(object sender, EventArgs e)
        {
            
           
            
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            con.Open();
            string s = txt_mat_cd.Text;
            string str = "select Mcode from Stock where  Mcode = @s ";
            SqlCommand cmd_substr = new SqlCommand(str, con);
            cmd_substr.Parameters.AddWithValue("@s", txt_mat_cd.Text);
            SqlDataReader dr = cmd_substr.ExecuteReader();
            if (dr.Read())
            {
                lbl_message.Visible = true;

            }
         
            else
            {
                lbl_message.Visible = false;
                dr.Close();
                using (SqlCommand cmd = new SqlCommand(" Insert into Stock(Mcode,Mdesc,Qty,Loc) Values(@Mcode,@Mdesc,'0','SYSTEMS SUBSTORE')", con))
                {



                    cmd.Parameters.AddWithValue("@Mcode", txt_mat_cd.Text);
                    cmd.Parameters.AddWithValue("@Mdesc", txt_mat_des.Text);
                    cmd.ExecuteNonQuery();

               
                    lbl_submit.Visible = true;

                }
            }

            con.Close();

        }
    }
}