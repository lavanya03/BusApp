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
    public partial class BookingDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Int64 busID = Convert.ToInt64( Request.QueryString["BusID"].ToString());
                if (busID > 0) {
                    try
                    {
                        SqlConnection con = new SqlConnection("Data Source=PC3;Initial Catalog=BusApp;Integrated Security=True");
                        con.Open();
                        SqlCommand cmd = new SqlCommand("Select * from BusDetailsNew where BusID ='" + busID + "'", con);
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        if (dt.Rows.Count > 0)
                        {
                            gvBusDetails.DataSource = dt;
                            gvBusDetails.DataBind();
                        }
                    }
                    catch (Exception ex)
                    {

                    }
                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            Int64 busID = Convert.ToInt64(Request.QueryString["BusID"].ToString());
            try
            {
                SqlConnection con = new SqlConnection("Data Source=PC3;Initial Catalog=BusApp;Integrated Security=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from BusDetailsNew where BusID ='" + busID + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Session["BusName"] = dt.Rows[0]["BusName"].ToString();
                    Session["Category"] = dt.Rows[0]["Category"].ToString();
                    Session["Source"] = dt.Rows[0]["Source"].ToString();
                    Session["Destination"] = dt.Rows[0]["Destination"].ToString();
                    Session["DepartureTime"] = dt.Rows[0]["DepartureTime"].ToString();
                    Session["ArrivalTime"] = dt.Rows[0]["ArrivalTime"].ToString();
                    Session["RatePerSeat"] = dt.Rows[0]["RatePerSeat"].ToString();
                    Session["Name"] = txtName.Text;
                    Session["PhoneNo"] =txtContact.Text;
                    Session["TotalSeat"] = txtSeats.Text;
                }
            }
            catch(Exception ex) { 
            
            }
            
        }
    }
}