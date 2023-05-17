using System;
using System.Text.RegularExpressions;

namespace ResultsParser.Parsers
{
    public class CrystalMark2004BenchmarkParser : BenchmarkResultsParserBase
    {
        public override string BenchmarkName => "Crystal Mark 2004";

        private const string NameRegexString = @"<tr><td\s+align=""right"">\s+(Name String)<\/td><td>(.+)<\/td><\/tr>";

        private Regex nameRegex = new Regex(NameRegexString, RegexOptions.CultureInvariant);

        private Dictionary<string, Regex> regexMap = new Dictionary<string, Regex>()
        {
            ["Vendor String"] = new Regex(@"<tr><td\s+.+>\s*(Vendor String)<\/td><td>\s*(.+)<\/td><\/tr>", RegexOptions.CultureInvariant),
            ["Platform"] = new Regex(@"<tr><td\s+.+>\s*(Platform)<\/td><td>\s*(.+)<\/td><\/tr>", RegexOptions.CultureInvariant),
            ["Family"] = new Regex(@"<tr><td\s+.+>\s*(Family)<\/td><td>\s*(.+)<\/td><\/tr>", RegexOptions.CultureInvariant),

            ["ALU"] = new Regex(@"<tr><td\s+.+>(ALU)<\/td><td>\s*(\d+)<\/td><\/tr>", RegexOptions.CultureInvariant),
            ["Fibonacci"] = new Regex(@"<tr><td>(Fibonacci)<\/td><td>\s*(\d+)<\/td><\/tr>", RegexOptions.CultureInvariant),
            ["Napierian"] = new Regex(@"<tr><td>(Napierian)<\/td><td>\s*(\d+)<\/td><\/tr>", RegexOptions.CultureInvariant),
            ["Eratosthenes"] = new Regex(@"<tr><td>(Eratosthenes)<\/td><td>\s*(\d+)<\/td><\/tr>", RegexOptions.CultureInvariant),
            ["QuickSort"] = new Regex(@"<tr><td>(QuickSort)<\/td><td>\s*(\d+)<\/td><\/tr>", RegexOptions.CultureInvariant),
        };

        protected override CrystalMark2004ResultItem ParseValues(string resultContent)
        {
            var match = nameRegex.Match(resultContent);

            if (!match.Success || match.Groups.Count != 3)
            {
                return null;
            }

            var matchMap = regexMap.ToDictionary(k => k.Key, v => v.Value.Match(resultContent));

            var alu = new CrystalMark2004Alu()
            {
                Total = int.Parse(matchMap["ALU"].Groups[2].Value),
                Fibonacci = int.Parse(matchMap["Fibonacci"].Groups[2].Value),
                Napierian = int.Parse(matchMap["Napierian"].Groups[2].Value),
                Eratosthenes = int.Parse(matchMap["Eratosthenes"].Groups[2].Value),
                QuickSort = int.Parse(matchMap["QuickSort"].Groups[2].Value),

            };

            return new CrystalMark2004ResultItem()
            {
                Cpu = new CpuInfo()
                {
                    CpuName = match.Groups[2].Value,
                    Vendor = matchMap["Vendor String"].Groups[2].Value,
                    Platform = matchMap["Platform"].Groups[2].Value,
                    Family = matchMap["Family"].Groups[2].Value,
                    Generation = String.Empty,
                    Model = String.Empty,
                    Stepping = String.Empty
                },
                Alu = alu
            };
        }
    }
}