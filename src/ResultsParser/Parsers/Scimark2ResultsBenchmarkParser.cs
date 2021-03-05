using System;
using System.Globalization;
using System.Linq;
using System.Text.RegularExpressions;

namespace ResultsParser.Parsers
{
    public class Scimark2ResultsBenchmarkParser : BenchmarkResultsParserBase
    {
        public override string BenchmarkName => "Scimark2";

        private const string regexString = @"Composite Score:\s*([0-9]+.?[0-9]*)";

        private Regex regex = new Regex(regexString, RegexOptions.CultureInvariant);

        protected override Tuple<decimal, object> ParseValues(string resultContent)
        {

            var match = regex.Match(resultContent);

            var value = match.Groups.Count == 2 ? match.Groups.OfType<Group>().Skip(1).First().Value : "0";
            var decimalValue = decimal.Parse(value, CultureInfo.InvariantCulture);

            return new Tuple<decimal, object>(decimalValue, null);
        }
    }
}