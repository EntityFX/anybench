using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using EntityFx.Benchmark.DataAccess;
using EntityFx.BenchmarkDb.Contracts;
using EntityFx.BenchmarkDb.Contracts.Benchmark;
using EntityFx.BenchmarkDb.Web.Pages;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.Extensions.Logging;

namespace EntityFx.BenchmarkDb.Web
{
    public class CpuBenchmarksModel : PageModel
    {
        private readonly ILogger<CpuBenchmarksModel> _logger;

        private readonly ICpuRepository _cpuRepository;
        private readonly IBenchmarkResultsRepository _benchmarkResultsRepository;

        public BenchmarkResult[] BenchmarkResults;

        public Cpu Cpu;

        private BenchmarkResultsFilter _filter = new BenchmarkResultsFilter();

        public CpuBenchmarksModel(ILogger<CpuBenchmarksModel> logger, ICpuRepository cpuRepository, IBenchmarkResultsRepository benchmarkResultsRepository)
        {
            _logger = logger;
            _cpuRepository = cpuRepository;
            _benchmarkResultsRepository = benchmarkResultsRepository;
        }

        public async Task<IActionResult> OnGetAsync(int id)
        {
            _filter.ByCpuId = id;

            BenchmarkResults = (await _benchmarkResultsRepository.ReadAsync(_filter))?.ToArray();

            if (BenchmarkResults == null)
            {
                return NotFound();
            }

            Cpu = await _cpuRepository.ReadByIdAsync(id);

            return Page();
        }


    }
}