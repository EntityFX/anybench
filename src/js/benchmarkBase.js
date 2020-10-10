var BenchmarkBase = /** @class */ (function () {
	
	function BenchmarkBase(writer, printToConsole) {
		printToConsole = (printToConsole === undefined) ? true : printToConsole;
		this.Iterrations = 1;
		this.Radio = 1.0;
		this.Name = this.constructor.name;
		this.output = writer || new Writer(printToConsole);
	}
	
	BenchmarkBase.prototype.Bench = function() {
		this.BeforeBench();
		var start = getTime() * 1000;
		var res = this.BenchImplementation();
		var elapsed = getTime() * 1000 - start;
		var result = this.PopulateResult(this.BuildResult(elapsed), res);
		this.AfterBench(result);
		return result;
	};
	
	BenchmarkBase.prototype.Warmup = function(aspect) {
		aspect = aspect || 0.05;
		var tmp = this.Iterrations;
		this.Iterrations = this.Iterrations * aspect;
		this.Bench();
		this.Iterrations = tmp;
	};
	
	BenchmarkBase.prototype.UseConsole = function(printToConsole) {
		printToConsole = (printToConsole === undefined) ? true : printToConsole;
		this.output.useConsole = printToConsole;
	};
	
	BenchmarkBase.prototype.BenchImplementation = function() {
	};
	
	BenchmarkBase.prototype.BeforeBench = function() {
	};
	
	BenchmarkBase.prototype.AfterBench = function(result) {
	};
	
	BenchmarkBase.prototype.BuildResult = function(elapsed)
	{
		return { 
			BenchmarkName : this.constructor.name, 
			Elapsed : elapsed,
			Points : this.Iterrations / elapsed * this.Ratio,
			Result : "",
			Units : ""
		};
	};
	
	BenchmarkBase.prototype.PopulateResult = function(benchResult, benchValue)
	{
		return benchResult;
	};
	
    return BenchmarkBase;
}());