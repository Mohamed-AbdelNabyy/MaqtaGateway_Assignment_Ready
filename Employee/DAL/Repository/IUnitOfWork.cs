namespace DAL.Repository
{
    public interface IUnitOfWork : IDisposable
    {
        IRepository<T> Repository<T>() where T : class;

        void SaveChanges();
        void BulkSaveChanges();

        Task SaveChangesAsync();
        Task BulkSaveChangesAsync();

    }
}
