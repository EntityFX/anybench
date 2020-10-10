var ArithemticsBenchmark = /** @class */ (function (_super) {
	__extends(ArithemticsBenchmark, _super);
	
	function ArithemticsBenchmark(writer) {
		var _this = _super.call(this, writer) || this;
        return _this;
	}
	
	ArithemticsBenchmark.prototype.BenchImplementation = function() {
		_super.prototype.BenchImplementation.call(this);
		this.R = 0;
		for (var i = 0; i < this.Iterrations; i++) {
			this.R += _super.DoArithmetics(i);
		}
		return this.R;
	};
	
    return ArithemticsBenchmark;
}(ArithmeticsBase));