// See https://aka.ms/new-console-template for more information
using ResultsParser;

var resultsPath = Path.Combine("results");

var outputPath = "output";

if (!Directory.Exists(outputPath))
{
    Directory.CreateDirectory(outputPath);
}

var extension = "*.html";
if (args.Length > 0)
{
    extension = args[0];
}

var files = Directory.GetFiles(resultsPath, extension, new EnumerationOptions() { RecurseSubdirectories = true });

var benchmarksParser = new BenchmarksResultsParser();

var benchItems = files.Select(f => benchmarksParser.Parse(f))
    .Where(b => b != null && !string.IsNullOrEmpty(b.ResultText))
    .OrderBy(b => b.Result.Alu.Total).ToArray();

var cpusCsvPath = Path.Combine(outputPath, "Cpus.csv");
WriteCsv(cpusCsvPath, new[] { 
    "CpuName", "Vendor", "NameString", "Platform", "Cores", "Family", "Generation", "Model", "Stepping", "ALU" },
    benchItems.Select(c => new[] { 
        c.Name, c.Result.Cpu.Vendor, c.Result.Cpu.NameString, " ", 
        c.Result.Cpu.Cores.ToString(),
        c.Result.Cpu.Family.ToString(), c.Result.Cpu.Generation.ToString(),
        c.Result.Cpu.Model.ToString(), c.Result.Cpu.Stepping.ToString(), c.Result.Alu.Total.ToString()  }));

void WriteCsv(string fileName, IEnumerable<string> header, IEnumerable<IEnumerable<string>> data)
{
    using var stream = File.CreateText(fileName);
    stream.WriteLine(String.Join(',', header.ToArray()));
    foreach (var item in data)
    {
        stream.WriteLine(String.Join(',', item.ToArray()));
    }
}