using AutoMapper;
using Employee.Bases;
using Employee.BusinessLogic.Constant;
using Employee.BusinessLogic.IServices;
using Employee.BusinessLogic.Models;
using Employee.DataBase.Entities;

namespace Employee.BusinessLogic.Services
{
    public class JobServices : BaseService, IMasterData<JobDTO>
    {
        private readonly IMapper _mapper;
        public JobServices(IMapper mapper)
        {

            _mapper = mapper;
        }
        public Task<BaseResponse> DeleteById(int id, string UserID)
        {
            throw new NotImplementedException();
        }

        public async Task<BaseResponse> GetAll()
        {
            var respponse = new BaseResponse();
            try
            {

                var jobs = this._UnitOfWork.Repository<JobEntity>().GetIncludeFilter
                    (j => j.IsActive == true && (j.Isdeleted == false || j.Isdeleted == null));
                var result = _mapper.Map<IList<JobDTO>>(jobs);
                respponse.ResponseData = result;
                respponse.ResponseMessage = "Success";
                respponse.ResponseCode = (int)ResponseCodes.Success;
                return respponse;
            }
            catch (Exception ex)
            {
                respponse.ResponseMessage = ex.Message;
                respponse.ResponseCode = (int)ResponseCodes.InternalServerError;
                return respponse;
            }
        }

        public Task<BaseResponse> GetById(int id)
        {
            throw new NotImplementedException();
        }

        public Task<BaseResponse> Insert(JobDTO e, string UserID)
        {
            throw new NotImplementedException();
        }

        public Task<BaseResponse> Update(JobDTO e, string UserID)
        {
            throw new NotImplementedException();
        }
    }
}
