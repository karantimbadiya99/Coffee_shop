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
    public partial class Login : System.Web.UI.Page
    {

        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        Class1 cs;
        int i;
        void getcon()
        {
            cs = new Class1();
            cs.startcon();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();

        }

       
        protected void btnLogin_Click(object sender, EventArgs e)
        {

        }

        // for the cart 
        //void id()
        //{
        //    cs.startcon();
        //    da = new SqlDataAdapter("select * from SignUp_tbl Where Email = '" + txteml.Text + "' AND Password = '" + txtpass.Text + "' ", con);
        //    ds = new DataSet();
        //    da.Fill(ds);

        //    int id = Convert.ToInt16(ds.Tables[0].Rows[0][0].ToString());
        //    Session["ID"] = id;
        //}

        //protected void btn_Login_Click(object sender, EventArgs e)
        //{
        //    connection();
        //    try
        //    {
        //        if (txteml.Text == "" || txtpass.Text == "")
        //        {
        //            Response.Write("<script>alert('Please Enter Email And Password');</script>");
        //        }
        //        else if (txteml.Text == "admin" || txtpass.Text == "admin@123")
        //        {
        //            Response.Redirect("Admin/AddMenu.aspx");
        //        }
        //        else
        //        {
        //            connection();
        //            da = new SqlDataAdapter("select count(*) from Login_tbl where UserName = '" + txteml.Text + "' and Password = '" + txtpass.Text + "' ", con);
        //            DataTable dt = new DataTable();
        //            da.Fill(dt);
        //            if (dt.Rows[0][0].ToString() == "1")
        //            {
        //                Response.Redirect("Home.aspx");
        //            }

        //            else
        //            {
        //                Response.Write("<script>alert('Not Valid Values');</script>");
        //            }
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        Response.Write(ex.Message);
        //    }
        //    finally
        //    {
        //        con.Close();
        //    }
        //}

        protected void signin_Click(object sender, EventArgs e)
        {
            //getcon();
            //cmd = new SqlCommand("SELECT ID, Role FROM SignUp_tbl WHERE Email='" + txteml.Text + "' AND Password='" + txtpass.Text + "'", cs.startcon());
            //SqlDataReader reader = cmd.ExecuteReader();

            //if (reader.Read())
            //{
            //    // Store user session
            //    Session["UserID"] = reader["ID"].ToString(); // Store user ID
            //    Session["UserRole"] = reader["Role"].ToString();
            //    Session["UserEmail"] = txteml.Text;

            //    reader.Close();

            //    // Check if booking details exist in session
            //    if (Session["Name"] != null)
            //    {
            //        cs.insert_booking(Session["Name"].ToString(), Session["Email"].ToString(),
            //                          Session["Date"].ToString(), Session["People"].ToString(),
            //                          Session["Request"].ToString());

            //        // Clear session after inserting booking
            //        Session["Name"] = null;
            //        Session["Email"] = null;
            //        Session["Date"] = null;
            //        Session["People"] = null;
            //        Session["Request"] = null;

            //        // Show alert for successful booking
            //        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Booking Successful!');", true);
            //    }

            //    // Redirect user to the intended page or booking page
            //    if (Session["ReturnUrl"] != null)
            //    {
            //        string returnUrl = Session["ReturnUrl"].ToString();
            //        Session["ReturnUrl"] = null;
            //        Response.Redirect(returnUrl);
            //    }
            //    else
            //    {
            //        Response.Redirect("menu.aspx");
            //    }
            //}
            //else
            //{
            //    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid Email or Password!');", true);
            //}

            getcon();
            // Use parameterized query to prevent SQL injection
            cmd = new SqlCommand("SELECT ID, Role FROM SignUp_tbl WHERE Email=@Email AND Password=@Password", cs.startcon());
            cmd.Parameters.AddWithValue("@Email", txteml.Text);
            cmd.Parameters.AddWithValue("@Password", txtpass.Text);

            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                // Store user session
                Session["User ID"] = reader["ID"].ToString(); // Store user ID
                Session["User Role"] = reader["Role"].ToString();
                Session["User Email"] = txteml.Text;

                reader.Close();

                // Check if booking details exist in session
                if (Session["Name"] != null)
                {
                    cs.insert_booking(Session["Name"].ToString(), Session["Email"].ToString(),
                                      Session["Date"].ToString(), Session["People"].ToString(),
                                      Session["Request"].ToString());

                    // Clear session after inserting booking
                    Session["Name"] = null;
                    Session["Email"] = null;
                    Session["Date"] = null;
                    Session["People"] = null;
                    Session["Request"] = null;

                    // Show alert for successful booking
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Booking Successful!');", true);
                }

                // Redirect user based on role
                string userRole = Session["User Role"].ToString();
                if (userRole.Equals("admin", StringComparison.OrdinalIgnoreCase))
                {
                    //id(); 
                    Response.Redirect("admin/Dashboard.aspx"); // Redirect to admin panel
                }
                else
                {
                    Response.Redirect("Home.aspx"); // Redirect to user panel
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid Email or Password!');", true);
            }
        }

        void id()
        {
            getcon();
            da = new SqlDataAdapter("select * from reg_tbl Where Email='"+txteml.Text+"' AND Password='"+txtpass.Text+"'", cs.startcon());
            

            ds = new DataSet();
            da.Fill(ds);

            int id = Convert.ToInt16(ds.Tables[0].Rows[0][0].ToString());
            Session["User_ID"] = id;
        }

        protected void btnsignup_Click(object sender, EventArgs e)
        {
            if (btnsignup.Text == "SIGN UP")
            {
                getcon();
                cmd = new SqlCommand("INSERT INTO SignUp_tbl (Name, Email, Password, Role) VALUES ('" + txtname.Text + "', '" + txtemail_signup.Text + "', '" + txtpswd.Text + "', '" + ddlRole.SelectedValue + "')", cs.startcon());
                int result = cmd.ExecuteNonQuery();

                if (result > 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Signup Successful! Please login.');", true);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Signup Failed. Try Again.');", true);
                }
            }
        }
    }
}