namespace EntityFx.BenchmarkDb.Contracts
{
    public class MemorySpecs
    {
        public uint Controllers { get; set; }

        public uint Channels { get; set; }

        public decimal BandwidthInMbPerSec { get; set; }

        public decimal MaxMemorySizeInMb { get; set; }

        public MemoryType MemoryType { get; set; }

        public string Details { get; set; }

        public bool EccOnly { get; set; }
    }
}