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

namespace Coffee_Shop_Project
{
    public partial class Reg : System.Web.UI.Page
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

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_edit")
            {
                int id = Convert.ToInt16(e.CommandArgument);
                ViewState["id"] = id;
                btnRegister.Text = "Update";
                filltext();
            }
            else
            {
                cs = new Class1();
                int id = Convert.ToInt16(e.CommandArgument);
                ViewState["id"] = id;
                cs.delete(Convert.ToInt16(ViewState["id"]));
                fillgrid();
            }
        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (btnRegister.Text == "Register")
            {
                getcon();
                cs.insert(txtFullName.Text, rbGender.Text, txtEmail.Text, txtPhoneNumber.Text, txt_paswd.Text, txt_c_pswd.Text);

                fillgrid();
            }
            else
            {
                cs = new Class1();
                getcon();
                cs.update(Convert.ToInt16(ViewState["Id"]), txtFullName.Text, rbGender.Text, txtEmail.Text, txtPhoneNumber.Text, txt_paswd.Text, txt_c_pswd.Text);

                fillgrid();
            }
        }

        void filltext()
        {
            cs = new Class1();
            getcon();
            ds = new DataSet();
            ds = cs.select(Convert.ToInt16(ViewState["Id"]));
            txtFullName.Text = ds.Tables[0].Rows[0][1].ToString();
            txtEmail.Text = ds.Tables[0].Rows[0][3].ToString();
            txtPhoneNumber.Text = ds.Tables[0].Rows[0][4].ToString();
            txt_paswd.Text = ds.Tables[0].Rows[0][5].ToString();
            txt_c_pswd.Text = ds.Tables[0].Rows[0][6].ToString();


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

