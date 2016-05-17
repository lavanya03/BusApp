using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace BusApp
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=PC3;Initial Catalog=BusApp;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from UserDetails where Email='" + txtEmail.Text + "' and Password ='" + txtPassword.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session["UserID"] = dt.Rows[0]["UserID"].ToString();
                Response.Redirect("Booking.aspx");

            }
            else
            {
                Response.Write("<script>alert('Please enter valid Username and Password')</script>");
            }
            Response.Redirect("Booking.aspx");
        }
    }
}