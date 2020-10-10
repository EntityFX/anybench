var Scimark2Benchmark = /** @class */ (function (_super) {
	__extends(Scimark2Benchmark, _super);
	
	function Scimark2Benchmark(writer) {
		var _this = _super.call(this, writer) || this;
        _this.scimark2 = new Scimark2(writer);
		_this.Ratio = 10;
        return _this;
	}
	
	Scimark2Benchmark.prototype.BenchImplementation = function() {
		_super.prototype.BenchImplementation.call(this);
		return this.scimark2.bench();
	};
	
	Scimark2Benchmark.prototype.PopulateResult = function(benchResult, benchValue) {
		benchResult.Result = benchValue.CompositeScore;
		benchResult.Points = benchValue.CompositeScore * this.Ratio;
		benchResult.Units = "CompositeScore";
		benchResult.Output = benchValue.Output;
		return benchResult;
	};
	
	Scimark2Benchmark.prototype.Warmup = function() {
	};
	
    return Scimark2Benchmark;
}(BenchmarkBase));