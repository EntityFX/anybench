using Dapper;
using EntityFx.BenchmarkDb.Contracts;

namespace EntityFx.Benchmark.DataAccess
{
    public interface ISqliteRepository
    {
        string FileName { get; set; }
    }
}
