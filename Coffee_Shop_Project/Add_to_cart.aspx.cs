using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Configuration;

namespace Coffee_Shop_Project
{
    public partial class Add_to_cart : System.Web.UI.Page
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
            display();
        }

        void display()
        {
            getcon();
            da = new SqlDataAdapter("select * from cart_tbl where u_Id='" + Session["User_ID"] + "'", cs.startcon());
            ds = new DataSet();
            da.Fill(ds);
            Cart_List.DataSource = ds;
            Cart_List.DataBind();

        }
    }
}