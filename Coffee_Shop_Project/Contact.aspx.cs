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
using System.Runtime.InteropServices;

namespace Coffee_Shop_Project
{
    public partial class Contact : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        Class1 cs;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }
        void getcon()
        {
            cs = new Class1();
            cs.startcon();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Button1.Text == "Send Message")
            {
                getcon();
                cs.insertCon(txtname.Text, txtemail.Text, txtsubject.Text, txtmessage.Text);
            }
        }
    }
}