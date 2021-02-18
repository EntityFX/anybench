using System;
using System.Collections.Generic;
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

            var benchmarksParser = new BenchmarksResultsParser();

            var benchItems = files.Select(f => benchmarksParser.Parse(f))
                .Where(b => !string.IsNullOrEmpty(b.ResultText))
                .GroupBy(b => b.Benchmark).ToArray();


            foreach (var benchItem in benchItems)
            {
                if (!Directory.Exists(benchItem.Key))
                {
                    Directory.CreateDirectory(benchItem.Key);
                }

                var maxValuesDictionary = benchItem.AsEnumerable()
                    .GroupBy(b => b.Category)
                    .ToDictionary(kv => kv.Key, kv => kv.Max(b => b.Value))
                    .OrderBy(kv => kv.Value)
                    .ToDictionary(kv => kv.Key, kv => kv.Value);

                var csvData = maxValuesDictionary.Select(item => new string[] { item.Key, item.Value.ToString(CultureInfo.InvariantCulture) });

                var path = Path.Combine(benchItem.Key, "All.csv");
                WriteCsv(path, csvData);

            }
        }

        private static void WriteCsv(string fileName, IEnumerable<IEnumerable<string>> data)
        {
            using (var stream = File.CreateText(fileName))
            {
                foreach (var item in data)
                {
                    stream.WriteLine(String.Join(',', item.ToArray()));
                }
            }
        }

    }
}
