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
    public partial class Admin_app : System.Web.UI.Page
    {

        static string constr = ConfigurationManager.ConnectionStrings["SubStrConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();

            string rno = text_rno.Text;


            String status = "select AppStatus from UserIN where ReqNo = @ReqNo";

            SqlCommand cmd = new SqlCommand(status, con);
            cmd.Parameters.AddWithValue("@ReqNo", rno);
            SqlDataReader r = cmd.ExecuteReader();
            if (r.Read())
            {

                string var = r["AppStatus"].ToString();

                if (var.Equals("Y") == true)
                {

                    text_mcode.Text = " ";
                    text_mdesc.Text = " ";
                    text_pno.Text = " ";
                    text_rq_date.Text = " ";
                    text_stock.Text = " ";
                    text_rq_qty.Text = " ";
                    text_app_qty.Text = " ";
                    lbl_msg1.Text = "ALREADY APPROVED";


                }
                else
                {
                    r.Close();
                    lbl_msg1.Visible = false;
                    string str = "select * from UserIN where ReqNo = @rno ";
                    SqlCommand cmd1 = new SqlCommand(str, con);

                    cmd1.Parameters.AddWithValue("@rno", text_rno.Text);
                    SqlDataReader dr = cmd1.ExecuteReader();

                    while (dr.Read())
                    {
                        text_mcode.Text = dr["Mcode"].ToString();
                        text_pno.Text = dr["PNo"].ToString();
                        text_rq_date.Text = dr["ReqDate"].ToString();
                        text_rq_qty.Text = dr["ReqQty"].ToString();
                        text_stock.Text = dr["QtySp"].ToString();


                    }
                    dr.Close();

                    String Mcode = text_mcode.Text;
                    string st = "select Mdesc from Stock where Mcode = @Mcode ";
                    SqlCommand cmd5 = new SqlCommand(st, con);

                    cmd5.Parameters.AddWithValue("@Mcode", text_mcode.Text);
                    SqlDataReader dr1 = cmd5.ExecuteReader();

                    while (dr1.Read())
                    {
                        text_mdesc.Text = dr1["Mdesc"].ToString();

                    }
                    dr1.Close();
                }
            }
         
            
        
          
            con.Close();
        }

        protected void text_rno_TextChanged(object sender, EventArgs e)
        {

          
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            con.Open();
        
            double a1, b1;
            a1 = b1 = 0;
            string check_stock = text_rq_qty.Text;
            string check_qty = text_app_qty.Text;
            a1 = double.Parse(check_stock);
            b1 = double.Parse(check_qty);
            if (b1 > a1)
            {
                lbl_msg1.Text = "Quantity cannot be greater than stock quantity";
                lbl_msg.Visible = true;
               
                text_app_qty.Text = "";
            }
            else
            {
                string dt = DateTime.Now.ToString();
                dt = dt.Split(' ')[0];
                String std = dt.Split('/')[2] + '-' + dt.Split('/')[1] + '-' + dt.Split('/')[0];

                double b = 0;
                String rno = text_rno.Text;
                String s = text_app_qty.Text;
                double a = double.Parse(s);
                String str = "select QtySp from UserIN where ReqNo= @rno ";
                SqlCommand cmd2 = new SqlCommand(str, con);

                cmd2.Parameters.AddWithValue("@rno", rno);
                SqlDataReader rd = cmd2.ExecuteReader();
                if (rd.Read())
                    b = double.Parse(rd["QtySp"].ToString());
                rd.Close();
                double c = b - a;
                String str1 = Convert.ToString(c);
                String mcode = text_mcode.Text;
                String app_qty = text_app_qty.Text;

                String up = "Update Stock SET Qty=@Qty where Mcode=@Mcode";
                SqlCommand cmd3 = new SqlCommand(up, con);
                cmd3.Parameters.AddWithValue("@Mcode", mcode);
                cmd3.Parameters.AddWithValue("@Qty", str1);

                String ch = "Update UserIN SET AppStatus=@AppStatus where ReqNo='" + text_rno.Text + "' ";
                SqlCommand cmd = new SqlCommand(ch, con);
                cmd.Parameters.AddWithValue("@AppStatus", 'Y');

                String ch1 = "Update UserIN SET ApprovedQty=@ApprovedQty where ReqNo='" + text_rno.Text + "' ";
                SqlCommand cmd6 = new SqlCommand(ch1, con);
                cmd6.Parameters.AddWithValue("@ApprovedQty",app_qty );


                String user = "Update UserIN SET QtySp=@QtySp, AppDate=@AppDate where ReqNo='" + text_rno.Text + "'";
                SqlCommand cmd4 = new SqlCommand(user, con);
                cmd4.Parameters.AddWithValue("@QtySp", str1);
                cmd4.Parameters.AddWithValue("@AppDate", std);
                cmd4.ExecuteNonQuery();
                cmd3.ExecuteNonQuery();
                cmd.ExecuteNonQuery();
                cmd6.ExecuteNonQuery();


                lbl_msg1.Visible = false;
                lbl_msg.Text = "APPROVED";
                

            }

         
            
            con.Close();

               






        }

        protected void text_app_qty_TextChanged(object sender, EventArgs e)
        {

        }
    }
}