using System;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;

namespace ResultsParser
{
    class Program
    {
        static void Main(string[] args)
        {
            var resultsPath = Path.Combine("..", "..", "results");

            var files = Directory.GetFiles(resultsPath, "*.log", new EnumerationOptions() { RecurseSubdirectories = true });

            var benchItems = files.Select(f =>
            {
                var text = File.ReadAllText(f);
                var benchType = DetectBenchmarkByText(text);
                var item = new ResultItem
                {
                    Category = Path.GetFileName(Path.GetDirectoryName(f)),
                    FileName = Path.GetFileName(f),
                    ResultText = text,
                    Benchmark = benchType,
                    Value = ParseValueByBenchmarkType(benchType, text)
                };
                return item;
            }).GroupBy(b => b.Benchmark).ToArray();

            Console.WriteLine("Hello World!");
        }

        private static decimal ParseValueByBenchmarkType(string benchmark, string text)
        {
            //
            if (benchmark == "Dhrystone") {
                var dhrystoneRegex = @"VAX\s+MIPS\s+rating =\s*([0-9]+.?[0-9]*)";
                var regex = new Regex(dhrystoneRegex, RegexOptions.CultureInvariant);
                var match = regex.Match(text);

                if (!match.Success) {
                    return 0.0m;
                }

                var value = match.Groups.Count == 2 ? match.Groups.OfType<Group>().Skip(1).First().Value : "0";
                return decimal.Parse(value, CultureInfo.InvariantCulture);
            }
            return 0.0m;
        }

        private static string DetectBenchmarkByText(string text)
        {
            if (text.Contains("Dhrystone Benchmark")) 
                return "Dhrystone";

            return "Unknown";
        }
    }
}
