using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Odbc;
using System.Configuration;

namespace SYSTEMS_SUBSTORE
{
    public partial class Default : System.Web.UI.Page
    {
        static string connStr_substr = ConfigurationManager.ConnectionStrings["substr"].ConnectionString;
        OdbcConnection conn_substr = new OdbcConnection(connStr_substr);
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear();
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            HttpCookie id = new HttpCookie("id");
            id.Value = txt_uid.Text.Trim();
            id.Expires = DateTime.Now.AddHours(1);
            
            OdbcCommand cmd_substr = conn_substr.CreateCommand();
            conn_substr.Open();
            cmd_substr.CommandText = "select password from login11 where " +
                                        " pay_pers_no = '" + txt_uid.Text.Trim() + "' and " +
                                        " password = '" + txt_pass.Text.Trim() +"'";
            OdbcDataReader dr = cmd_substr.ExecuteReader();
            if (dr.Read())
            {
                
                dr.Close();
                Response.Cookies.Add(id);
                
               
                cmd_substr.CommandText = "select access from login11 where " +
                                        " pay_pers_no = '" + txt_uid.Text.Trim() +"' ";
                OdbcDataReader acc = cmd_substr.ExecuteReader();
                while (acc.Read())
                {

                    string var = acc["access"].ToString();
                    string user = "user";
                    if (var.Equals(user)==true)
                    {
                        Session["user"] = txt_uid.Text.Trim();
                        Response.Redirect("User_CR.aspx");
                    }


                    else
                    {
                        Session["admin"] = txt_uid.Text.Trim();
                        Response.Redirect("Admin_CR.aspx");
                    }

                    
                }
            }
            else
            {
                lbl_error.Visible = true;
            }
        }
    }
}