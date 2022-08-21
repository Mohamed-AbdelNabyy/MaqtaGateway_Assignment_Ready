using Employee.Bases;
using Employee.BusinessLogic.IServices;
using Employee.BusinessLogic.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace Employee.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DepartmentController : BaseController
    {
        private readonly IMasterData<DepartmentDTO> _departmentServices;
        public DepartmentController(IMasterData<DepartmentDTO> departmentServices)
        {
            _departmentServices = departmentServices;

        }
        [HttpGet]
        [Route("GetAll")]
        public async Task<IActionResult> GetAll()
        {
            var departments = _departmentServices.GetAll();
            return ReturnRquest(departments.Result);

        }
    }
}
