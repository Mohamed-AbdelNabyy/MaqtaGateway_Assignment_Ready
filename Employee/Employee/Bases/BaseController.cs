using Employee.Providers;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace Employee.Bases
{

    public class BaseController : ControllerBase
    {
        protected IHttpContextDetailsProvider ContextInfo;
        protected HttpContext _httpContext;
        public BaseController()
        {
            _httpContext = new HttpContextAccessor().HttpContext;
            var services = _httpContext.RequestServices;

            var iHttpContextDetailsProvider = (IHttpContextDetailsProvider)services.GetService(typeof(IHttpContextDetailsProvider));
            ContextInfo = iHttpContextDetailsProvider;
        }

        [NonAction]
        public ObjectResult ReturnRquest(BaseResponse baseResponse)
        {
            if (baseResponse.ResponseCode == 200)
            {
                return Ok(baseResponse);
            }
            else
            {
                return BadRequest(baseResponse);
            }

        }
        [NonAction]
        public ObjectResult ReturnRquest<T>(BaseResponse<T> baseResponse) where T : class
        {
            if (baseResponse.ResponseCode == 200)
            {
                return Ok(baseResponse);
            }
            else
            {
                return BadRequest(baseResponse);
            }

        }
        [NonAction]
        public ObjectResult ReturnException(Exception ex)
        {
            return StatusCode(StatusCodes.Status500InternalServerError, new BaseResponse
            {
                ResponseCode = StatusCodes.Status500InternalServerError,
                ResponseData = ex,
                ResponseMessage = ex.InnerException != null ? ex.InnerException.Message : ex.Message
            });

        }
    }
}
