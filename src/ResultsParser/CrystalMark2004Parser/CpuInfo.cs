namespace ResultsParser
{
    public class CpuInfo 
    {
        public string CpuName { get; set; }

        public string NameString { get; set; }

        public string Vendor { get; set; }

        public string Platform { get; set; }

        public string Family { get; set; }

        public string Generation { get; set; }

        public string Model { get; set; }

        public string Stepping { get; set; }

        public string Description { get; set; }

        public uint Cores { get; set; }

        public decimal Clock { get; set; }

        public decimal Fsb { get; set; }

        public decimal Multiplier { get; set; }
    }
}
