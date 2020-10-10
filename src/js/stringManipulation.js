var StringManipulation = /** @class */ (function (_super) {
	__extends(StringManipulation, _super);
	
	function StringManipulation(writer) {
		var _this = _super.call(this, writer) || this;
        return _this;
	}
	
	StringManipulation.prototype.BenchImplementation = function() {
		_super.prototype.BenchImplementation.call(this);
		var str = "the quick brown fox jumps over the lazy dog";
		var str1 = "";
		for (var i = 0; i < this.Iterrations; i++) {
			str1 = _super.DoStringManipilation(str);
		}
		return str1;
	};
	
    return StringManipulation;
}(StringManipulationBase));