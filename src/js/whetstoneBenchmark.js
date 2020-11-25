var WhetstoneBenchmark = /** @class */ (function (_super) {
	__extends(WhetstoneBenchmark, _super);
	
	function WhetstoneBenchmark(writer) {
		var _this = _super.call(this, writer) || this;
        _this.whetstone = new Whetstone(writer);
		_this.Ratio = 1;
        return _this;
	}
	
	WhetstoneBenchmark.prototype.BenchImplementation = function() {
		_super.prototype.BenchImplementation.call(this);
		return this.whetstone.bench();
	};
	
	WhetstoneBenchmark.prototype.PopulateResult = function(benchResult, benchValue) {
		benchResult.Result = benchValue.mwips;
		benchResult.Points = benchValue.mwips * this.Ratio;
		benchResult.Units = "MWIPS";
		benchResult.Output = benchValue.Output;
		return benchResult;
	};
	
	WhetstoneBenchmark.prototype.Warmup = function() {
	};
	
    return WhetstoneBenchmark;
}(BenchmarkBase));