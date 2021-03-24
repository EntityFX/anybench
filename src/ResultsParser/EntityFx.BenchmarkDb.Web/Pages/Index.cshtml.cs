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

        [BindProperty(SupportsGet = true)]
        public string ByCategory { get; set; }

        [BindProperty(SupportsGet = true)]
        public string ByManufacturer { get; set; }

        [BindProperty(SupportsGet = true)]
        public string ByMicroArchitecture { get; set; }

        [BindProperty(SupportsGet = true)]
        public string ByInstructionSet { get; set; }


        [BindProperty(SupportsGet = true)]
        public string OrderBy { get; set; }

        [BindProperty(SupportsGet = true)]
        public string SearchString { get; set; }

        private CpuFilter _filter = new CpuFilter();

        public IndexModel(ILogger<IndexModel> logger, ICpuRepository cpuRepository)
        {
            _logger = logger;
            _cpuRepository = cpuRepository;
        }

        public async Task<IActionResult> OnGetAsync()
        {
            if (SearchString != null)
            {
                _filter.SearchString = SearchString;
            }
            else
            {
                if (ByCategory != null)
                {
                    _filter.ByCategory = ByCategory;
                }

                if (ByManufacturer != null)
                {
                    _filter.ByManufacturer = ByManufacturer;
                }

                if (ByMicroArchitecture != null)
                {
                    _filter.ByMicroArchitecture = ByMicroArchitecture;
                }

                if (ByInstructionSet != null)
                {
                    _filter.ByInstructionSet = ByInstructionSet;
                }

                if (OrderBy != null)
                {
                    _filter.OrderBy = OrderBy;
                }
            }

            Cpus = (await _cpuRepository.ReadAsync(_filter)).ToArray();

            if (Cpus.Length == 1)
            {
                return RedirectToPage("./CpuDetail", new {Id = Cpus.First().Id.ToString()});
            }

            return Page();
        }
    }
}
