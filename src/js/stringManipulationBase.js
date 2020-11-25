var StringManipulationBase = /** @class */ (function (_super) {
	__extends(StringManipulationBase, _super);
	
	function StringManipulationBase(writer) {
		var _this = _super.call(this, writer) || this;
        _this.Iterrations = 5000000;
		_this.Ratio = 10;
        return _this;
	}
	
	StringManipulationBase.DoStringManipilation = function(str)
	{
		return (str.split(" ").join("/").replace(/\//g, "_").toUpperCase() + "AAA")
			.toLowerCase().replace("aaa", ".");
	}
	
    return StringManipulationBase;
}(BenchmarkBase));