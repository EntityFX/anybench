var MathBase = /** @class */ (function (_super) {
	__extends(MathBase, _super);
	
	function MathBase() {
		var _this = _super.call(this) || this;
		this.R = 0.0;
        _this.Iterrations = 200000000;
		_this.Ratio = 0.5;
        return _this;
	}
	
	MathBase.DoMath = function(i, li)
	{
		var rev = 1.0 / (i + 1.0);
            return Math.abs(i) * Math.acos(rev) * Math.asin(rev) * Math.atan(rev) +
                Math.floor(li) + Math.exp(rev) * Math.cos(i) * Math.sin(i) * Math.PI + Math.sqrt(i);	}
	
    return MathBase;
}(BenchmarkBase));