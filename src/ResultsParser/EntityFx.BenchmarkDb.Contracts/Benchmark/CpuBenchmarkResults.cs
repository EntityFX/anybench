namespace EntityFx.BenchmarkDb.Contracts.Benchmark
{
    public class CpuBenchmarkResults
    {
        public int? CpuId { get; set; }

        public string CpuName { get; set; }

        public BenchmarkResult[] Results { get; set; }
    }
}