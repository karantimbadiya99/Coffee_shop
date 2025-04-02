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
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        String s = ConfigurationManager.ConnectionStrings["dbconnect"].ToString();
        String  p1, p2, p3;
        String[] pref = new string[3];

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (btnRegister.Text == "Register")
            {
                preferences();   //fetch array of preferences
                getcon();

                for (int i = 0; i < 1; i++)
                {
                    if (pref[i] == "Promotional Offers")
                    {
                        p1 = "Promotional Offers";
                        i++;
                    }
                    else
                    {
                        p1 = "Null";
                        i++;
                    }

                    if (pref[i] == "New Products")
                    {
                        p2 = "New Products";
                        i++;
                    }
                    else
                    {
                        p2 = "Null";
                        i++;
                    }

                    if (pref[i] == "Exclusive Deals")
                    {
                        p3 = "Exclusive Deals";
                    }
                    else
                    {
                        p3 = "Null";
                    }
                }
                cmd = new SqlCommand("insert into registration_tbl (Name,Gender,Email,Phone,coffee,p1,p2,p3) " +
                    "values ('" + txtFullName.Text + "','" + rbGender.Text + "','" + txtEmail.Text + "'," +
                    "'" + txtPhoneNumber.Text + "','" + ddlFavoriteCoffee.Text + "','" + p1 + "','" + p2 + "','" + p3 + "')", con);
                cmd.ExecuteNonQuery();
                fillgrid();

            }
            else
            {
                preferences();   //fetch array of preferences
                getcon();

                for (int i = 0; i < 1; i++)
                {
                    if (pref[i] == "Promotional Offers")
                    {
                        p1 = "Promotional Offers";
                        i++;
                    }
                    else
                    {
                        p1 = "Null";
                        i++;
                    }

                    if (pref[i] == "New Products")
                    {
                        p2 = "New Products";
                        i++;
                    }
                    else
                    {
                        p2 = "Null";
                        i++;
                    }

                    if (pref[i] == "Exclusive Deals")
                    {
                        p3 = "Exclusive Deals";
                    }
                    else
                    {
                        p3 = "Null";
                    }
                }
                //cmd = new SqlCommand("update registration_tbl set Name='"+txtFullName.Text+ "'," +
                //    "Gender='" + rbGender.Text + "',Email='" + txtEmail.Text + "',Phone='" + txtPhoneNumber.Text + "'" +
                //    ",coffee='" + ddlFavoriteCoffee.SelectedValue + "',p1='" + p1 + "',p2='" + p2 + "',p3='" + p3 + "'," +
                //    " where Id='" + ViewState["id"] + "' ", con);
                cmd = new SqlCommand("update registration_tbl set Name='"+ txtFullName.Text + "',Gender='"+ rbGender.Text + "',Email='"+ txtEmail.Text + "',Phone='"+ txtPhoneNumber.Text + "',coffee='"+ ddlFavoriteCoffee.SelectedValue + "',p1='"+ p1 + "',p2='"+p2+"',p3='"+p3+ "' where Id='" + ViewState["id"] + "' ", con);
                cmd.ExecuteNonQuery();
                empty();
                fillgrid();
            }
        }



        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            fillgrid();
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_upd")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                ViewState["id"] = id;
                filltext();
                btnRegister.Text = "Update";
            }

            if (e.CommandName == "cmd_del")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                ViewState["id"] = id;
                cmd = new SqlCommand("delete from registration_tbl where Id='" + ViewState["id"] + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        public DataSet select(int id)
        {
            getcon();
            da = new SqlDataAdapter("select * from registration_tbl where Id='" + id + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        void filltext() 
        {
            getcon();
            ds = new DataSet();
            ds = select(Convert.ToInt32(ViewState["id"]));

            txtFullName.Text = ds.Tables[0].Rows[0][1].ToString();
            rbGender.Text = ds.Tables[0].Rows[0][2].ToString();
            txtEmail.Text = ds.Tables[0].Rows[0][3].ToString();
            txtPhoneNumber.Text = ds.Tables[0].Rows[0][4].ToString();
            ddlFavoriteCoffee.SelectedValue = ds.Tables[0].Rows[0][5].ToString();

            if (ds.Tables[0].Rows[0][6].ToString() == "Promotional Offers")
            {
                cbPreferences .Items[0].Selected = true;
            }
            else
            {
                cbPreferences .Items[0].Selected = false;
            }

            if (ds.Tables[0].Rows[0][4].ToString() == "New Products")
            {
                cbPreferences.Items[1].Selected = true;
            }
            else
            {
                cbPreferences .Items[1].Selected = false;
            }

            if (ds.Tables[0].Rows[0][5].ToString() == "Exclusive Deals")
            {
                cbPreferences .Items[2].Selected = true;
            }
            else
            {
                cbPreferences .Items[2].Selected = false;
            }
        }

        void fillgrid()
        {
            //getcon();
            da = new SqlDataAdapter("select * from registration_tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            //GridView1.DataSource = ds;
            //GridView1.DataBind();
        }

        void empty()
        {
            txtFullName.Text = "";
            rbGender.ClearSelection();
            txtEmail.Text = "";
            txtPhoneNumber.Text = "";
            ddlFavoriteCoffee.ClearSelection();
            cbPreferences.ClearSelection();

            btnRegister.Text = "Save";
        }

        void preferences()
        {
            for (int i = 0; i < pref.Length; i++)
            {
                if(cbPreferences.Items[i].Selected==true)
                {
                    pref[i] = cbPreferences.Items[i].Text;
                }
            }
        }
    }
}