using AutoMapper;
using Employee.Bases;
using Employee.BusinessLogic.Constant;
using Employee.BusinessLogic.IServices;
using Employee.BusinessLogic.Models;
using Employee.DataBase.Entities;

namespace Employee.BusinessLogic.Services
{
    public class DepartmentServices : BaseService, IMasterData<DepartmentDTO>
    {
        private readonly IMapper _mapper;
        public DepartmentServices(IMapper mapper)
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

                var departments = this._UnitOfWork.Repository<DepartmentEntity>().GetIncludeFilter
                    (dep => dep.IsActive == true && (dep.Isdeleted == false || dep.Isdeleted == null));
                var result = _mapper.Map<IList<DepartmentDTO>>(departments);
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

        public Task<BaseResponse> Insert(DepartmentDTO e, string UserID)
        {
            throw new NotImplementedException();
        }

        public Task<BaseResponse> Update(DepartmentDTO e, string UserID)
        {
            throw new NotImplementedException();
        }
    }
}
