using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Runtime.InteropServices;
namespace Coffee_Shop_Project
{
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        Class1 cs;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            lblUser.ForeColor = System.Drawing.Color.White;
            // Debugging: Print session values to the Output Window
            System.Diagnostics.Debug.WriteLine("Session Check: User Email = " + (Session["User Email"] ?? "NULL"));

            if (Session["User Email"] != null)
            {
                lblUser.Text = "Welcome, " + Session["User Email"].ToString();
            }
            else
            {
                lblUser.Text = "Welcome, Guest!";
                
            }
        }
        void getcon()
        {
            cs = new Class1();
            cs.startcon();
        }
        protected void btnbooking_Click(object sender, EventArgs e)
        {
            getcon();

            // Check if the user is logged in
            if (Session["UserID"] == null)
            {
                // Store booking details in session before redirecting
                Session["Name"] = txtname.Text;
                Session["Email"] = txtemail.Text;
                Session["Date"] = txtdate.Text;
                Session["People"] = txtpeople.Text;
                Session["Request"] = txtrequest.Text;

                // Store return URL
                Session["ReturnUrl"] = "Reservation.aspx";

                // Redirect user to login page
                Response.Redirect("Reservation.aspx");

                return;
            }

            // User is logged in, proceed with booking
            cs.insert_booking(txtname.Text, txtemail.Text, txtdate.Text, txtpeople.Text, txtrequest.Text);


            // Show success message
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Booking Successful!');", true);
        }
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtdate.Text = (Calendar1.SelectedDate.ToShortDateString() + " " + txttime.Text + " " + DropDownList1.SelectedItem).ToString();
            Calendar1.Visible = false;

        }

        protected void btnselectdate_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void btnbooking_Click1(object sender, EventArgs e)
        {

        }
    }
}