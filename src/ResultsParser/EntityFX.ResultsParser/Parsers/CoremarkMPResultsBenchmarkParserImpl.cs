using System;
using System.Linq;
using System.Text.RegularExpressions;

namespace ResultsParser.Parsers
{
    class CoremarkMPResultsBenchmarkParserImpl : CoremarkResultsBenchmarkParser
    {
        public override string BenchmarkName => "CoremarkMP";

        private const string regexParallelString = @"Parallel Fork\s*:\s*([0-9]+)";

        protected override Tuple<decimal, object> ParseValues(string resultContent)
        {
            var result = base.ParseValues(resultContent);

            var parallelMatch = regex.Match(regexParallelString);

            if (parallelMatch.Groups.Count != 2) return result;
            var value = parallelMatch.Groups.OfType<Group>().Skip(1).First().Value;
            return new Tuple<decimal, object>(result.Item1, int.Parse(value));

        }
    }
}