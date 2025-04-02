//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;

//namespace Coffee_Shop_Project.Models
//{
// public class User
// {
//}
//}


public class User
{
    public int Id { get; set; }
    public string Username { get; set; }
    public string Password { get; set; } // Consider using hashed passwords
    public string Role { get; set; } // e.g., Admin, User
}