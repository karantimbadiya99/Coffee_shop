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

namespace Coffee_Shop_Project
{
    public partial class Reservation : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        Class1 cs;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            //fillgrid();
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
                Session["ReturnUrl"] = "booking.aspx";

                // Redirect user to login page
                Response.Redirect("login2_master.aspx");
                return;
            }

            // User is logged in, proceed with booking
            cs.insert_booking(txtname.Text, txtemail.Text, txtdate.Text, txtpeople.Text, txtrequest.Text);

            // Show success message
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Booking Successful!');", true);
        }


        //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "cmd_edt")
        //    {
        //        int id = Convert.ToInt16(e.CommandArgument);
        //        ViewState["Id"] = id;
        //        btnbook.Text = "Update";
        //        filltext();//paring

        //    }
        //}
        //void filltext()
        //{
        //    cs = new Class2();
        //    getcon();
        //    ds = new DataSet();
        //    ds = cs.select(Convert.ToInt16(ViewState["Id"]));
        //    nm.Text = ds.Tables[0].Rows[0][1].ToString();
        //    eml.Text = ds.Tables[0].Rows[0][2].ToString();
        //    Date.Text = ds.Tables[0].Rows[0][3].ToString();
        //    Time.Text = ds.Tables[0].Rows[0][4].ToString();
        //}

        //void fillgrid()
        //{
        //    cs = new Class2();
        //    getcon();
        //    GridView1.DataSource = cs.filldata();
        //    GridView1.DataBind();
        //}

    }
}