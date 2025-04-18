using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace Coffee_Shop_Project.admin
{
    public partial class Orders : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["dbconnect"].ToString();

        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        void startcon()
        {
            con = new SqlConnection(s);
            con.Open();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Display();

        }
        void Display()
        {
            startcon();
            cmd = new SqlCommand("SELECT * FROM Order_tbl Where U_Id = '" + Session["User_ID"] + "'", con);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}