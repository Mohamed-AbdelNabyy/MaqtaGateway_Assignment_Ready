using Employee.Bases;
using Employee.BusinessLogic.IServices;
using Employee.BusinessLogic.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace Employee.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class JobController : BaseController
    {
        private readonly IMasterData<JobDTO> _jobServices;
        public JobController(IMasterData<JobDTO> jobServices)
        {
            _jobServices = jobServices;

        }

        [HttpGet]
        [Route("GetAll")]
        public async Task<IActionResult> GetAll()
        {
            var jobs = _jobServices.GetAll();
            return ReturnRquest(jobs.Result);

        }
    }
}
