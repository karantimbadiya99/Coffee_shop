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
    public partial class BookTable : System.Web.UI.Page
    {
        //SqlConnection con;
        //SqlCommand cmd;
        //SqlDataAdapter da;
        //DataSet ds;
        //Class2 cs;
        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    getcon();
        //    fillgrid();
        //}
        //void getcon()
        //{
        //    cs = new Class2();
        //    cs.startcon();
        //}


        //void fillgrid()
        //{
        //    cs = new Class2();
        //    getcon();
        //    GridView1.DataSource = cs.filldata();
        //    GridView1.DataBind();
        //}

        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        Class1 cs;

        void getcon()
        {
            cs = new Class1();
            con = cs.startcon();
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getcon();
                fillgrid();
            }
        }

        void fillgrid()
        {
            getcon();
            string query = "SELECT Id, Name, Email, Date, People, Request FROM booking_tbl";
            cmd = new SqlCommand(query, con);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();

            con.Close();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_delete")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                delete_booking(id);
                fillgrid();
            }
        }

        //void delete_booking(int id)
        //{
        //    getcon();
        //    string query = "DELETE FROM booking_tbl WHERE Id = @ID";
        //    cmd = new SqlCommand(query, con);
        //    cmd.Parameters.AddWithValue("@ID", id);
        //    cmd.ExecuteNonQuery();
        //    con.Close();
        //}
        void delete_booking(int id)
        {
            getcon();
            cmd = new SqlCommand("DELETE FROM booking_tbl WHERE Id = '" + id + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}
