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

    public class Class1
    {
        string s = ConfigurationManager.ConnectionStrings["dbconnect"].ToString();

        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        public SqlConnection startcon()
        {
            con = new SqlConnection(s);
            con.Open();
            return con;
        }

        public void signup_insert(string name, string email, string pass)
        {
            cmd = new SqlCommand("insert into SignUp_tbl (Name , Email , Password)values('" + name + "','" + email + "','" + pass + "')", con);
            cmd.ExecuteNonQuery();
        }
        public void insert_booking(string name, string Email, string Date, string People, string Request)
        {
            cmd = new SqlCommand("insert into booking_tbl (Name,Email,Date,People,Request)values('" + name + "','" + Email + "','" + Date + "','" + People + "','" + Request + "')", con);
            cmd.ExecuteNonQuery();
        }
        public void addCategory(string name)
        {
            cmd = new SqlCommand("insert into Categories(Name) values('" + name + "')", con);
            cmd.ExecuteNonQuery();
        }

        //public void insertProduct(string nm, string des, decimal price, string img, int categoryId)
        //{
        //    cmd = new SqlCommand("INSERT INTO Products (Name, Description, Price, Image, CategoryID) VALUES (@Name, @Description, @Price, @Image, @CategoryID)", startcon());

        //    cmd.Parameters.AddWithValue("@Name", nm);
        //    cmd.Parameters.AddWithValue("@Description", des);
        //    cmd.Parameters.AddWithValue("@Price", price);
        //    cmd.Parameters.AddWithValue("@Image", img);
        //    cmd.Parameters.AddWithValue("@CategoryID", categoryId);

        //    cmd.ExecuteNonQuery();
        //}
        public void insertProduct(string nm, string des, decimal price, string img, int categoryId)
        {
            cmd = new SqlCommand("insert into Products (Name,Description,Price,Image,CategoryID) values('" + nm + "','" + des + "','" + price + "','" + img + "','" + categoryId + "')", startcon());
            cmd.ExecuteNonQuery();
        }

       

        //public void updateProduct(int id, string name, string des, decimal price, int catid, string img)
        //{
        //    startcon();
        //    string query = "UPDATE Products SET Name = @Name, Description = @Description, Price = @Price, CategoryId = @CategoryId, Image = @Image WHERE Id = @Id";

        //    cmd = new SqlCommand(query, con);
        //    cmd.Parameters.AddWithValue("@Id", id);
        //    cmd.Parameters.AddWithValue("@Name", name);
        //    cmd.Parameters.AddWithValue("@Description", des);
        //    cmd.Parameters.AddWithValue("@Price", price);
        //    cmd.Parameters.AddWithValue("@CategoryId", catid);
        //    cmd.Parameters.AddWithValue("@Image", img);

        //    cmd.ExecuteNonQuery();
        //    con.Close();
        //}
        public void updateProduct(int id, string name, string des, decimal price, int catid, string img)
        {
            startcon();
            cmd = new SqlCommand("updateProducts set Name='" + name + "',Description='" + des + "',Price='" + price + "',Image='" + img + "'  where Id='" + id + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void delete_product(int id)
        {
            startcon();
            cmd = new SqlCommand("DELETE FROM Products WHERE Id='" + id + "';", con);
            cmd.ExecuteNonQuery();
        }

        public void insertCon(string name, string email, string subject, string message)
        {
            cmd = new SqlCommand("insert into contact_tbl (Name,Email,Subject,Message)values('" + name + "','" + email + "','" + subject + "','" + message + "')", con);
            cmd.ExecuteNonQuery();
        }
        public void insert(string nm, string gen, string eml, string phn, string pswd, string c_pswd)
        {
            cmd = new SqlCommand("insert into reg_tbl(Name,Gender,Email,Phone,Password,Conform_Password)" +
                "values('" + nm + "','" + gen + "','" + eml + "','" + phn + "','" + pswd + "','" + c_pswd + "')", con);
            cmd.ExecuteNonQuery();
        }

        public void update(int Id, string nm, string gen, string eml, string phn, string pswd, string c_pswd)
        {
            cmd = new SqlCommand("update reg_tbl set Name='" + nm + "',Gender='" + gen + "',Email='" + eml + "',Phone='" + phn + "',Password='" + pswd + "',Conform_Password='" + c_pswd + "' where Id='" + Id + "'", con);
            cmd.ExecuteNonQuery();
        }
        public void delete(int id)
        {
            startcon();
            cmd = new SqlCommand("Delete from reg_tbl where Id='" + id + "'", con);
            cmd.ExecuteNonQuery();
        }


        public DataSet filldata()
        {
            da = new SqlDataAdapter("select * from Products", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        public DataSet select(int id)
        {
            da = new SqlDataAdapter("select * from reg_tbl where Id='" + id + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
    }
}