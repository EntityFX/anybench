var MathBenchmark = /** @class */ (function (_super) {
	__extends(MathBenchmark, _super);
	
	function MathBenchmark() {
		var _this = _super.call(this) || this;
        return _this;
	}
	
	MathBenchmark.prototype.BenchImplementation = function() {
		_super.prototype.BenchImplementation.call(this);
		var R = 0;
		var li = 0;
		for (var i = 0; i < this.Iterrations; li = i, i++) {
			this.R += _super.DoMath(i, li);
		}
		return R;
	};
	
    return MathBenchmark;
}(MathBase));