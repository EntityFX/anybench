namespace EntityFx.Benchmark.DataAccess
{
    public interface ICpuRepository
    {
        void Create(BenchmarkDb.Contracts.Cpu cpu);

        void Delete(int id);
    }
}