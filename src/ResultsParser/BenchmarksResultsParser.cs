using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using ResultsParser.Parsers;

namespace ResultsParser
{
    public static class StringExtensions
    {
        public static string UppercaseFirst(this string s)
        {
            // Check for empty string.
            if (string.IsNullOrEmpty(s))
            {
                return string.Empty;
            }
            // Return char and concat substring.
            return char.ToUpper(s[0]) + s.Substring(1);
        }
    }

    class BenchmarksResultsParser
    {

        private static Dictionary<string, BenchmarkResultsParserBase> _parsers =
            new Dictionary<string, BenchmarkResultsParserBase>()
            {
                ["Dhrystone"] = new DhrystoneResultsBenchmarkParser(),
                ["Scimark2"] = new Scimark2ResultsBenchmarkParser(),
                ["Whetstone"] = new WhetstoneResultsBenchmarkParser(),
                ["WhetstoneMP"] = new WhetstoneMPResultsBenchmarkParser(),
                ["Linpack"] = new LinpackResultsBenchmarkParser(),
                ["MP MFLOPS"] = new MpMflopsResultsBenchmarkParser(),
                ["CoreMark"] = new CoremarkResultsBenchmarkParser(),
                ["BusSpeed"] = new DefaultResultsParserBaseImpl("Bus Speed"),
                ["MemSpeed"] = new DefaultResultsParserBaseImpl("Mem Speed"),
                ["LLoops"] = new DefaultResultsParserBaseImpl("Livermore Loops"),
                ["Unknown"] = new DefaultResultsParserBaseImpl("Unknown"),
            };


        public ResultItem Parse(string benchmarkFile) {
            var contents = File.ReadAllText(benchmarkFile);
            var benchType = DetectBenchmarkByText(contents);
            var fileName = Path.GetFileName(benchmarkFile);
            var category = Path.GetFileName(Path.GetDirectoryName(benchmarkFile));
            var values = benchType.Parse(contents);
            var item = new ResultItem
            {
                Category = category,
                FileName = fileName,
                ResultText = contents,
                Benchmark = benchType.BenchmarkName,
                Value = values.Item1,
                Values =  values.Item2,
                CpuInfo = GetCpuInfoByCategory(category)
            };
            return item;
        }

        private CpuInfo GetCpuInfoByCategory(string category)
        {
            var categoryElements = category.Split('-');

            return new CpuInfo()
            {
                Vendor = categoryElements.Length > 0 ? categoryElements[0].UppercaseFirst() : "",
                Architecture = categoryElements.Length > 1 ? categoryElements[1].ToUpperInvariant() : "",
                Name = categoryElements.Length > 2 ? string.Join(" ", categoryElements[2].Split('_') 
                        .Select(e => e.UppercaseFirst()))
                    : "",
                Cores = 1
            };
        }

        private BenchmarkResultsParserBase DetectBenchmarkByText(string text)
        {
            if (text.Contains("Dhrystone Benchmark")) 
                return _parsers["Dhrystone"];

            if (text.Contains("Composite Score") && text.Contains("SOR"))
                return _parsers["Scimark2"];

            if (text.Contains("Whetstone Benchmark"))
                return _parsers["Whetstone"];

            if (text.Contains("Linpack"))
                return _parsers["Linpack"];

            if (text.Contains("MFLOPS Benchmark") || text.Contains("MP-MFLOPS"))
                return _parsers["MP MFLOPS"];

            if (text.Contains("CoreMark"))
                return _parsers["CoreMark"];

            if (text.Contains("Memory Reading Speed"))
                return _parsers["MemSpeed"];

            if (text.Contains("BusSpeed"))
                return _parsers["BusSpeed"];

            if (text.Contains("L.L.N.L."))
                return _parsers["LLoops"];
                
            var whetstoneMpRegexString = @"Multithreading[a-zA-Z0-9_ ]*Whetstones";
            var whetstoneMpRegex = new Regex(whetstoneMpRegexString, RegexOptions.CultureInvariant);
            var whetstoneMpMath = whetstoneMpRegex.Match(text);
            if (whetstoneMpMath.Success) {
                return _parsers["WhetstoneMP"];
            }

            return _parsers["Unknown"];
        }
    }
}
