using System.Collections.Generic;

namespace ResultsParser
{
    class ResultItem 
    {

        public string FileName { get; set; }

        public string Benchmark { get; set; }

        public string ResultText { get; set; }
        
        public string Category { get; set; }

        public decimal Value { get; set; }

        public object Values { get; set; }

        public string UnitsOfMeasure { get; set; }
    }
}
