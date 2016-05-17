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
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=PC3;Initial Catalog=BusApp;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void imgbtnSave_Click(object sender, ImageClickEventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into UserDetails(UserName,Email,Password,InsertDate) values('" + txtFirstName.Text + "','" + txtEmail.Text + "','" + txtPassword.Text+ "','" + System.DateTime.Now + "')", con);

            cmd.CommandType = CommandType.Text;

            try
            {

                con.Open();
                cmd.ExecuteNonQuery(); 
                con.Close();

               

            }

            catch (Exception ex)
            {

               // Literal1.Text = ex.Message;

            }
            Response.Redirect("Login.aspx");
        }
    }
}