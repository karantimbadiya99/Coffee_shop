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
            getcon();
            fillgrid();
        }
        void getcon()
        {
            cs = new Class1();
            cs.startcon();
        }
        void fillgrid()
        {
            cs = new Class1();
            getcon();
            GridView1.DataSource = cs.filldata();
            GridView1.DataBind();
        }
    }
}