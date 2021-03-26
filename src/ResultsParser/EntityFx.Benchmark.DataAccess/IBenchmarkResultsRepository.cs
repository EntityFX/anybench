using System.Collections.Generic;
using System.Threading.Tasks;
using EntityFx.BenchmarkDb.Contracts.Benchmark;

namespace EntityFx.Benchmark.DataAccess
{
    public interface IBenchmarkResultsRepository
    {
        void Create(BenchmarkResult benchmarkResult);

        void Delete(int id);

        Task<IEnumerable<BenchmarkResult>> ReadAsync(BenchmarkResultsFilter page);

        Task<BenchmarkResult> ReadByIdAsync(int id);
    }
}