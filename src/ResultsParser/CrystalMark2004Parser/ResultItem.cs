using System.Collections.Generic;

namespace ResultsParser
{
    public class ResultItem 
    {

        public string Name { get; set; }

        public string FileName { get; set; }

        public string Benchmark { get; set; }

        public string ResultText { get; set; }
        
        public string Category { get; set; }

        public CrystalMark2004ResultItem Result { get; set; }
    }

    public class CrystalMark2004ResultItem
    {
        public CrystalMark2004Alu Alu { get; set; }

        public CpuInfo Cpu { get; set; }
    }

    public class CrystalMark2004Alu
    {
        public int Total { get; set; }

        public int Fibonacci { get; set; }

        public int Napierian { get; set; }

        public int Eratosthenes { get; set; }

        public int QuickSort { get; set; }
    }
}
