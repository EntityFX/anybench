namespace EntityFx.BenchmarkDb.Contracts.Benchmark
{
    public class BenchmarkResult
    {
        public int Id { get; set; }

        public string FileName { get; set; }

        public string Benchmark { get; set; }

        public string Output { get; set; }

        public string Category { get; set; }

        public string SubCategory { get; set; }

        public decimal Value { get; set; }

        public object Values { get; set; }

        public string UnitsOfMeasure { get; set; }

        public int CpuId { get; set; }
        public int BenchmarkResultId { get; set; }
    }
}