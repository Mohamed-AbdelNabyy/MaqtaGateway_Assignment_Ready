using DAL.Repository.Extensions;
using Microsoft.EntityFrameworkCore;
using System.Linq.Expressions;
using Z.EntityFramework.Plus;

namespace DAL.Repository
{
    public class Repository<TEntity> : IRepository<TEntity> where TEntity : class
    {
        protected readonly DbContext dbContext;
        protected readonly DbSet<TEntity> dbSet;

        public Repository(DbContext context)
        {
            dbContext = context ?? throw new ArgumentException(nameof(context));
            dbSet = dbContext.Set<TEntity>();
        }


        #region GetWithCaching
        public Task<IEnumerable<TEntity>> GetWithCaching(Expression<Func<TEntity, bool>> filter = null, int ExpirationMins = 5, params Expression<Func<TEntity, object>>[] includeProperties)
        {
            throw new NotImplementedException();
        }
        #endregion


        #region Get
        public TEntity GetByID(object id)
        {
            try
            {
                return dbSet.Find(id);
            }
            catch (Exception)
            {
                throw;
            }

        }
        public bool Any(Expression<Func<TEntity, bool>> Where)
        {
            try
            {
                return dbSet.Any(Where);
            }
            catch (Exception)
            {
                throw;
            }

        }

        public TEntity GetSingle(Expression<Func<TEntity, bool>> Where, params Expression<Func<TEntity, object>>[] IncludeProperties)
        {
            try
            {
                IQueryable<TEntity> dbQuery = dbSet;
                //Apply eager loading
                if (IncludeProperties != null)
                {
                    dbQuery = IncludeProperties.Aggregate(dbQuery, (current, include) => current.IncludeOptimized(include));
                }

                return dbQuery.SingleOrDefault(Where);
            }
            catch (Exception)
            {

                throw;
            }

        }

        public TEntity GetSingleIncludeFilter(Expression<Func<TEntity, bool>> Where, params Expression<Func<TEntity, object>>[] IncludeProperties)
        {

            try
            {
                IQueryable<TEntity> dbQuery = dbSet;

                //Apply eager loading
                if (IncludeProperties != null)
                {
                    dbQuery = IncludeProperties.Aggregate(dbQuery, (current, include) => current.IncludeFilter(include));
                }

                return dbQuery.SingleOrDefault(Where);
            }
            catch (Exception)
            {

                throw;
            }

        }

        public TEntity GetFirst(Expression<Func<TEntity, bool>> Where, params Expression<Func<TEntity, object>>[] IncludeProperties)
        {
            try
            {
                IQueryable<TEntity> dbQuery = dbSet;

                //Apply eager loading
                if (IncludeProperties != null)
                {
                    dbQuery = IncludeProperties.Aggregate(dbQuery, (current, include) => current.IncludeOptimized(include));
                }

                return dbQuery.FirstOrDefault(Where);
            }
            catch (Exception)
            {

                throw;
            }

        }

        public TEntity GetFirstIncludeFilter(Expression<Func<TEntity, bool>> Where, params Expression<Func<TEntity, object>>[] IncludeProperties)
        {
            try
            {
                IQueryable<TEntity> dbQuery = dbSet;

                //Apply eager loading
                if (IncludeProperties != null)
                {
                    dbQuery = IncludeProperties.Aggregate(dbQuery, (current, include) => current.IncludeFilter(include));
                }

                return dbQuery.FirstOrDefault(Where);
            }
            catch (Exception)
            {

                throw;
            }

        }
        #endregion

