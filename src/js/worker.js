/*var dhrystone = new Dhrystone();
var res = dhrystone.bench();
console.log(res);

var whetstone = new Whetstone();
res = whetstone.bench();
console.log(res)

var scimark2 = new Scimark2();
res = scimark2.bench();
console.log(res);*/

importScripts("utils.js");
importScripts("whetstone.js");
importScripts("dhrystone.js");
importScripts("scimark2.js");
importScripts("benchmarkBase.js");
importScripts("arithmeticsBase.js");
importScripts("arithmetics.js");
importScripts("mathBase.js");
importScripts("mathBenchmark.js");
importScripts("dhrystoneBenchmark.js");
importScripts("whetstoneBenchmark.js");
importScripts("scimark2Benchmark.js");
importScripts("memoryBenchmarkBase.js");
importScripts("memoryBenchmark.js");
importScripts("randomMemoryBenchmarkBase.js");
importScripts("randomMemoryBenchmark.js");
importScripts("callBenchmark.js");
importScripts("ifElseBenchmark.js");
importScripts("stringManipulationBase.js");
importScripts("stringManipulation.js");
importScripts("hashBase.js");
importScripts("hashBenchmark.js");
importScripts("crypto-js/core.js");
importScripts("crypto-js/sha1.js");
importScripts("crypto-js/sha256.js");

function writeResult(benchResult, output) {
	output.writeTitle("%-30s".$(benchResult.BenchmarkName));
	output.writeValue("%13.2f ms".$(benchResult.Elapsed));
	output.writeValue("%13.2f pts".$(benchResult.Points));
	if (benchResult.Result != "") {
		output.writeValue("%13.2f %s".$(benchResult.Result, benchResult.Units));
	}
	output.writeLine();
}

function Warmup(benchMarks, output) {
	output.writeHeader("Warmup");
	
	for (var index = 0; index < benchMarks.length; index++) {
		benchMarks[index].Warmup();
		output.write(".");
	}
	output.writeLine();
}

function BenchOne(benchMark, output) {
	var r = benchMark.Bench();
	writeResult(r, output);
	return r;
}

function Bench(benchMarks, output) {
	var total = 0;
	var totalPoints = 0;
	
	var i = 0;
	
	for (var index = 0; index < benchMarks.length; index++) {
		output.writeHeader("[%d] %s".$(index + 1, benchMarks[index].Name));
		var r = BenchOne(benchMarks[index], output);
		
		total += r.Elapsed;
		totalPoints += r.Points;
	}
	
	output.writeLine();
	output.writeTitle("%-30s".$("Total:"));
	output.writeValue("%13.2f ms".$(total));
	output.writeValue("%13.2f pts".$(totalPoints));
	output.writeLine();
}

var output = new WorkerWriter();

var benchMarks = [
	new MemoryBenchmark(output),
	new RandomMemoryBenchmark(output),
	new Scimark2Benchmark(output),
	new DhrystoneBenchmark(output),
	new WhetstoneBenchmark(output),
	new ArithemticsBenchmark(output),
	new MathBenchmark(output),
	new CallBenchmark(output),
	new IfElseBenchmark(output),
	new StringManipulation(output),
	new HashBenchmark(output)
];




Warmup(benchMarks, output);
Bench(benchMarks, output);