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
                ["CrystalMark2004"] = new CrystalMark2004BenchmarkParser(),
                ["Unknown"] = new DefaultResultsParserBaseImpl("Unknown"),
            };


        public ResultItem Parse(string benchmarkFile) {
            var contents = File.ReadAllText(benchmarkFile);
            var benchType = DetectBenchmarkByText(contents);
            var fileName = Path.GetFileName(benchmarkFile);
            var value = benchType.Parse(contents);

            if (value == null)
            {
                return null;
            }

            var item = new ResultItem
            {
                FileName = $"CrystalMark2004__{value.Cpu.NameString}.html",
                ResultText = contents,
                Benchmark = benchType.BenchmarkName,
                Name = value.Cpu.NameString ?? value.Cpu.CpuName,
                Result = value
            };
            return item;
        }

        private BenchmarkResultsParserBase DetectBenchmarkByText(string text)
        {
            if (text.Contains("CrystalMark") && text.Contains("hiyohiyo"))
            {
                return _parsers["CrystalMark2004"];
            }

            return _parsers["Unknown"];
        }
    }
}