        #region Get All
        public IQueryable<TEntity> Get(Expression<Func<TEntity, bool>> Where, params Expression<Func<TEntity, object>>[] IncludeProperties)
        {
            IQueryable<TEntity> dbQuery = dbSet;



            if (Where != null)
            {
                dbQuery = dbQuery.AsNoTracking().Where(Where);
            }
            else
            {
                dbQuery = dbQuery.AsNoTracking();
            }

            if (IncludeProperties != null)
            {
                dbQuery = IncludeProperties.Aggregate(dbQuery, (current, include) => current.IncludeOptimized(include));
            }

            return dbQuery;
        }
        public IQueryable<TEntity> GetAsync(Expression<Func<TEntity, bool>> Where, params Expression<Func<TEntity, object>>[] IncludeProperties)
        {
            IQueryable<TEntity> dbQuery = dbSet;



            if (Where != null)
            {
                //dbQuery = dbQuery.AsNoTracking().Where(Where);
                dbQuery = dbQuery.Where(Where);
            }
            else
            {
                dbQuery = dbQuery.AsNoTracking();
            }
            if (IncludeProperties != null)
            {
                dbQuery = IncludeProperties.Aggregate(dbQuery, (current, include) => current.IncludeOptimized(include));
            }

            return dbQuery;
        }
        public IQueryable<TEntity> Get(Expression<Func<TEntity, bool>> Where, int? skip = null, int? take = null, Func<IQueryable<TEntity>, IOrderedQueryable<TEntity>> orderBy = null, params Expression<Func<TEntity, object>>[] IncludeProperties)
        {
            IQueryable<TEntity> dbQuery = dbSet;

            if (Where != null)
            {
                dbQuery = dbQuery.AsNoTracking().Where(Where);
            }
            else
            {
                dbQuery = dbQuery.AsNoTracking();
            }

            if (IncludeProperties != null)
            {
                dbQuery = IncludeProperties.Aggregate(dbQuery, (current, include) => current.IncludeOptimized(include));
            }
            if (orderBy != null)
            {
                dbQuery = orderBy(dbQuery);
            }
            if (skip.HasValue && skip > 0)
            {
                dbQuery = dbQuery.Skip(skip.Value);
            }
            if (take.HasValue && take > 0)
            {
                dbQuery = dbQuery.Take(take.Value);
            }

            return dbQuery;
        }

        public IQueryable<TEntity> GetIncludeFilter(Expression<Func<TEntity, bool>> Where, params Expression<Func<TEntity, object>>[] IncludeProperties)
        {
            IQueryable<TEntity> dbQuery = dbSet;


            if (Where != null)
            {
                dbQuery = dbQuery.AsNoTracking().Where(Where);
            }
            else
            {
                dbQuery = dbQuery.AsNoTracking();
            }

            if (IncludeProperties != null)
            {
                dbQuery = IncludeProperties.Aggregate(dbQuery, (current, include) => current.IncludeFilter(include));
            }

            return dbQuery;
        }
        public IQueryable<TEntity> GetIncludeFilter(Expression<Func<TEntity, bool>> Where, int? skip = null, int? take = null, Func<IQueryable<TEntity>, IOrderedQueryable<TEntity>> orderBy = null, params Expression<Func<TEntity, object>>[] IncludeProperties)
        {
            IQueryable<TEntity> dbQuery = dbSet;

            if (Where != null)
            {
                dbQuery = dbQuery.AsNoTracking().Where(Where);
            }
            else
            {
                dbQuery = dbQuery.AsNoTracking();
            }

            if (IncludeProperties != null)
            {
                dbQuery = IncludeProperties.Aggregate(dbQuery, (current, include) => current.IncludeFilter(include));
            }
            if (orderBy != null)
            {
                dbQuery = orderBy(dbQuery);
            }
            if (skip.HasValue && skip > 0)
            {
                dbQuery = dbQuery.Skip(skip.Value);
            }
            if (take.HasValue && take > 0)
            {
                dbQuery = dbQuery.Take(take.Value);
            }

            return dbQuery;
        }
        #endregion

        #region GetAsync
        public async Task<TEntity> GetByIDAsync(object id)
        {
            try
            {
                return await dbSet.FindAsync(id);
            }
            catch (Exception)
            {
                throw;
            }

        }
        public async Task<bool> AnyAsync(Expression<Func<TEntity, bool>> Where)
        {
            try
            {
                return await dbSet.AnyAsync(Where);
            }
            catch (Exception)
            {
                throw;
            }

        }

        public async Task<TEntity> GetSingleAsync(Expression<Func<TEntity, bool>> Where, params Expression<Func<TEntity, object>>[] IncludeProperties)
        {
            try
            {
                IQueryable<TEntity> dbQuery = dbSet;
                //Apply eager loading
                if (IncludeProperties != null)
                {
                    dbQuery = IncludeProperties.Aggregate(dbQuery, (current, include) => current.IncludeOptimized(include));
                }

                return await dbQuery.SingleOrDefaultAsync(Where);
            }
            catch (Exception)
            {

                throw;
            }

        }

