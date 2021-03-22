namespace EntityFx.BenchmarkDb.Contracts
{
    public class Cpu
    {
        public int Id { get; set; }

        public string Manufacturer { get; set; }

        public string Model { get; set; }

        public string Category { get; set; }

        public string SubCategory { get; set; }

        public string Description { get; set; }

        public CommonSpecs Specs { get; set; }

        public Cache Cache { get; set; }

        public MemorySpecs MemorySpecs { get; set; }

        public PhysicalParameters Package { get; set; }

        public PhysicalParameters Crystal { get; set; }

    }
}