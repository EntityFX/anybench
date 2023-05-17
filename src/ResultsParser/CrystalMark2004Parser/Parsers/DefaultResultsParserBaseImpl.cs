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

        protected override CrystalMark2004ResultItem ParseValues(string resultContent)
        {
            return null;
        }
    }
}