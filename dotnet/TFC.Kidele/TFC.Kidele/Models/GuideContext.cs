using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TFC.Kidele.Models
{
    public class GuideContext : DbContext
    {
        public GuideContext(DbContextOptions<GuideContext> options)
           : base(options)
        { }

        public DbSet<Address> Address { get; set; }
        public DbSet<Category> Category { get; set; }
        public DbSet<City> City { get; set; }
        public DbSet<District> District { get; set; }
        public DbSet<Person> Person { get; set; }
        public DbSet<State> State { get; set; }
        public DbSet<SubCategory> SubCategory { get; set; }
        public DbSet<User> User { get; set; }

    }
}
