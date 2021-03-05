using System;
using System.Globalization;
using System.Linq;
using System.Text.RegularExpressions;

namespace ResultsParser.Parsers
{
    public class WhetstoneMPResultsBenchmarkParser : BenchmarkResultsParserBase
    {
        public override string BenchmarkName => "WhetstoneMP";

        protected override Tuple<decimal, object> ParseValues(string resultContent)
        {
            var results = ParseWhetstoneMPValue(resultContent);
            return new Tuple<decimal, object>(results, null);
        }

        private decimal ParseWhetstoneMPValue(string content)
        {
            var whetstoneRegex = @"MWIPS\s*([0-9]+.?[0-9]*)\s*Based";
            var regex = new Regex(whetstoneRegex, RegexOptions.CultureInvariant);
            var match = regex.Match(content);

            if (!match.Success)
            {
                return 0.0m;
            }

            var value = match.Groups.Count == 2 ? match.Groups.OfType<Group>().Skip(1).First().Value : "0";
            return decimal.Parse(value, CultureInfo.InvariantCulture);
        }
    }
}