namespace EntityFx.BenchmarkDb.Contracts.Benchmark
{
    public class BenchmarkResultsFilter
    {
        public string ByCategory { get; set; }

        public string BySubcategory { get; set; }

        public int ByCpuId { get; set; }

        public PageFilter PageFilter { get; set; }

    }
}