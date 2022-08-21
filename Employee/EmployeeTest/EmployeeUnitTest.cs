using AutoMapper;
using DAL.Repository;
using Employee.BusinessLogic.IServices;
using Employee.BusinessLogic.Models;
using Employee.DataBase.DbContext;
using Employee.DataBase.Entities;
using Employee.BusinessLogic.Services;
using Xunit;
using Xunit.Abstractions;
using Newtonsoft.Json;

namespace EmployeeTest
{
    public class EmployeeUnitTest
    {
        private readonly ITestOutputHelper output;
        public EmployeeUnitTest(ITestOutputHelper output)
        {
            this.output = output;
           
        }
        [Fact]
        public void GetById()
        {
            MapperConfiguration config = new MapperConfiguration(cfg => {
                cfg.CreateMap<EmployeeDTO, EmployeeEntity>().ReverseMap();
                cfg.CreateMap<EmployeeEntity, EmployeeDTO>().ReverseMap();


            });
            EmployeeContext context = new EmployeeContext();
            UnitOfWork<EmployeeContext> unitOfWork = new UnitOfWork<EmployeeContext>(context);
            IMapper _mapper = new Mapper(config);
            IMasterData<EmployeeDTO>  _employeeService = new EmployeeService(_mapper);
            #region Act
            var employees = _employeeService.GetById(1);
            var serEmployee = JsonConvert.SerializeObject(employees.Result.ResponseData);
            EmployeeDTO dseremployees = JsonConvert.DeserializeObject<EmployeeDTO>(serEmployee);
            #endregion

            #region Assert
            output.WriteLine(serEmployee.Result.ResponseMessage.ToString());
            output.WriteLine(serEmployee.Result.ResponseCode.ToString());
            output.WriteLine(serEmployee.ToString());
            Assert.Equal(1, dseremployees.Id);
            Assert.Equal(200, serEmployee.Result.ResponseCode);
            #endregion
        }
    }
}