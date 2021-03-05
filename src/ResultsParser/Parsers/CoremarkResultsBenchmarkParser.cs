using System;
using System.Globalization;
using System.Linq;
using System.Text.RegularExpressions;

namespace ResultsParser.Parsers
{
    public class CoremarkResultsBenchmarkParser : BenchmarkResultsParserBase
    {
        public override string BenchmarkName => "Coremark";

        private const string regexString = @"CoreMark\s+([0-9]+.?[0-9]+)?\s+:?\s+([0-9]+.?[0-9]*)\s+\/\s+.*\s+\/\s+([0-9]+)?";

        private Regex regex = new Regex(regexString, RegexOptions.CultureInvariant);

        protected override Tuple<decimal, object> ParseValues(string resultContent)
        {

            var match = regex.Match(resultContent);

            var matchGroups = match.Groups.Count == 3 || match.Groups.Count == 4;
            var value = matchGroups ? match.Groups.OfType<Group>().Skip(2).First().Value : "0";
            var decimalValue = decimal.Parse(value, CultureInfo.InvariantCulture);

            return new Tuple<decimal, object>(decimalValue, null);
        }
    }
}