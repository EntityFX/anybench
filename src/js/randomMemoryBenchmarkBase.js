var RandomMemoryBenchmarkBase = /** @class */ (function (_super) {
	__extends(RandomMemoryBenchmarkBase, _super);
	
	function RandomMemoryBenchmarkBase(writer, printToConsole) {
		printToConsole = (printToConsole === undefined) ? true : printToConsole;;
		var _this = _super.call(this, writer, printToConsole) || this;
        _this.Iterrations = 500000;
		_this.Ratio = 2;
        return _this;
	}
	
	RandomMemoryBenchmarkBase.prototype.Warmup = function(aspect) {
		aspect = aspect || 0.05;
		this.UseConsole(false);
		_super.prototype.Warmup.call(this);
		this.UseConsole(true);
	};
	
	RandomMemoryBenchmarkBase.prototype.BenchRandomMemory = function(aspect) {
		aspect = aspect || 0.05;
		var int4k = this.MeasureArraySpeedLong(1024);
		this.output.write("Random int 4k: %.2f MB/s".$(int4k.MbPerSec));
		this.output.writeLine();
	 	var int512k = this.MeasureArraySpeedLong(131072);
		this.output.write("Random int 512k: %.2f MB/s".$(int512k.MbPerSec));
		this.output.writeLine();
		var int8m = this.MeasureArraySpeedLong(2097152);
		this.output.write("Random int 8M: %.2f MB/s".$(int8m.MbPerSec));
		this.output.writeLine();

		var long4k = this.MeasureArraySpeedLong(512);
		this.output.write("Random long 4k: %.2f MB/s".$(long4k.MbPerSec));
		this.output.writeLine();
		var long512k = this.MeasureArraySpeedLong(65536);
		this.output.write("Random long 512k: %.2f MB/s".$(long512k.MbPerSec));
		this.output.writeLine();
		var long8m = this.MeasureArraySpeedLong(1048576);
		this.output.write("Random long 8M: %.2f MB/s".$(long8m.MbPerSec));
		this.output.writeLine();

		var results = [
			int4k.MbPerSec, int512k.MbPerSec, int8m.MbPerSec, 
			long4k.MbPerSec, long512k.MbPerSec, long8m.MbPerSec
		];
		var avg = results.sum() / results.length;
		this.output.write("Average: %.2f MB/s".$(avg));
		this.output.writeLine();
		
		return {
			Average : avg,
			Output : output.Output
		};
	}
	
	RandomMemoryBenchmarkBase.prototype.MeasureArraySpeedLong = function(size) {
		var blockSize = 16;
		var I = 0;
		
		var array = new Array(size);
		for (var i = 0; i < iterInternal; i++) {
			array[i] = getRandomInt(Number.MIN_SAFE_INTEGER, Number.MAX_SAFE_INTEGER);
		}
		
		var indexes  = new Array(size);
		for (var i = 0; i < iterInternal; i++) {
			indexes[i] = getRandomInt(0, size);
		}
		
		var end = array.length - 1;
		var k0 = Math.floor(size / 1024);
		var k1 = k0 == 0 ? 1 : k0 ;
		var iterInternal = Math.floor(this.Iterrations / k1);
		for (var idx = 0; idx < end; idx++)
		{
			I = array[idx];
		}
		var start = getTime();
		for (var i = 0; i < iterInternal; i++)
		{
			for (var idx = 0; idx < end; idx++)
			{
				I = array[indexes[idx]];
			}
		}
		var elapsed = getTime() - start;

		return { 
			MbPerSec : iterInternal * array.length * 8 / elapsed / 1024 / 1024, 
			Data : I
		};
	}
	
    return RandomMemoryBenchmarkBase;
}(BenchmarkBase));