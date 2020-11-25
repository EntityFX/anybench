var IfElseBenchmark = /** @class */ (function (_super) {
	__extends(IfElseBenchmark, _super);
	
	function IfElseBenchmark(writer) {
		var _this = _super.call(this, writer) || this;
        _this.Iterrations = 2000000000;
		_this.Ratio = 0.01;
        return _this;
	}
	
	IfElseBenchmark.prototype.BenchImplementation = function() {
		var d = 0;
		for (var i = 0, c = -1; i < this.Iterrations; i++, c--)
		{
			c = c == -4 ? -1 : c;
			if (i == -1)
			{
				d = 3;
			}
			else if (i == -2)
			{
				d = 2;
			}
			else if (i == -3)
			{
				d = 1;
			}
			d = d + 1;
		}
		return d;
	};
	
    return IfElseBenchmark;
}(BenchmarkBase));