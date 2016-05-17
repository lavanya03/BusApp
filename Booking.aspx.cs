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
    public partial class Booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }
        public void BindGrid() {
            try
            {
                SqlConnection con = new SqlConnection("Data Source=PC3;Initial Catalog=BusApp;Integrated Security=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from BusDetailsNew", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    gvBusDetails.DataSource = dt;
                    gvBusDetails.DataBind();
                }
            }
            catch (Exception ex) { 
            
            }
        }

        protected void gvgvBusDetails_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditOptions")
            {

                int BusID = Convert.ToInt32(e.CommandArgument);
                Response.Redirect("BookingDetails.aspx?BusID=" + BusID);
            }

        }
    }
}