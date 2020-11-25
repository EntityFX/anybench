var DhrystoneBenchmark = /** @class */ (function (_super) {
	__extends(DhrystoneBenchmark, _super);
	
	function DhrystoneBenchmark(writer) {
		var _this = _super.call(this, writer) || this;
        _this.dhrystone = new Dhrystone(writer);
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