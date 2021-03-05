using System;

namespace ResultsParser.Parsers
{
    public abstract class BenchmarkResultsParserBase
    {
        public abstract string BenchmarkName { get; }

        public Tuple<decimal, object> Parse(string resultContent)
        {
            return ParseValues(resultContent);
        }

        protected abstract Tuple<decimal, object> ParseValues(string resultContent);
    }
}