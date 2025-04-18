using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Coffee_Shop_Project
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
            cmd = new SqlCommand("SELECT * FROM Order_tbl Where U_Id = '"+Session["User_ID"]+"'", con);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        //void getcon()
        //{
        //    cs = new Class1();
        //    cs.startcon();
        //}
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
        }
        //void delete_Order(int id)
        //{
        //    getcon();
        //    cmd = new SqlCommand("DELETE FROM Order_tbl WHERE O_Id ='" + id + "' ", cs.startcon());
        //    cmd.ExecuteNonQuery();
        //}
        //void fillgrid()
        //{
        //    startcon();
        //    cmd = new SqlCommand("SELECT Id, Name FROM Order_tbl", con);
        //    da = new SqlDataAdapter(cmd);
        //    ds = new DataSet();
        //    da.Fill(ds);

        //    GridView1.DataSource = ds;
        //    GridView1.DataBind();

        //    con.Close();
        //}
    }
}