var MemoryBenchmarkBase = /** @class */ (function (_super) {
	__extends(MemoryBenchmarkBase, _super);
	
	function MemoryBenchmarkBase(printToConsole = true) {
		var _this = _super.call(this, printToConsole) || this;
        _this.Iterrations = 500000;
		_this.Ratio = 1;
        return _this;
	}
	
	MemoryBenchmarkBase.prototype.Warmup = function(aspect = 0.05) {
		this.UseConsole(false);
		_super.prototype.Warmup.call(this);
		this.UseConsole(true);
	};
	
	MemoryBenchmarkBase.prototype.BenchRandomMemory = function(aspect = 0.05) {
		var int4k = this.MeasureArraySpeed(1024);
		this.output.write("int 4k: %.2f MB/s".$(int4k.MbPerSec));
		this.output.writeLine();
	 	var int512k = this.MeasureArraySpeed(131072);
		this.output.write("int 512k: %.2f MB/s".$(int512k.MbPerSec));
		this.output.writeLine();
		var int8m = this.MeasureArraySpeed(2097152);
		this.output.write("int 8M: %.2f MB/s".$(int8m.MbPerSec));
		this.output.writeLine();
		var int32m = this.MeasureArraySpeed(32 * 1024 * 1024 / 8);
		this.output.write("int 32M: %.2f MB/s".$(int32m.MbPerSec));
		this.output.writeLine();

		var long4k = this.MeasureArraySpeedLong(512);
		this.output.write("long 4k: %.2f MB/s".$(long4k.MbPerSec));
		this.output.writeLine();
		var long512k = this.MeasureArraySpeedLong(65536);
		this.output.write("long 512k: %.2f MB/s".$(long512k.MbPerSec));
		this.output.writeLine();
		var long8m = this.MeasureArraySpeedLong(1048576);
		this.output.write("long 8M: %.2f MB/s".$(long8m.MbPerSec));
		this.output.writeLine();
		var long32m = this.MeasureArraySpeedLong(32 * 1024 * 1024 / 8);
		this.output.write("long 32M: %.2f MB/s".$(long32m.MbPerSec));
		this.output.writeLine();

		var results = [
			int4k.MbPerSec, int512k.MbPerSec, int8m.MbPerSec, int32m.MbPerSec ,
			long4k.MbPerSec, long512k.MbPerSec, long8m.MbPerSec, long32m.MbPerSec];
		var avg = results.sum() / results.length;
		this.output.write("Average: %.2f MB/s".$(avg));
		this.output.writeLine();
		
		return {
			Average : avg,
			Output : output.Output
		};
	}
	
	MemoryBenchmarkBase.prototype.MeasureArraySpeed = function(size) {
		var blockSize = 8;
		var L = new Array(blockSize);
		
		var array = new Array(size);
		for (var i = 0; i < iterInternal; i++) {
			array[i] = getRandomInt(Number.MIN_SAFE_INTEGER, Number.MAX_SAFE_INTEGER);
		}

		var end = array.length - 1;
		var k0 = Math.floor(size / 1024);
		var k1 = k0 == 0 ? 1 : k0 ;
		var iterInternal = Math.floor(this.Iterrations / k1);
		for (var idx = 0; idx < end; idx+=blockSize)
		{
			L[0] = array[idx];
			L[1] = array[idx+1];
			L[2] = array[idx+2];
			L[3] = array[idx+3];
			L[4] = array[idx+4];
			L[5] = array[idx+5];
			L[6] = array[idx+6];
			L[7] = array[idx+7];
		}
		var start = getTime();
		for (var i = 0; i < iterInternal; i++)
		{
			for (var idx = 0; idx < end; idx+=blockSize)
			{
				L[0] = array[idx];
				L[1] = array[idx+1];
				L[2] = array[idx+2];
				L[3] = array[idx+3];
				L[4] = array[idx+4];
				L[5] = array[idx+5];
				L[6] = array[idx+6];
				L[7] = array[idx+7];
			}
		}
		var elapsed = getTime() - start;

		return { 
			MbPerSec : iterInternal * array.length * 8 / elapsed / 1024 / 1024, 
			Data : L
		};
	}
	
	MemoryBenchmarkBase.prototype.MeasureArraySpeedLong = function(size) {
		var blockSize = 16;
		var I = new Array(blockSize);
		
		var array = new Array(size);
		for (var i = 0; i < iterInternal; i++) {
			array[i] = getRandomInt(Number.MIN_SAFE_INTEGER, Number.MAX_SAFE_INTEGER);
		}

		var end = array.length - 1;
		var k0 = Math.floor(size / 1024);
		var k1 = k0 == 0 ? 1 : k0 ;
		var iterInternal = Math.floor(this.Iterrations / k1);
		for (var idx = 0; idx < end; idx+=blockSize)
		{
			I[0] = array[idx];
			I[1] = array[idx+1];
			I[2] = array[idx+2];
			I[3] = array[idx+3];
			I[4] = array[idx+4];
			I[5] = array[idx+5];
			I[6] = array[idx+6];
			I[7] = array[idx+7];
			I[8] = array[idx+8];
			I[9] = array[idx+9];
			I[0xA] = array[idx+0xA];
			I[0xB] = array[idx+0xB];
			I[0xC] = array[idx+0xC];
			I[0xD] = array[idx+0xD];
			I[0xE] = array[idx+0xE];
			I[0xF] = array[idx+0xF];
		}
		var start = getTime();
		for (var i = 0; i < iterInternal; i++)
		{
			for (var idx = 0; idx < end; idx+=blockSize)
			{
				I[0] = array[idx];
				I[1] = array[idx+1];
				I[2] = array[idx+2];
				I[3] = array[idx+3];
				I[4] = array[idx+4];
				I[5] = array[idx+5];
				I[6] = array[idx+6];
				I[7] = array[idx+7];
				I[8] = array[idx+8];
				I[9] = array[idx+9];
				I[0xA] = array[idx+0xA];
				I[0xB] = array[idx+0xB];
				I[0xC] = array[idx+0xC];
				I[0xD] = array[idx+0xD];
				I[0xE] = array[idx+0xE];
				I[0xF] = array[idx+0xF];
			}
		}
		var elapsed = getTime() - start;

		return { 
			MbPerSec : iterInternal * array.length * 8 / elapsed / 1024 / 1024, 
			Data : I
		};
	}
	
    return MemoryBenchmarkBase;
}(BenchmarkBase));