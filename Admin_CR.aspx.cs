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
    public partial class Admin_CR : System.Web.UI.Page

    {
        static string constr = ConfigurationManager.ConnectionStrings["SubStrConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        protected void Page_Load(object sender, EventArgs e)

        {

            if (!this.IsPostBack)
            {


                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT Mcode, Mdesc FROM Stock");

                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;

                SqlDataReader dr = cmd.ExecuteReader();


                while (dr.Read())
                {
                    text_matdesc.DataSource = dr;
                    text_matdesc.DataTextField = "Mdesc";

                    text_matdesc.DataValueField = "Mcode";

                    text_matdesc.DataBind();

                }
                dr.Close();

                con.Close();
                AutoID();

            }
            text_matdesc.Items.Insert(0, new ListItem("--Select --", "0"));





        }
        private void AutoID()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(ReqNo) from UserIN", con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            i++;
            Label2.Text = i.ToString();

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            if (text_matdesc.SelectedItem != null)
            {


                string str = "select Qty,Mcode from stock where Mdesc='" + text_matdesc.SelectedItem.Text + "'";
                SqlCommand com = new SqlCommand(str, con);
                SqlDataReader r = com.ExecuteReader();
                while (r.Read())
                {
                    mstock.Text = r["Qty"].ToString();
                    mcode.Text = r["Mcode"].ToString();

                }
                r.Close();
            }
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            con.Open();
        
            double a, b, c;
            a = b = c = 0;
            string check_stock = mstock.Text;
            string check_qty = mqty.Text;
            a = double.Parse(check_stock);
            b = double.Parse(check_qty);
            if (b > a)
            {
                lbl_msg.Text = "Quantity cannot be greater than stock quantity";
                lbl_msg.Visible = true;
                mqty.Text = "";
            }
            else if (b <= 0)
            {
                lbl_msg.Text = "Enter correct quantity";
                mqty.Text = " ";
            }
            else
            {
                con.Close();
                AutoID();
                con.Open();
                string str = DateTime.Now.ToString();
                str = str.Split(' ')[0];
                String std = str.Split('/')[2] + '-' + str.Split('/')[1] + '-' + str.Split('/')[0];

                string pno = (String)(Session["admin"]);
                String query = "Insert into UserIN(ReqNo,PNo,Mcode,Mdesc,ReqDate,AppDate,QtySp,ReqQty,AppStatus,ApprovedQty) Values(@ReqNo,@PNo,@Mcode,@Mdesc,@ReqDate,'-',@QtySp,@ReqQty,'N','-')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@ReqNo", Label2.Text);
                cmd.Parameters.AddWithValue("@ReqDate", std);
                cmd.Parameters.AddWithValue("@ReqQty", mqty.Text);
                cmd.Parameters.AddWithValue("@QtySp", mstock.Text);
                cmd.Parameters.AddWithValue("@Mcode", mcode.Text);
                cmd.Parameters.AddWithValue("@PNo", pno);
                cmd.Parameters.AddWithValue("@Mdesc", text_matdesc.SelectedItem.Text);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Admin_Status.aspx");

            }
            con.Close();

        }
    }
}