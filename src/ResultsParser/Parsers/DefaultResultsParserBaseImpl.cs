using System;

namespace ResultsParser.Parsers
{
    class DefaultResultsParserBaseImpl : BenchmarkResultsParserBase
    {
        public override string BenchmarkName { get; }

        public DefaultResultsParserBaseImpl(string benchmarkName)
        {
            BenchmarkName = benchmarkName;
        }

        protected override Tuple<decimal, object> ParseValues(string resultContent)
        {
            return new Tuple<decimal, object>(0, null);
        }
    }
}