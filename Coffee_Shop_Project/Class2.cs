using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Configuration;
namespace Coffee_Shop_Project
{
    public class Class2
    {
        //string s = ConfigurationManager.ConnectionStrings["db_book"].ToString();

        //SqlConnection con;
        //SqlCommand cmd;
        //SqlDataAdapter da;
        //DataSet ds;

        //public void startcon()
        //{
        //    con = new SqlConnection(s);
        //    con.Open();
        //}

        //public void insert(string nm, string eml, string dt, string tm, string person)
        //{
        //    cmd = new SqlCommand("insert into Reservation_tbl(Name,Email,Date,Time,Person)" +
        //        "values('" + nm + "','" + eml + "','" + dt + "','" + tm + "','" + person + "')", con);
        //    cmd.ExecuteNonQuery();
        //}

        //public void update(int Id, string nm, string eml, string dt, string tm, string person)
        //{
        //    cmd = new SqlCommand("update Reservation_tbl set Name='" + nm + "',Email='" + eml + "',Date='" + dt + "',Time='" + tm + "',Person='" + person + "' where Id='" + Id + "'", con);
        //    cmd.ExecuteNonQuery();
        //}

        //public DataSet filldata()
        //{
        //    da = new SqlDataAdapter("select * from Reservation_tbl", con);
        //    ds = new DataSet();
        //    da.Fill(ds);
        //    return ds;
        //}
        //public DataSet select(int id)
        //{
        //    da = new SqlDataAdapter("select * from Reservation_tbl where Id='" + id + "'", con);
        //    ds = new DataSet();
        //    da.Fill(ds);
        //    return ds;
        //}
    }
}