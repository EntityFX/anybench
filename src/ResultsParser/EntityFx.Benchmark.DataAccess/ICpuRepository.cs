using System.Collections.Generic;
using System.Threading.Tasks;
using EntityFx.BenchmarkDb.Contracts;

namespace EntityFx.Benchmark.DataAccess
{
    public interface ICpuRepository
    {
        void Create(BenchmarkDb.Contracts.Cpu cpu);

        void Delete(int id);

        Task<IEnumerable<Cpu>> ReadAllAsync(PageFilter page);
        Task<Cpu> ReadByIdAsync(int cpuId);
    }
}