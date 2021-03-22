using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using EntityFx.Benchmark.DataAccess;
using EntityFx.BenchmarkDb.Contracts;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.Extensions.Logging;

namespace EntityFx.BenchmarkDb.Web.Pages
{
    public class IndexModel : PageModel
    {
        private readonly ILogger<IndexModel> _logger;

        private readonly ICpuRepository _cpuRepository;

        public Cpu[] Cpus;

        public IndexModel(ILogger<IndexModel> logger, ICpuRepository cpuRepository)
        {
            _logger = logger;
            _cpuRepository = cpuRepository;
        }

        public async void OnGetAsync()
        {
            Cpus = (await _cpuRepository.ReadAllAsync(new PageFilter())).ToArray();
        }
    }
}
