using System;
using System.Collections.Generic;
using System.Text;

namespace EntityFx.Benchmark.DataAccess
{
    class BenchmarkResultEntity
    {

        public int Id { get; set; }
        public int BenchmarkResultId { get; set; }

        public int CpuId { get; set; }

        public string FileName { get; set; }

        public string Benchmark { get; set; }

        public string Output { get; set; }

        public string Category { get; set; }

        public string SubCategory { get; set; }

        public decimal Value { get; set; }

        public decimal Values1 { get; set; }
        public decimal Values2 { get; set; }
        public decimal Values3 { get; set; }
        public decimal Values4 { get; set; }
        public decimal Values5 { get; set; }
        public decimal Values6 { get; set; }
        public decimal Values7 { get; set; }
        public decimal Values8 { get; set; }
        public decimal Values9 { get; set; }

        public string UnitsOfMeasure { get; set; }
        public DateTime CreateDateTime { get; set; }
    }
}
