using AutoMapper;
using Employee.BusinessLogic.Models;
using Employee.DataBase.Entities;

namespace Employee.Configurations
{
    public class MapperInitilizer : Profile
    {
        public MapperInitilizer()
        {
            #region Employee Mapp Config
            CreateMap<EmployeeEntity, EmployeeDTO>().ReverseMap();
            CreateMap<EmployeeDTO, EmployeeEntity>().ReverseMap();
            #endregion
            #region Jobs Mapp Config
            CreateMap<JobEntity, JobDTO>().ReverseMap();
            CreateMap<JobDTO, JobEntity>().ReverseMap();
            #endregion
            #region Department Mapp Config
            CreateMap<DepartmentEntity, DepartmentDTO>().ReverseMap();
            CreateMap<DepartmentDTO, DepartmentEntity>().ReverseMap();
            #endregion
        }
    }
}
