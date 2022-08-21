using Employee.Bases;
using Employee.BusinessLogic.IServices;
using Employee.BusinessLogic.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;

namespace Employee.Controllers
{
    [Authorize]
    [Route("api/[controller]")]
    [ApiController]
    public class EmployeeController : BaseController
    {
        private readonly IMasterData<EmployeeDTO> _employeeService;
        public EmployeeController(IMasterData<EmployeeDTO> employeeService)
        {
            _employeeService = employeeService;

        }

        [HttpGet]
        [Route("GetAll")]
        public async Task<ActionResult> GetAll()
        {
            var employees = _employeeService.GetAll();
            return Ok( employees.Result.ResponseData);
            //return ReturnRquest(employees.Result.ResponseData);

        }
        [HttpPost]
        [Route("Create")]
        public async Task<IActionResult> Create(EmployeeDTO employeeDTO)
        {
            //var curUser = "8888";
            var curUser = this.User.Claims.First(i => i.Type == "http://schemas.microsoft.com/ws/2008/06/identity/claims/primarysid").Value;

            var employees = _employeeService.Insert(employeeDTO, curUser.ToString());
            return ReturnRquest(employees.Result);

        }
        [HttpPut]
        [Route("Update")]
        public async Task<IActionResult> Update(EmployeeDTO employeeDTO)
        {
            var curUser = this.User.Claims.First(i => i.Type == "http://schemas.microsoft.com/ws/2008/06/identity/claims/primarysid").Value;
            var employees = _employeeService.Update(employeeDTO, curUser.ToString());
            return ReturnRquest(employees.Result);

        }
        [HttpDelete]
        [Route("DeleteById")]
        public async Task<IActionResult> DeleteById(int id)
        {
            var curUser = this.User.Claims.First(i => i.Type == "http://schemas.microsoft.com/ws/2008/06/identity/claims/primarysid").Value;
            var employees = _employeeService.DeleteById(id, curUser.ToString());
            return ReturnRquest(employees.Result);

        }
        [HttpGet]
        [Route("GetById")]
        public async Task<IActionResult> GetById(int id)
        {
            var employee = _employeeService.GetById(id);
            return ReturnRquest(employee.Result);
        }
    }
}
