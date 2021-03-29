using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Dapper;
using Dapper.Contrib.Extensions;
using EntityFx.BenchmarkDb.Contracts;
using EntityFx.BenchmarkDb.Contracts.Benchmark;

namespace EntityFx.Benchmark.DataAccess
{
    public class BenchmarkResultsRepository : SqliteRepositoryBase, IBenchmarkResultsRepository
    {
        public void Create(BenchmarkResult benchmarkResult)
        {
            try
            {
                var model = MapEntity(benchmarkResult);
                model.CreateDateTime = DateTime.Now;
                var id = Connection.Insert<BenchmarkResultEntity>(model);
            }
            catch (Exception ex)
            {
                return;
            }
        }

        public async void Delete(int id)
        {
            var result = await ReadByIdAsync(id);
            if (result == null)
            {
                return;
            }

            Connection.Delete(result);
        }

        public async Task<IEnumerable<BenchmarkResult>> ReadAsync(BenchmarkResultsFilter filter)
        {
            var queryBuilder = new SqlBuilder()
                .Select(nameof(BenchmarkResultEntity.Id))
                .Select(nameof(BenchmarkResultEntity.Benchmark))
                .Select(nameof(BenchmarkResultEntity.Value))
                .Select(nameof(BenchmarkResultEntity.UnitsOfMeasure))
                .Select(nameof(BenchmarkResultEntity.Category))
                .Select(nameof(BenchmarkResultEntity.SubCategory));


            if (filter != null)
            {
                var parameters = new DynamicParameters();

                AddFilter(filter.ByCategory, nameof(BenchmarkResultEntity.Category), parameters, queryBuilder);
                AddFilter(filter.BySubcategory, nameof(BenchmarkResultEntity.SubCategory), parameters, queryBuilder);
                AddFilter(filter.ByCpuId, nameof(BenchmarkResultEntity.CpuId), parameters, queryBuilder);

            }

            var builderTemplate = queryBuilder.AddTemplate("SELECT /**select**/ FROM BenchmarkResultEntity /**where**/ /**orderby**/");

            var result = await Connection.QueryAsync<BenchmarkResultEntity>(builderTemplate.RawSql, builderTemplate.Parameters);

            return result == null ? Enumerable.Empty<BenchmarkResult>() : result.Select(MapModel);
        }

        public async Task<BenchmarkResult> ReadByIdAsync(int id)
        {
            var sqlQuery = "SELECT * FROM BenchmarkResultEntity Where Id = @Id";

            var result = await Connection.QuerySingleOrDefaultAsync<BenchmarkResultEntity>(sqlQuery, new { Id = id });

            return result == null ? null : MapModel(result);
        }

        private BenchmarkResult MapModel(BenchmarkResultEntity cpuEntity)
        {
            var result = new BenchmarkResult()
            {
                Id = cpuEntity.Id,
                BenchmarkResultId = cpuEntity.BenchmarkResultId,
                Benchmark = cpuEntity.Benchmark,
                Category = cpuEntity.Category,
                SubCategory = cpuEntity.SubCategory,
                Value = cpuEntity.Value,
                UnitsOfMeasure = cpuEntity.UnitsOfMeasure,
                CpuId = cpuEntity.CpuId,
                FileName = cpuEntity.FileName,
                Output = cpuEntity.Output,
            };

            return result;
        }

        private BenchmarkResultEntity MapEntity(BenchmarkResult model)
        {
            var result = new BenchmarkResultEntity()
            {
                Id = model.Id,
                BenchmarkResultId = model.BenchmarkResultId,
                Benchmark = model.Benchmark,
                Category = model.Category,
                SubCategory = model.SubCategory,
                Value = model.Value,
                UnitsOfMeasure = model.UnitsOfMeasure,
                CpuId = model.CpuId,
                FileName = model.FileName,
                Output = model.Output,
            };

            return result;
        }
    }
}