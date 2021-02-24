using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Text.Json;
using System.Text;

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

                var maxInCategory = benchItem.AsEnumerable()
                    .GroupBy(b => b.Category, (it, gr) => gr.OrderByDescending(o => o.Value).First());

                foreach (var benchValues in maxInCategory)
                {
                    byte[] bytes = Encoding.Default.GetBytes(benchValues.ResultText);
                    benchValues.ResultText = Encoding.UTF8.GetString(bytes);


                    var benchJson = JsonSerializer.Serialize(benchValues, new JsonSerializerOptions()
                    {
                        WriteIndented = true, AllowTrailingCommas = true
                    });

                    var path1 = Path.Combine(benchItem.Key, benchValues.Category);
                    File.WriteAllText($"{path1}.json", benchJson);
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
