///using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;

//namespace Coffee_Shop_Project.Data
//{
//  public class ApplicationDbContext
//{
//}
//}


using System.Data.Entity;

public class ApplicationDbContext : DbContext
{
    public ApplicationDbContext() : base("DefaultConnection") { }

    public DbSet<User> Users { get; set; }
}