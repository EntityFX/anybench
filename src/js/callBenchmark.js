var CallBenchmark = /** @class */ (function (_super) {
	__extends(CallBenchmark, _super);
	
	function CallBenchmark(writer) {
		var _this = _super.call(this, writer) || this;
        _this.Iterrations = 2000000000;
		_this.Ratio = 0.01;
        return _this;
	}
	
	CallBenchmark.DoCall = function(i)
	{
		return i + 1;
	}
	
	CallBenchmark.prototype.BenchImplementation = function() {
		_super.prototype.BenchImplementation.call(this);
		var a = 0;
		for (var i = 0; i < this.Iterrations; i++) {
			a = CallBenchmark.DoCall(i);
		}
		return a;
	};
	
    return CallBenchmark;
}(BenchmarkBase));