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
    public partial class Mat_Master1 : System.Web.UI.Page
    {


        static string constr = ConfigurationManager.ConnectionStrings["SubStrConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("Default.aspx");
            }
           
            if (!this.IsPostBack)
            {

                con.Open();

                SqlCommand cmd = new SqlCommand("SELECT Mcode, Mdesc FROM Stock where Loc = 'SYSTEMS SUBSTORE'");

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
                

            }
            text_matdesc.Items.Insert(0, new ListItem("--Select --", "0"));

        }

       

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            con.Open();
            double a, b,c;
            a = b =c= 0;
            string str = mstock.Text;
            a = double.Parse(str);
            string str1 = newstock.Text;
            b = double.Parse(str1);
            if (b == 0)
            {

                lbl_msg.Text = "Invalid Quantity";
            }
            else
            {
                c = b + a;
                String str2 = c.ToString();

                String q = "update Stock set Qty=@Qty where Mdesc=@Mdesc ";
                SqlCommand cmd = new SqlCommand(q, con);
                cmd.Parameters.AddWithValue("@Mdesc", text_matdesc.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Qty", str2);
                cmd.ExecuteNonQuery();

                lbl_msg.Visible = false;
                lbl_submit.Visible = true;

                lbl_submit.Text="CORRECT CREDENTIALS SUBMITTED";
                mstock.Text = "";
                newstock.Text = "";
            }
            con.Close();
        }

        protected void text_matdesc_SelectedIndexChanged(object sender, EventArgs e)
        {
           con.Open();
            if (text_matdesc.SelectedItem != null)
            {


                string str = "select Qty from Stock where Mdesc='" + text_matdesc.SelectedItem.Text + "'";
                SqlCommand com = new SqlCommand(str, con);
                SqlDataReader r = com.ExecuteReader();
                while (r.Read())
                {
                    mstock.Text = r["Qty"].ToString();
                    
                   // Session["pass_desc"] = text_matdesc.SelectedItem.Text;

                }
                r.Close();

            }
            con.Close();
        }

        protected void mstock_TextChanged(object sender, EventArgs e)
        {

        }

       
        protected void newstock_TextChanged(object sender, EventArgs e)
        {

        }
    }
}