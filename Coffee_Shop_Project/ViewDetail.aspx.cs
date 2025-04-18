using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Coffee_Shop_Project
{
    public partial class ViewDetail : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;
        Class1 cs;
        PagedDataSource pg;
        int row;
        int p, pid;

        string name, dec, price, img;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            display();
        }
        void getcon()
        {
            cs = new Class1();
            cs.startcon();
        }

        void display()
        {
            if (Convert.ToInt32(Request.QueryString["pid"]) != 0)
            {
                getcon();
                da = new SqlDataAdapter("select * from Products where Id='" + Request.QueryString["pid"] + "' ", cs.startcon());
                ds = new DataSet();
                da.Fill(ds);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void dlProducts_ItemCommand(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "cmd_AddToCart")
            {
                getcon();
                int User_Id = Convert.ToInt16(Session["User_ID"]);
                int Pro_id = Convert.ToInt16(e.CommandArgument);
                Session["Pro_id"] = Pro_id;
                ViewState["Pro_Id"] = Pro_id;

                getInfo();
                cmd = new SqlCommand("insert into cart_tbl (User_Id,Pro_Id,name,price,image) Values ('" + User_Id + "','" + Pro_id + "','" + name + "','" + price + "','" + img + "')", cs.startcon());
                cmd.ExecuteNonQuery();
            }
            if (e.CommandName == "cmd_order")
            {
                getcon();
                int User_Id = Convert.ToInt16(Session["User_ID"]);
                int Pro_id = Convert.ToInt16(e.CommandArgument);
                Session["Pro_id"] = Pro_id;
                ViewState["Pro_Id"] = Pro_id;

                getInfo();
                cmd = new SqlCommand("Insert into Order_tbl (U_Id,Product,Price) Values('" + User_Id + "','" + name + "','" + price + "')", cs.startcon());
                cmd.ExecuteNonQuery();

            }
        }
        void getInfo()
        {
            getcon();
            da = new SqlDataAdapter("select * from Products where Id='" + ViewState["Pro_Id"] + "'", cs.startcon());
            ds = new DataSet();
            da.Fill(ds);

            name = ds.Tables[0].Rows[0][1].ToString();
            dec = ds.Tables[0].Rows[0][2].ToString();
            price = ds.Tables[0].Rows[0][3].ToString();
            img = ds.Tables[0].Rows[0][5].ToString();
        }

        
        
    }
}