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
        SqlDataAdapter da;
        SqlCommand cmd;
        DataSet ds;
        Class1 cs;
        PagedDataSource pg;

        string Constr = ConfigurationManager.ConnectionStrings["dbconnect"].ConnectionString;
        string name, price, image;
        int Pro_id, User_Id;


        void getcon()
        {
            cs = new Class1();
            cs.startcon();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            connection();
            display();
        }
        protected void Cart_List_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "cmd_remove_item")
            {
                Pro_id = Convert.ToInt32(e.CommandArgument);
                User_Id = Convert.ToInt32(Session["User ID"]);
                connection();
                cmd = new SqlCommand("delete from cart_tbl where User Id = '" + User_Id + "' && Pro_Id = '" + Pro_id + "'  ", con);
                cmd.ExecuteNonQuery();
                display();
            }
        }


        protected void btn_remove_Click(object sender, EventArgs e)
        {
            connection();
            Pro_id = Convert.ToInt32(Session["Pro_id"]);
            User_Id = Convert.ToInt32(Session["User ID"]);
            cmd = new SqlCommand("delete from cart_tbl where User Id = '" + User_Id + "' AND Pro_Id = '" + Pro_id + "'  ", con);
            cmd.ExecuteNonQuery();
            display();
        }
        public void connection()
        {
            con = new SqlConnection(Constr);
            con.Open();
        }
        void display()
        {
            connection();
            da = new SqlDataAdapter("select * from cart_tbl where User_Id='" + Session["User ID"] + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            Cart_List.DataSource = ds;
            Cart_List.DataBind();

        }
        //void display()
        //{
        //    getcon();
        //    da = new SqlDataAdapter("select * from cart_tbl where u_Id='" + Session["User_ID"] + "'", cs.startcon());
        //    ds = new DataSet();
        //    da.Fill(ds);
        //    Cart_List.DataSource = ds;
        //    Cart_List.DataBind();

        //}
    }
}