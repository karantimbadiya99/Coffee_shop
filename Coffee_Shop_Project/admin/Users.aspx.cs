﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace Coffee_Shop_Project.admin
{
    public partial class User_Details : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        Class1 cs;
        String fnm, p1, p2, p3;
        string[] pref = new string[3];

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getcon();
                fillgrid();
            }
        }
        void getcon()
        {
            cs = new Class1();
            con = cs.startcon();
            if (con.State == ConnectionState.Closed)
            {
                con.Open();  
            }
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_dtl") 
            {
                int id = Convert.ToInt32(e.CommandArgument);
                delete_user(id);
                fillgrid();
            }
        }
        void delete_user(int id)
        {
            getcon();
            cmd = new SqlCommand("DELETE FROM SignUp_tbl WHERE ID='" + id + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        void fillgrid()
        {
            getcon();
            string query = "SELECT ID, Name, Email,Role, Password FROM SignUp_tbl";
            cmd = new SqlCommand(query, con);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();

            con.Close();
        }
    }
}