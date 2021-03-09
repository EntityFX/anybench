namespace EntityFx.BenchmarkDb.Contracts
{
    public class Cpu
    {
        public string Manufacturer { get; set; }

        public string Model { get; set; }

        public string Category { get; set; }

        public CommonSpecs Specs { get; set; }

        public Cache Cache { get; set; }

        public MemorySpecs MemorySpecs { get; set; }

        public PhysicalParameters Package { get; set; }

        public PhysicalParameters Crystal { get; set; }

    }
}