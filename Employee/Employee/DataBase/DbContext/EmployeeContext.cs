using Employee.DataBase.Entities;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Employee.DataBase.DbContext
{
    public class EmployeeContext:IdentityDbContext<IdentityUser>
    {
        public EmployeeContext()
        {

        }
        public EmployeeContext(DbContextOptions<EmployeeContext> options) : base(options)
        {
        }
        public DbSet<EmployeeEntity> Employees { get; set; }
        public DbSet<JobEntity> Jobs { get; set; }
        public DbSet<DepartmentEntity> Departments { get; set; }
        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {

                IConfiguration config = new ConfigurationBuilder().Add(new Microsoft.Extensions.Configuration.Json.JsonConfigurationSource { Path = "appsettings.json", ReloadOnChange = true }).Build();
                var test = config.GetConnectionString("DefaultConnection");
                optionsBuilder.UseSqlServer(config.GetConnectionString("DefaultConnection"));
            }
        }

    }
}
