using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace InvoiceApplication
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["InvoiceDb"].ConnectionString);
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM InvoiceLogin WHERE UserId=@UserId and Password=@Password", con);
                cmd.Parameters.AddWithValue("@UserId", UserId.Text);
                cmd.Parameters.AddWithValue("@Password", Password.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                con.Open();
                int invoice1 = cmd.ExecuteNonQuery();
                con.Close();
                if (dt.Rows.Count > 0)
                {
                    Response.Redirect("InvoicePage.aspx");
                }
                else
                {
                    InvalidMsg.Text = "Your User ID or Password is invalid";
                    InvalidMsg.ForeColor = System.Drawing.Color.Red;
                }

            }

        }
    }
}