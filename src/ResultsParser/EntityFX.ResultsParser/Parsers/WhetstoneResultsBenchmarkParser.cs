using System;
using System.Globalization;
using System.Linq;
using System.Text.RegularExpressions;
using ResultsParser.Parsers;

namespace ResultsParser
{
    public class WhetstoneResultsBenchmarkParser : BenchmarkResultsParserBase
    {
        public override string BenchmarkName => "Whetstone";

        protected override Tuple<decimal, object> ParseValues(string resultContent)
        {
            var results = ParseWhetstoneValue(resultContent);
            return new Tuple<decimal, object>(results, null);
        }

        private decimal ParseWhetstoneValue(string content)
        {
            var whetstoneRegex = @"MWIPS\s*([0-9]+.?[0-9]*)";
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