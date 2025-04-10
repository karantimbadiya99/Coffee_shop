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

namespace Coffee_Shop_Project.admin
{
    public partial class Add_Category : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        Class1 cs;
        protected void Page_Load(object sender, EventArgs e)
        {
            cs = new Class1();
            con = cs.startcon();
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            fillgrid();

            //getcon();
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
        void fillgrid()
        {
            getcon();
            cmd = new SqlCommand("SELECT Id, Name FROM Categories", con);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();

            con.Close();
        }

        //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
            
        //}
        void delete_categories(int id)
        {
            getcon();
            cmd = new SqlCommand("DELETE FROM Categories WHERE Id ='" + id + "' ", cs.startcon());
            cmd.ExecuteNonQuery();
        }

        protected void btnAddCategory_Click1(object sender, EventArgs e)
        {
            if (btnAddCategory.Text == "Add Category")
            {
                getcon();
                cs.addCategory(txtCategoryName.Text);
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_delete")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                delete_categories(id);
                fillgrid();
            }
        }
    }
}