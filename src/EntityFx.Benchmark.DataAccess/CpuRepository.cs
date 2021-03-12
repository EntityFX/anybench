using System;
using Dapper.Contrib.Extensions;

namespace EntityFx.Benchmark.DataAccess
{
    class CpuRepository : SqliteRepositoryBase, ICpuRepository
    {
        public void Create(BenchmarkDb.Contracts.Cpu cpu)
        {
            try
            {
                var model = MapModel(cpu);
                model.CreateDateTime = DateTime.Now;
                var id = Connection.Insert<CpuEntity>(model);
            }
            catch (Exception ex)
            {
                return;
            }
        }

        private CpuEntity MapModel(BenchmarkDb.Contracts.Cpu cpu)
        {
            throw new NotImplementedException();
        }

        public void Delete(int id)
        {
            throw new NotImplementedException();
        }
    }
}