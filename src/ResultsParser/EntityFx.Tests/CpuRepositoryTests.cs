using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http.Headers;
using EntityFx.Benchmark.DataAccess;
using EntityFx.BenchmarkDb.Contracts;
using NUnit.Framework;

namespace EntityFx.Tests
{
    public class CpuRepositoryTests
    {
        [SetUp]
        public void Setup()
        {
        }

        [Test]
        public void Test1()
        {
            SqliteRepositoryBase.FileNameInternal = "benchmarks.sqlite3";

            var cpuRepository = new CpuRepository();

            var cpu = new Cpu()
            {
                Manufacturer = "Intel",
                Model = "Core i7 2600",
                Category = "x86"
            };

            cpuRepository.Create(cpu);
        }

        [Test]
        public void LoadCpus()
        {
            var cpusList = ReadCpusCsv("Cpus.csv");

            SqliteRepositoryBase.FileNameInternal = "benchmarks.sqlite3";

            var cpuRepository = new CpuRepository();

            foreach (var cpuItem in cpusList)
            {
                var cpu = new Cpu()
                {
                    Manufacturer = cpuItem["Vendor"],
                    Model = cpuItem["Model"],
                    Category = cpuItem["Architecture"],
                    Specs = new CommonSpecs()
                    {
                        Cores = 1,
                        Threads = 1
                    }
                };

                cpuRepository.Create(cpu);
            }
        }

        private IEnumerable<IDictionary<string, string>> ReadCpusCsv(string filePath)
        {
            var cpus = File.ReadAllLines(filePath);

            var headers = cpus.First().Split(',').ToArray();

            return cpus.Skip(1).Select(s => s.Split(',')
                .Select((it, i) => new KeyValuePair<string, string>(headers[i], it))
                .ToDictionary(kv => kv.Key, kv => kv.Value));
        }
    }
}