using Employee.Bases;

namespace Employee.BusinessLogic.IServices
{
    public interface IMasterData<TEntity> where TEntity : class
    {
        Task<BaseResponse> GetAll();
        Task<BaseResponse> GetById(int id);
        Task<BaseResponse> DeleteById(int id, string UserID);
        Task<BaseResponse> Update(TEntity e, string UserID);
        Task<BaseResponse> Insert(TEntity e, string UserID);
    }
}
