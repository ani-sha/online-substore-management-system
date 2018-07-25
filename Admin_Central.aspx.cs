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
    public partial class Admin_Central : System.Web.UI.Page
    {
        static string constr = ConfigurationManager.ConnectionStrings["SubStrConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            lbl_msg.Visible = false;
            if (!this.IsPostBack)
            {

                con.Open();
                
                SqlCommand cmd = new SqlCommand("SELECT Mcode,Mdesc FROM Stock where Loc='CENTRAL STORE'");
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;


                SqlDataReader dr = cmd.ExecuteReader();


                while (dr.Read())
                {
                    text_desc.DataSource = dr;
                    text_desc.DataTextField = "Mdesc";

                    text_desc.DataValueField = "Mcode";

                    text_desc.DataBind();

                }
                dr.Close();

                
            }
            string str = DateTime.Now.ToString();
            str = str.Split(' ')[0];
            String std = str.Split('/')[2] + '-' + str.Split('/')[1] + '-' + str.Split('/')[0];
            txt_appdate.Text = std;
            text_desc.Items.Insert(0, new ListItem("--Select --", "0"));
            con.Close();
        }
        protected void text_desc_SelectedIndexChanged(object sender, EventArgs e)
        {


            con.Open();
            if (text_desc.SelectedItem != null)
            {


                string str = "select Mcode from stock where Mdesc='" + text_desc.SelectedItem.Text + "'";
                SqlCommand com = new SqlCommand(str, con);
                SqlDataReader r = com.ExecuteReader();
                while (r.Read())
                {
                   
                    text_mcode.Text = r["Mcode"].ToString();

                   

                }
                r.Close();

            }
            con.Close();
        }

        protected void text_userpno_TextChanged(object sender, EventArgs e)
        {
            con.Open();
            string userpno = text_userpno.Text;
            string s = "select pay_name,pay_dept_cd from mnr_emp_mst where pay_pers_no = @userpno";
            SqlCommand cmd1 = new SqlCommand(s, con);

            cmd1.Parameters.AddWithValue("@userpno", text_userpno.Text);
            
            SqlDataReader dr = cmd1.ExecuteReader();

            while (dr.Read())
            {
                text_username.Text = dr["pay_name"].ToString();
                text_userdpt.Text = dr["pay_dept_cd"].ToString();

            }
            dr.Close();
            con.Close();
        }

        protected void text_reqpno_TextChanged(object sender, EventArgs e)
        {
            con.Open();
            string reqpno = text_reqpno.Text;
            string s = "select pay_name,pay_dept_cd from mnr_emp_mst where pay_pers_no = @reqpno";
            SqlCommand cmd1 = new SqlCommand(s, con);

            cmd1.Parameters.AddWithValue("@reqpno", text_reqpno.Text);

            SqlDataReader dr = cmd1.ExecuteReader();

            while (dr.Read())
            {
                text_reqname.Text = dr["pay_name"].ToString();
                text_reqdpt.Text = dr["pay_dept_cd"].ToString();


            }
            dr.Close();
            con.Close();
        }

        protected void text_appqty_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txt_appdate_TextChanged(object sender, EventArgs e)
        {

        }

        protected void tonner_SelectedIndexChanged(object sender, EventArgs e)
        {

           



        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            con.Open();
            string str = DateTime.Now.ToString();
            str = str.Split(' ')[0];
            String std = str.Split('/')[2] + '-' + str.Split('/')[1] + '-' + str.Split('/')[0];
            txt_appdate.Text = std;

            string choice = tonner.SelectedItem.Text;
            string yes = "Yes";
            string no = "No";
            string n="";
            if (choice.Equals(yes) == true)
            {
                n = text_appqty.Text;


            }
            else if (choice.Equals(no) == true)
            {
                n = "0";

            }

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "Insert into Central_Store(SIVNo,Mcode,Mdesc,UserPNo,UserName,UserDeptCode,ReqPNo,ReqName,ReqDeptCode,ApprovedQty,ReqDate) Values(@SIVNo,@Mcode,@Mdesc,@UserPNo,@UserName,@UserDeptCode,@ReqPNo,@ReqName,@ReqDeptCode,@ApprovedQty,@ReqDate)";


            cmd.Parameters.AddWithValue("@SIVNo", text_siv.Text);
            cmd.Parameters.AddWithValue("@ReqDate", txt_appdate.Text);
            cmd.Parameters.AddWithValue("@UserName",text_username.Text );
            cmd.Parameters.AddWithValue("@ReqName", text_reqname.Text);
            cmd.Parameters.AddWithValue("@UserPNo", text_userpno.Text);
            cmd.Parameters.AddWithValue("@ReqPNo", text_reqpno.Text);
            cmd.Parameters.AddWithValue("@UserDeptCode", text_userdpt.Text);
            cmd.Parameters.AddWithValue("@ReqDeptCode", text_reqdpt.Text);
            cmd.Parameters.AddWithValue("@Mcode",text_mcode.Text);
            cmd.Parameters.AddWithValue("@Mdesc", text_desc.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@ApprovedQty", n);




            cmd.ExecuteNonQuery();
            lbl_msg.Visible = true;
            lbl_msg.Text = "APPROVED";
            text_siv.Text = "";
            text_mcode.Text = "";
            text_userpno.Text = "";
            text_username.Text = "";
            text_userdpt.Text = "";
            text_reqpno.Text = " ";
            text_reqdpt.Text = " ";
            text_reqname.Text = " ";

            text_appqty.Text = " ";

            con.Close();
        }

        protected void text_mcode_TextChanged(object sender, EventArgs e)
        {

        }

        protected void text_username_TextChanged(object sender, EventArgs e)
        {

        }

        protected void text_userdpt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void text_reqname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void text_reqdpt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void text_rno_TextChanged(object sender, EventArgs e)
        {

        }
    }
}