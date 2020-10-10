var ArithmeticsBase = /** @class */ (function (_super) {
	__extends(ArithmeticsBase, _super);
	
	function ArithmeticsBase(writer) {
		var _this = _super.call(this, writer) || this;
		this.R = 0.0;
        _this.Iterrations = 300000000;
		_this.Ratio = 0.03;
        return _this;
	}
	
	ArithmeticsBase.DoArithmetics = function(i)
	{
		return (i / 10) * (i / 100) * (i / 100) * (i / 100) * 1.11 + (i / 100) * (i / 1000) * (i / 1000) * 2.22 - i * (i / 10000) * 3.33 + i * 5.33;
	}
	
    return ArithmeticsBase;
}(BenchmarkBase));