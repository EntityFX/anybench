using System;
using System.Globalization;
using System.Linq;
using System.Text.RegularExpressions;

namespace ResultsParser.Parsers
{
    public class DhrystoneResultsBenchmarkParser : BenchmarkResultsParserBase
    {
        public override string BenchmarkName => "Dhrystone";

        private const string dhrystoneRegex = @"VAX\s+MIPS\s+rating =\s*([0-9]+.?[0-9]*)";

        private Regex regex = new Regex(dhrystoneRegex, RegexOptions.CultureInvariant);

        protected override Tuple<decimal, object> ParseValues(string resultContent)
        {

            var match = regex.Match(resultContent);

            if (!match.Success)
            {
                return new Tuple<decimal, object>(0, null);
            }

            var value = match.Groups.Count == 2 ? match.Groups.OfType<Group>().Skip(1).First().Value : "0";
            var decimalValue = decimal.Parse(value, CultureInfo.InvariantCulture);

            return new Tuple<decimal, object>(decimalValue, null);
        }
    }
}