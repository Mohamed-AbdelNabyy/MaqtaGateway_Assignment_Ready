using Employee.DataBase.DbContext;
using Microsoft.EntityFrameworkCore;

namespace Employee.Configurations
{
    public static class SettingsConfiguration
    {
        public static IServiceCollection AddConfigurationSettings(this IServiceCollection services, IConfiguration configuration)
        {

            string connectionString = configuration.GetConnectionString("DefaultConnection");
            services.AddDbContext<EmployeeContext>(options => options.UseSqlServer(connectionString));
            services.AddAutoMapper(typeof(MapperInitilizer));

            services.AddCors();
            //services.AddCors(options =>
            //{
            //    options.AddPolicy("CorsPolicy",
            //        builder => builder.AllowAnyOrigin()
            //        .AllowAnyMethod()
            //        .AllowAnyHeader()
            //       );
            //});


            return services;
        }
    }
}
