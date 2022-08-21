using DAL.Repository;
using Employee.BusinessLogic.IServices;
using Employee.BusinessLogic.Models;
using Employee.BusinessLogic.Services;
using Employee.DataBase.DbContext;
using Microsoft.AspNetCore.Identity;

namespace Employee.Configurations
{
    public static class TransientConfiguration
    {
        public static IServiceCollection AddTransientConfiguration(this IServiceCollection services)
        {
            services.AddScoped<IUnitOfWork, UnitOfWork<EmployeeContext>>();
            services.AddScoped<IMasterData<EmployeeDTO>, EmployeeService>();
            services.AddScoped<IMasterData<JobDTO>, JobServices>();
            services.AddScoped<IMasterData<DepartmentDTO>, DepartmentServices>();
            return services;
        }
    }
}
