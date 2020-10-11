var HashBenchmark = /** @class */ (function (_super) {
	__extends(HashBenchmark, _super);
	
	function HashBenchmark(writer) {
		var _this = _super.call(this, writer) || this;
        return _this;
	}
	
	HashBenchmark.prototype.BenchImplementation = function() {
		_super.prototype.BenchImplementation.call(this);
		var result = "";
		for (var i = 0; i < this.Iterrations; i++) {
			result = _super.DoHash(i);
		}
		return result;
	};
	
    return HashBenchmark;
}(HashBase));