        public async Task<TEntity> GetSingleWithEfCoreAsync(Expression<Func<TEntity, bool>> Where, params string[] IncludeProperties)
        {
            try
            {
                IQueryable<TEntity> dbQuery = dbSet;
                //Apply eager loading
                dbQuery = dbQuery.IncludeMultiple(IncludeProperties);

                return await dbQuery.AsSplitQuery().SingleOrDefaultAsync(Where);
            }
            catch (Exception)
            {

                throw;
            }

        }

        public async Task<TEntity> GetSingleIncludeFilterAsync(Expression<Func<TEntity, bool>> Where, params Expression<Func<TEntity, object>>[] IncludeProperties)
        {

            try
            {
                IQueryable<TEntity> dbQuery = dbSet;

                //Apply eager loading
                if (IncludeProperties != null)
                {
                    dbQuery = IncludeProperties.Aggregate(dbQuery, (current, include) => current.IncludeFilter(include));
                }

                return await dbQuery.SingleOrDefaultAsync(Where);
            }
            catch (Exception)
            {

                throw;
            }

        }

        public async Task<TEntity> GetFirstAsync(Expression<Func<TEntity, bool>> Where, params Expression<Func<TEntity, object>>[] IncludeProperties)
        {
            try
            {
                IQueryable<TEntity> dbQuery = dbSet;

                //Apply eager loading
                if (IncludeProperties != null)
                {
                    dbQuery = IncludeProperties.Aggregate(dbQuery, (current, include) => current.IncludeOptimized(include));
                }

                return await dbQuery.FirstOrDefaultAsync(Where);
            }
            catch (Exception)
            {

                throw;
            }

        }

        public async Task<TEntity> GetFirstIncludeFilterAsync(Expression<Func<TEntity, bool>> Where, params Expression<Func<TEntity, object>>[] IncludeProperties)
        {
            try
            {
                IQueryable<TEntity> dbQuery = dbSet;

                //Apply eager loading
                if (IncludeProperties != null)
                {
                    dbQuery = IncludeProperties.Aggregate(dbQuery, (current, include) => current.IncludeFilter(include));
                }
                return await dbQuery.FirstOrDefaultAsync(Where);
            }
            catch (Exception)
            {

                throw;
            }

        }
        #endregion

        #region State
        public void ModifyInsertState(TEntity e)
        {
            dbContext.Entry(e).State = EntityState.Added;
        }

        public void ModifyUpdateState(TEntity e)
        {
            dbContext.Entry(e).State = EntityState.Modified;
        }
        public void Unchanged(TEntity e)
        {
            dbContext.Entry(e).State = EntityState.Unchanged;
        }
        public void ModifyDeleteState(TEntity e)
        {
            dbContext.Entry(e).State = EntityState.Deleted;
        }
        #endregion

        #region Add
        public void Add(TEntity entity)
        {
            dbSet.Add(entity);
        }
        #endregion

        #region Update
        public void Update(TEntity entity)
        {
            dbSet.Update(entity);
        }
        // Updates the data without selecting and give grate preformance with bulk data 
        public async Task BatchUpdateAsync(Expression<Func<TEntity, bool>> where, Expression<Func<TEntity, TEntity>> Update)
        {
            IQueryable<TEntity> dbQuery = dbSet;
            await dbQuery.Where(where).UpdateAsync(Update);
        }
        #endregion

        #region Remove
        //Remove the data without selecting and give grate preformance with bulk data 
        public bool BatchRemove(Expression<Func<TEntity, bool>> where)
        {
            try
            {
                IQueryable<TEntity> dbQuery = dbSet;
                dbQuery.Where(where).Delete();
            }
            catch (DbUpdateConcurrencyException ex)
            {
                return false;
            }
            catch (Exception ex)
            {
                return false;
            }
            return true;
        }
        #endregion

        #region Core
        public void Dispose()
        {
            dbContext.Dispose();
        }

        public IQueryable<TEntity> AsQueryable()
        {
            return dbSet.AsQueryable();
        }

        #endregion

    }

}