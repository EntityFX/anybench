using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text.RegularExpressions;

namespace ResultsParser.Parsers
{
    public class MpMflopsResultsBenchmarkParser : BenchmarkResultsParserBase
    {
        public override string BenchmarkName => "MP MFLOPS";

        private const string NewMpRegexString = @"Data in & out\s+([0-9]+)\s+([0-9]+)\s+([0-9]+.?[0-9]*)\s+([0-9]+.?[0-9]*)\s+([0-9]+)\s+";

        private const string OldMpRegexString = @"([0-9]*)T\s*([0-9]+)\s*([0-9]+)\s*([0-9]+)\s*([0-9]+)\s*([0-9]+)\s*([0-9]+)";

        private readonly Regex _newMpRegex = new Regex(NewMpRegexString, RegexOptions.CultureInvariant);

        private readonly Regex _oldMpRegex = new Regex(OldMpRegexString, RegexOptions.CultureInvariant);

        protected override Tuple<decimal, object> ParseValues(string resultContent)
        {
            var results = ParseNewMpMflopsValue(resultContent);

            if (results.Any())
            {
                return new Tuple<decimal, object>(results.Values.Max(), results);
            }

            results = ParseOldMpMflopsValue(resultContent);

            if (results.Any())
            {
                return new Tuple<decimal, object>(results.Values.Max(), results);
            }
            return new Tuple<decimal, object>(0, null);
        }

        private Dictionary<string, decimal> ParseNewMpMflopsValue(string resultContent)
        {
            var mpMflopsMatch = _newMpRegex.Match(resultContent);

            var results = new Dictionary<string, decimal>();
            while (mpMflopsMatch.Success)
            {
                var mpMflopsGroups = mpMflopsMatch.Groups;
                if (mpMflopsGroups.Count == 6)
                {
                    var mpKey = $"{mpMflopsGroups[1]};{mpMflopsGroups[2]};{mpMflopsGroups[3]}";
                    if (!results.ContainsKey(mpKey))
                    {
                        results.Add(mpKey, decimal.Parse(mpMflopsGroups[5].Value, CultureInfo.InvariantCulture));
                    }
                }

                mpMflopsMatch = mpMflopsMatch.NextMatch();
            }

            return results;
        }

        private Dictionary<string, decimal> ParseOldMpMflopsValue(string resultContent)
        {
            var mpMflopsOldMatch = _oldMpRegex.Match(resultContent);

            var results = new Dictionary<string, decimal>();

            while (mpMflopsOldMatch.Success)
            {
                var mpMflopsGroups = mpMflopsOldMatch.Groups;
                if (mpMflopsGroups.Count == 8)
                {
                    var mpKey1st = $"{mpMflopsGroups[1]}T;12.8K;2";
                    if (!results.ContainsKey(mpKey1st))
                    {
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

            return results;
        }
    }
}