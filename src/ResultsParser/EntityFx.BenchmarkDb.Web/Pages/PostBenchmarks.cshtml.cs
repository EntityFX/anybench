using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using EntityFx.Benchmark.DataAccess;
using EntityFx.BenchmarkDb.Contracts;
using EntityFx.BenchmarkDb.Contracts.Benchmark;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.Extensions.Logging;

namespace EntityFx.BenchmarkDb.Web
{
    [IgnoreAntiforgeryToken()]
    public class PostBenchmarksModel : PageModel
    {
        private readonly ILogger<PostBenchmarksModel> _logger;

        private readonly ICpuRepository _cpuRepository;
        private readonly IBenchmarkResultsRepository _benchmarkResultsRepository;

        public Cpu Cpu;


        public PostBenchmarksModel(ILogger<PostBenchmarksModel> logger, ICpuRepository cpuRepository, IBenchmarkResultsRepository benchmarkResultsRepository)
        {
            _logger = logger;
            _cpuRepository = cpuRepository;
            _benchmarkResultsRepository = benchmarkResultsRepository;
        }

        public async Task<IActionResult> OnPostAsync([FromBody]CpuBenchmarkResults result)
        {
            if (result.CpuId.HasValue)
            {
                Cpu = await _cpuRepository.ReadByIdAsync(result.CpuId.Value);
            }
            else if (!string.IsNullOrEmpty(result.CpuName))
            {
                Cpu = (await _cpuRepository.ReadAsync(new CpuFilter() {SearchString = result.CpuName}))
                    .FirstOrDefault();
            }

            if (Cpu == null)
            {
                return NotFound($"Cpu not found");
            }

            return new OkResult();
        }
    }
}