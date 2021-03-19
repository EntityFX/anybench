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
    }
}