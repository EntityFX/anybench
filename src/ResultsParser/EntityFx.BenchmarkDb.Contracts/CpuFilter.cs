namespace EntityFx.BenchmarkDb.Contracts
{
    public class CpuFilter
    {
        public string ByManufacturer { get; set; }
        public string ByCategory { get; set; }
        public string ByMicroArchitecture { get; set; }
        public string ByInstructionSet { get; set; }

        public PageFilter PageFilter { get; set; }
        public string OrderBy { get; set; }
        public string SearchString { get; set; }
    }
}