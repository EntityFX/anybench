using System;
using System.Text.RegularExpressions;

namespace ResultsParser.Parsers
{
    public class CrystalMark2004BenchmarkParser : BenchmarkResultsParserBase
    {
        public override string BenchmarkName => "Crystal Mark 2004";

        private Dictionary<string, Regex> regexMap = new Dictionary<string, Regex>()
        {
            ["Vendor String"] = new Regex(@"<tr><td\s+.+>\s*(Vendor String)<\/td><td>\s*(.+)<\/td><\/tr>", RegexOptions.CultureInvariant),
            ["Name"] = new Regex(@"<tr><td\s+align=""right"">\s+(Name String)<\/td><td>(.+)<\/td><\/tr>", RegexOptions.CultureInvariant),
            ["Cpu name"] = new Regex(@"<tr><td\s+.+>\s*(CPU Name)<\/td><td>\s*(.+)<\/td><\/tr>", RegexOptions.CultureInvariant),
            ["Platform"] = new Regex(@"<tr><td\s+.+>\s*(Platform)<\/td><td>\s*(.+)<\/td><\/tr>", RegexOptions.CultureInvariant),
            ["Family"] = new Regex(@"<tr><td\s+.+>\s*(Family)<\/td><td>\s*(.+)<\/td><\/tr>", RegexOptions.CultureInvariant),
            ["Cores"] = new Regex(@"<tr><td\s+.+>\s*(Number\(Logical\))<\/td><td>\s*(.+)<\/td><\/tr>", RegexOptions.CultureInvariant),
            ["Clock"] = new Regex(@"<tr><td\s+.+>\s*(Clock)<\/td><td>\s*([\d.]+)\s*MHz<\/td>.*<\/tr>", RegexOptions.CultureInvariant),
            ["System Clock"] = new Regex(@"<tr><td\s+.+>\s*(System Clock)<\/td><td>\s*([\d.]+)\s*MHz<\/td>.*<\/tr>", RegexOptions.CultureInvariant),
            //Number(Logical)

            ["ALU"] = new Regex(@"<tr><td\s+.+>(ALU)<\/td><td>\s*(\d+)<\/td><\/tr>", RegexOptions.CultureInvariant),
            ["Fibonacci"] = new Regex(@"<tr><td>(Fibonacci)<\/td><td>\s*(\d+)<\/td><\/tr>", RegexOptions.CultureInvariant),
            ["Napierian"] = new Regex(@"<tr><td>(Napierian)<\/td><td>\s*(\d+)<\/td><\/tr>", RegexOptions.CultureInvariant),
            ["Eratosthenes"] = new Regex(@"<tr><td>(Eratosthenes)<\/td><td>\s*(\d+)<\/td><\/tr>", RegexOptions.CultureInvariant),
            ["QuickSort"] = new Regex(@"<tr><td>(QuickSort)<\/td><td>\s*(\d+)<\/td><\/tr>", RegexOptions.CultureInvariant),
        };

        private decimal ParseDecimal(string value)
        {
            if (string.IsNullOrEmpty(value)) return 0;
            try
            {
                if (decimal.TryParse(value, out decimal result)) return result;

                return 0;
            }
            catch (Exception)
            {
                return 0;
            }
        }

        protected override CrystalMark2004ResultItem ParseValues(string resultContent)
        {

            var matchMap = regexMap.ToDictionary(k => k.Key, v => v.Value.Match(resultContent));

            var alu = new CrystalMark2004Alu()
            {
                Total = int.Parse(matchMap["ALU"].Groups[2].Value),
                Fibonacci = int.Parse(matchMap["Fibonacci"].Groups[2].Value),
                Napierian = int.Parse(matchMap["Napierian"].Groups[2].Value),
                Eratosthenes = int.Parse(matchMap["Eratosthenes"].Groups[2].Value),
                QuickSort = int.Parse(matchMap["QuickSort"].Groups[2].Value),

            };


            var clock = string.IsNullOrEmpty(matchMap["Clock"].Groups[2].Value) ? 0 : ParseDecimal(matchMap["Clock"].Groups[2].Value);
            var cpuName = matchMap["Cpu name"].Groups[2].Value;
            var name = string.IsNullOrEmpty(matchMap["Name"].Groups[2].Value) ? cpuName + $" @ {clock} MHz"
                        : matchMap["Name"].Groups[2].Value;

            return new CrystalMark2004ResultItem()
            {
                Cpu = new CpuInfo()
                {
                    CpuName = cpuName,
                    Vendor = matchMap["Vendor String"].Groups[2].Value,
                    NameString = name,
                    Platform = string.IsNullOrEmpty(matchMap["Platform"].Groups[2].Value)
                        ? "?"
                        : matchMap["Platform"].Groups[2].Value,
                    Family = matchMap["Family"].Groups[2].Value,
                    Cores = uint.Parse(matchMap["Cores"].Groups[2].Value),
                    Generation = String.Empty,
                    Model = String.Empty,
                    Stepping = String.Empty,
                    Clock = clock,
                    SystemClock = string.IsNullOrEmpty(matchMap["System Clock"].Groups[2].Value) ?
                        0 : ParseDecimal(matchMap["System Clock"].Groups[2].Value),
                },
                Alu = alu
            };
        }
    }
}