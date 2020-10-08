var DhrystoneBenchmark = /** @class */ (function (_super) {
	__extends(DhrystoneBenchmark, _super);
	
	function DhrystoneBenchmark() {
		var _this = _super.call(this) || this;
		this.R = 0.0;
        _this.dhrystone = new Dhrystone();
		_this.Ratio = 4;
        return _this;
	}
	
	DhrystoneBenchmark.prototype.BenchImplementation = function() {
		_super.prototype.BenchImplementation.call(this);
		return this.dhrystone.bench();
	};
	
	DhrystoneBenchmark.prototype.PopulateResult = function(benchResult, benchValue) {
		benchResult.Result = benchValue.VaxMips;
		benchResult.Points = benchValue.VaxMips * this.Ratio;
		benchResult.Units = "DMIPS";
		benchResult.Output = benchValue.Output;
		return benchResult;
	};
	
	DhrystoneBenchmark.prototype.Warmup = function() {
	};
	
    return DhrystoneBenchmark;
}(BenchmarkBase));