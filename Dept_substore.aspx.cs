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
    public partial class Dept_substore : System.Web.UI.Page
    {
        static string constr = ConfigurationManager.ConnectionStrings["SubStrConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {

                con.Open();

                SqlCommand cmd2 = new SqlCommand("SELECT * FROM Dept ", con);


                SqlDataReader dr = cmd2.ExecuteReader();


                while (dr.Read())
                {
                    text_dept.DataSource = dr;
                    text_dept.DataTextField = "DeptName";


                    text_dept.DataValueField = "DeptCode";

                    text_dept.DataBind();

                }
                dr.Close();
            


                con.Close();
            }
            text_dept.Items.Insert(0, new ListItem("All", "0"));
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            con.Open();
            String check = text_dept.SelectedItem.Text;
            String n = "All";
            if (check.Equals(n)==true)
            {
                SqlCommand cmd = new SqlCommand("select u.ReqNo,u.PNo,u.Mcode,m.pay_name,d.DeptCode,u.Mdesc,u.ReqDate,u.AppDate,u.ReqQty,u.AppStatus,u.ApprovedQty from UserIN u,Dept d,mnr_emp_mst m where m.pay_dept_cd=d.DeptCode and u.PNo = m.pay_pers_no and ReqDate IN(@FromDate,@ToDate) ", con);
                
                cmd.Parameters.AddWithValue("@FromDate", from_date.Text);
                cmd.Parameters.AddWithValue("@ToDate", to_date.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }

            else
            { 
                String count = "Select Count (*) from UserIN u,Dept d,mnr_emp_mst m where m.pay_dept_cd=d.DeptCode and u.PNo = m.pay_pers_no and d.DeptName=@DeptName";
                SqlCommand cmd1 = new SqlCommand(count, con);
                cmd1.Parameters.AddWithValue("@DeptName", text_dept.SelectedItem.Text);
                SqlDataReader r = cmd1.ExecuteReader();
                if(r.Read())
                {
                    SqlCommand cmd3 = new SqlCommand("select u.ReqNo,u.PNo,u.Mcode,m.pay_name,d.DeptCode,u.Mdesc,u.ReqDate,u.AppDate,u.ReqQty,u.AppStatus,u.ApprovedQty from UserIN u,Dept d,mnr_emp_mst m where m.pay_dept_cd=d.DeptCode and u.PNo = m.pay_pers_no and d.DeptName=@DeptName and ReqDate IN(@FromDate,@ToDate) ", con);
                    cmd3.Parameters.AddWithValue("@DeptName", text_dept.SelectedItem.Text);
                    cmd3.Parameters.AddWithValue("@FromDate", from_date.Text);
                    cmd3.Parameters.AddWithValue("@ToDate", to_date.Text);
                    SqlDataAdapter da = new SqlDataAdapter(cmd3);
                    DataSet ds1 = new DataSet();
                    da.Fill(ds1);
                    GridView1.DataSource = ds1;
                    GridView1.DataBind();
                   
                }
                else

                {
                    lbl_msg.Visible = true;
                    lbl_msg.Text = "No Records Found!";
                }
                r.Close();
                
            }
            
            con.Close();
        }

        protected void from_date_TextChanged(object sender, EventArgs e)
        {

        }

        protected void to_date_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}