using AutoMapper;
using Employee.Bases;
using Employee.BusinessLogic.Constant;
using Employee.BusinessLogic.IServices;
using Employee.BusinessLogic.Models;
using Employee.DataBase.Entities;

namespace Employee.BusinessLogic.Services
{
    public class EmployeeService : BaseService, IMasterData<EmployeeDTO>
    {
        private readonly IMapper _mapper;
        public EmployeeService(IMapper mapper)
        {

            _mapper = mapper;
        }

        public async Task<BaseResponse> DeleteById(int id, string UserID)
        {
            var respponse = new BaseResponse();
            try
            {
                if (id == 0)
                {
                    respponse.ResponseMessage = "Faild";
                    respponse.ResponseCode = (int)ResponseCodes.InvalidId;
                    respponse.ResponseData = null;
                    return respponse;
                }
                var employee = this._UnitOfWork.Repository<EmployeeEntity>().GetByIDAsync(id);
                employee.Result.Isdeleted = true;
                employee.Result.DeletedDate = DateTime.Now;
                employee.Result.ModifiedBy = UserID;
                respponse.ResponseMessage = "Success";

                respponse.ResponseCode = (int)ResponseCodes.Success;
                await this._UnitOfWork.SaveChangesAsync();
                return respponse;
            }
            catch (Exception ex)
            {

                respponse.ResponseMessage = ex.Message;
                respponse.ResponseCode = (int)ResponseCodes.InternalServerError;
                return respponse;
            }

        }

        public async Task<BaseResponse> GetAll()
        {
            var respponse = new BaseResponse();
            try
            {

                var employees = this._UnitOfWork.Repository<EmployeeEntity>().GetIncludeFilter
                    (emp => emp.IsActive == true && (emp.Isdeleted == false || emp.Isdeleted == null));
                var result = _mapper.Map<IList<EmployeeDTO>>(employees);
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

        public async Task<BaseResponse> GetById(int id)
        {
            var respponse = new BaseResponse();
            try
            {
                if (id == 0)
                {
                    respponse.ResponseMessage = "Faild";
                    respponse.ResponseCode = (int)ResponseCodes.InvalidId;
                    respponse.ResponseData = null;
                    return respponse;
                }
                var employee = this._UnitOfWork.Repository<EmployeeEntity>().GetFirstIncludeFilter
                    (emp => emp.IsActive == true && (emp.Isdeleted == false || emp.Isdeleted == null) && emp.Id == id);
                if (employee == null)
                {
                    respponse.ResponseMessage = "Invalid Employee Id";
                    respponse.ResponseCode = (int)ResponseCodes.InvalidId;

                    return respponse;
                }
                var result = _mapper.Map<EmployeeEntity, EmployeeDTO>(employee);
                respponse.ResponseMessage = "Success";
                respponse.ResponseData = result;
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

        public async Task<BaseResponse> Insert(EmployeeDTO employeeDTO, string UserID)
        {
            var respponse = new BaseResponse();
            //var curUser = ContextInfo.CurrentUserID;
            try
            {
                var employee = _mapper.Map<EmployeeDTO, EmployeeEntity>(employeeDTO);
                employee.CreatedDate = DateTime.Now;
                employee.CreatedBy = UserID;
                employee.IsActive = true;
                _UnitOfWork.Repository<EmployeeEntity>().Add(employee);
                await this._UnitOfWork.SaveChangesAsync();

                respponse.ResponseMessage = "Success";
                respponse.ResponseData = employeeDTO;
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

        public async Task<BaseResponse> Update(EmployeeDTO employeeDTO, string UserID)
        {
            var respponse = new BaseResponse();
            try
            {
                var employee = this._UnitOfWork.Repository<EmployeeEntity>().GetByID(employeeDTO.Id);
                _ = _mapper.Map(employeeDTO, employee);
                employee.ModifiedDate = DateTime.Now;
                employee.ModifiedBy = UserID;
                _UnitOfWork.Repository<EmployeeEntity>().Update(employee);
                await this._UnitOfWork.SaveChangesAsync();
                respponse.ResponseMessage = "Success";
                respponse.ResponseData = employeeDTO;
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
    }
}
