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

        private readonly IBenchmarkResultsRepository _cpuRepository;

        public BenchmarkResult[] BenchmarkResults;

        private BenchmarkResultsFilter _filter = new BenchmarkResultsFilter();

        public CpuBenchmarksModel(ILogger<CpuBenchmarksModel> logger, IBenchmarkResultsRepository cpuRepository)
        {
            _logger = logger;
            _cpuRepository = cpuRepository;
        }

        public async Task<IActionResult> OnGetAsync(int id)
        {
            _filter.ByCpuId = id;

            BenchmarkResults = (await _cpuRepository.ReadAsync(_filter))?.ToArray();

            if (BenchmarkResults == null)
            {
                return NotFound();
            }

            return Page();
        }
    }
}