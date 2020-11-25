var HashBase = /** @class */ (function (_super) {
	__extends(HashBase, _super);
	
	var strs = [
            "the quick brown fox jumps over the lazy dog", "Some red wine", "Candels & Ropes" ];
	
	function HashBase(writer) {
		var _this = _super.call(this, writer) || this;
        _this.Iterrations = 2000000;
		_this.Ratio = 10;
        return _this;
	}
	
	HashBase.DoHash = function(i) {
		var sha = CryptoJS.SHA1(strs[i % 3]);
		var sha256 = CryptoJS.SHA256(strs[(i + 1) % 3]);
		return sha + sha256;
	}
	
    return HashBase;
}(BenchmarkBase));