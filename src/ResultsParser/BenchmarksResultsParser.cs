using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;

namespace ResultsParser
{
    class BenchmarksResultsParser {
        public ResultItem Parse(string benchmarkFile) {
            var contents = File.ReadAllText(benchmarkFile);
            var benchType = DetectBenchmarkByText(contents);
            var item = new ResultItem
            {
                Category = Path.GetFileName(Path.GetDirectoryName(benchmarkFile)),
                FileName = Path.GetFileName(benchmarkFile),
                ResultText = contents,
                Benchmark = benchType
            };
            ParseValueByBenchmarkType(benchType, contents, item);
            return item;
        }

        private void ParseValueByBenchmarkType(string benchmark, string text, ResultItem resultItem)
        {
            //
            if (benchmark == "Dhrystone") {
                var dhrystoneRegex = @"VAX\s+MIPS\s+rating =\s*([0-9]+.?[0-9]*)";
                var regex = new Regex(dhrystoneRegex, RegexOptions.CultureInvariant);
                var match = regex.Match(text);

                if (!match.Success) {
                    return;
                }

                var value = match.Groups.Count == 2 ? match.Groups.OfType<Group>().Skip(1).First().Value : "0";
                resultItem.Value = decimal.Parse(value, CultureInfo.InvariantCulture);
                return;
            }

            if (benchmark == "Whetstone") {
                resultItem.Value =  ParseWhetstoneValue(text);
                return;
            }

            if (benchmark == "WhetstoneMP") {
                resultItem.Value =  ParseWhetstoneMPValue(text);
                return;
            }

            if (benchmark == "Linpack") {
                var linpackRegexString = @"([0-9]+.?[0-9]*)\sMflops";
                var linpackRegex = new Regex(linpackRegexString, RegexOptions.CultureInvariant);
                var linpackMatch = linpackRegex.Match(text);
                if (!linpackMatch.Success) {
                    return;
                }

                var value = linpackMatch.Groups.Count == 2 ? linpackMatch.Groups.OfType<Group>().Skip(1).First().Value : "0";
                resultItem.Value =  decimal.Parse(value, CultureInfo.InvariantCulture);
                return;
            }

            if (benchmark == "Scimark2") {
                var scimark2RegexString = @"Composite Score:\s*([0-9]+.?[0-9]*)";
                var scimark2Regex = new Regex(scimark2RegexString, RegexOptions.CultureInvariant);
                var scimark2Match = scimark2Regex.Match(text);
                if (!scimark2Match.Success) {
                    return;
                }

                var value = scimark2Match.Groups.Count == 2 ? scimark2Match.Groups.OfType<Group>().Skip(1).First().Value : "0";
                resultItem.Value =  decimal.Parse(value, CultureInfo.InvariantCulture);
                return;
            }

            if (benchmark == "CoreMark") {
                var coremarkRegexString = @"CoreMark\s+([0-9]+.?[0-9]+)?\s+:?\s+([0-9]+.?[0-9]*)";
                var coremarkRegex = new Regex(coremarkRegexString, RegexOptions.CultureInvariant);
                var coremarkMatch = coremarkRegex.Match(text);
                if (!coremarkMatch.Success) {
                    return;
                }

                var value = coremarkMatch.Groups.Count == 3 ? coremarkMatch.Groups.OfType<Group>().Skip(2).First().Value : "0";
                resultItem.Value =  decimal.Parse(value, CultureInfo.InvariantCulture);
                return;
            }

            if (benchmark == "MP MFLOPS") {
                var mpMflopsRegexString = @"Data in & out\s+([0-9]+)\s+([0-9]+)\s+([0-9]+.?[0-9]*)\s+([0-9]+.?[0-9]*)\s+([0-9]+)\s+";
                var mpMflopsRegex = new Regex(mpMflopsRegexString, RegexOptions.CultureInvariant);
                var mpMflopsMatch = mpMflopsRegex.Match(text);

                var results = new Dictionary<string, decimal>();
                while (mpMflopsMatch.Success) {
                    var mpMflopsGroups = mpMflopsMatch.Groups;
                    if (mpMflopsGroups.Count == 6) {
                        var mpKey = $"{mpMflopsGroups[1]};{mpMflopsGroups[2]};{mpMflopsGroups[3]}";
                        if (!results.ContainsKey(mpKey)) {
                            results.Add(mpKey, decimal.Parse(mpMflopsGroups[5].Value, CultureInfo.InvariantCulture));
                        }
                    }

                    mpMflopsMatch = mpMflopsMatch.NextMatch();
                } 

                if (results.Any()) {
                    resultItem.Value =  results.Values.Max();
                    resultItem.Values = results;
                    return;
                }

                var mpMflopsOldRegexString = @"([0-9]*)T\s*([0-9]+)\s*([0-9]+)\s*([0-9]+)\s*([0-9]+)\s*([0-9]+)\s*([0-9]+)";
                var mpMflopsOldRegex = new Regex(mpMflopsOldRegexString, RegexOptions.CultureInvariant);
                var mpMflopsOldMatch = mpMflopsOldRegex.Match(text);
                while (mpMflopsOldMatch.Success) {
                    var mpMflopsGroups = mpMflopsOldMatch.Groups;
                    if (mpMflopsGroups.Count == 8) {
                        var mpKey1st = $"{mpMflopsGroups[1]}T;12.8K;2";
                        if (!results.ContainsKey(mpKey1st)) {
                            results.Add($"{mpMflopsGroups[1]}T;12.8K;2", decimal.Parse(mpMflopsGroups[2].Value));
                            results.Add($"{mpMflopsGroups[1]}T;128K;2", decimal.Parse(mpMflopsGroups[3].Value));
                            results.Add($"{mpMflopsGroups[1]}T;12800K;2", decimal.Parse(mpMflopsGroups[4].Value));      

                            results.Add($"{mpMflopsGroups[1]}T;12.8K;32", decimal.Parse(mpMflopsGroups[5].Value));
                            results.Add($"{mpMflopsGroups[1]}T;128K;32", decimal.Parse(mpMflopsGroups[6].Value));
                            results.Add($"{mpMflopsGroups[1]}T;12800K;32", decimal.Parse(mpMflopsGroups[7].Value)); 
                        }                         
                    }

                    mpMflopsOldMatch = mpMflopsOldMatch.NextMatch();
                }
                if (results.Any()) {
                    resultItem.Value =  results.Values.Max();
                    resultItem.Values = results;
                    return;
                }

            }
        }

