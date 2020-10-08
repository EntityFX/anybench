var RandomMemoryBenchmark = /** @class */ (function (_super) {
	__extends(RandomMemoryBenchmark, _super);
	
	function RandomMemoryBenchmark(printToConsole = true) {
		var _this = _super.call(this, printToConsole) || this;
        return _this;
	}
	
	RandomMemoryBenchmark.prototype.BenchImplementation = function() {
		return this.BenchRandomMemory();
	};
	
	RandomMemoryBenchmark.prototype.PopulateResult = function(benchResult, result) {
		benchResult.Points = result.Average * this.Ratio;
		benchResult.Result = result.Average;
		benchResult.Units = "MB/s";
		benchResult.Output = result.Output;
		return benchResult;
	};
	
    return RandomMemoryBenchmark;
}(RandomMemoryBenchmarkBase));