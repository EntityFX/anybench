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
    "CpuName", "Vendor", "NameString", "Platform", "Cores",
    "Family", "Generation", "Model", "Stepping", "Clock", "System Clock", "ALU",
    "Fibonacci", "Napierian", "Eratosthenes", "QuickSort",
    "FPU", "MikoFPU", "RandMeanSS", "FFT", "Mandelbrot"},
    benchItems.Select(c => new[] { 
        c.Result.Cpu.CpuName, c.Result.Cpu.Vendor, c.Result.Cpu.NameString, c.Result.Cpu.Platform, 
        c.Result.Cpu.Cores.ToString(),
        c.Result.Cpu.Family.ToString(), c.Result.Cpu.Generation.ToString(),
        c.Result.Cpu.Model.ToString(), c.Result.Cpu.Stepping.ToString(),  
        c.Result.Cpu.Clock.ToString(), c.Result.Cpu.SystemClock.ToString(),

        c.Result.Alu.Total.ToString(),  c.Result.Alu.Fibonacci.ToString() , c.Result.Alu.Napierian.ToString(),
        c.Result.Alu.Eratosthenes.ToString() , c.Result.Alu.QuickSort.ToString(),

        c.Result.Fpu.Total.ToString(), c.Result.Fpu.MikoFPU.ToString(), c.Result.Fpu.RandMeanSS.ToString(),
        c.Result.Fpu.FFT.ToString(), c.Result.Fpu.Mandelbrot.ToString(),
    }));


foreach (var benchmark in benchItems)
{
    File.WriteAllText($"output/{benchmark.FileName}", benchmark.ResultText);
}

void WriteCsv(string fileName, IEnumerable<string> header, IEnumerable<IEnumerable<string>> data)
{
    using var stream = File.CreateText(fileName);
    stream.WriteLine(String.Join(',', header.ToArray()));
    foreach (var item in data)
    {
        stream.WriteLine(String.Join(',', item.ToArray()));
    }
}