        private string DetectBenchmarkByText(string text)
        {
            if (text.Contains("Dhrystone Benchmark")) 
                return "Dhrystone";

            if (text.Contains("Composite Score") && text.Contains("SOR"))
                return "Scimark2";

            if (text.Contains("Whetstone Benchmark"))
                return "Whetstone";

            if (text.Contains("Linpack"))
                return "Linpack";

            if (text.Contains("MFLOPS Benchmark") || text.Contains("MP-MFLOPS")) 
                return "MP MFLOPS";

            if (text.Contains("CoreMark")) 
                return "CoreMark";

            if (text.Contains("Memory Reading Speed"))
                return "MemSpeed";

            if (text.Contains("BusSpeed"))
                return "BusSpeed";

            if (text.Contains("L.L.N.L."))
                return "LLoops";
                
            var whetstoneMpRegexString = @"Multithreading[a-zA-Z0-9_ ]*Whetstones";
            var whetstoneMpRegex = new Regex(whetstoneMpRegexString, RegexOptions.CultureInvariant);
            var whetstoneMpMath = whetstoneMpRegex.Match(text);
            if (whetstoneMpMath.Success) {
                return "WhetstoneMP";
            }

            return "Unknown";
        }

        private decimal ParseWhetstoneValue(string content)
        {
            var whetstoneRegex = @"MWIPS\s*([0-9]+.?[0-9]*)";
            var regex = new Regex(whetstoneRegex, RegexOptions.CultureInvariant);
            var match = regex.Match(content);

            if (!match.Success) {
                return 0.0m;
            }

            var value = match.Groups.Count == 2 ? match.Groups.OfType<Group>().Skip(1).First().Value : "0";
            return decimal.Parse(value, CultureInfo.InvariantCulture);
        }

        private decimal ParseWhetstoneMPValue(string content)
        {
            var whetstoneRegex = @"MWIPS\s*([0-9]+.?[0-9]*)\s*Based";
            var regex = new Regex(whetstoneRegex, RegexOptions.CultureInvariant);
            var match = regex.Match(content);

            if (!match.Success) {
                return 0.0m;
            }

            var value = match.Groups.Count == 2 ? match.Groups.OfType<Group>().Skip(1).First().Value : "0";
            return decimal.Parse(value, CultureInfo.InvariantCulture);
        }
    }
}
