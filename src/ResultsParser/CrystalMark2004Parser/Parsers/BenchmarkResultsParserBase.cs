using System;

namespace ResultsParser.Parsers
{
    public abstract class BenchmarkResultsParserBase
    {
        public abstract string BenchmarkName { get; }

        public CrystalMark2004ResultItem Parse(string resultContent)
        {
            return ParseValues(resultContent);
        }

        protected abstract CrystalMark2004ResultItem ParseValues(string resultContent);
    }
}