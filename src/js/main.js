/*var dhrystone = new Dhrystone();
var res = dhrystone.bench();
console.log(res);

var whetstone = new Whetstone();
res = whetstone.bench();
console.log(res)

var scimark2 = new Scimark2();
res = scimark2.bench();
console.log(res);*/

function writeResult(benchResult) {
	output.writeTitle("%-30s".$(benchResult.BenchmarkName));
	output.writeValue("%13.2f ms".$(benchResult.Elapsed));
	output.writeValue("%13.2f pts".$(benchResult.Points));
	output.writeValue("%13.2f %s".$(benchResult.Result, benchResult.Units));
	output.writeLine();
}

function Warmup(benchMarks, output) {
	output.writeHeader("Warmup");
	
	var warmupArray = [];
	for (var index = 0; index < benchMarks.length; index++) {
		var warmup = new Promise(function(resolve, reject) {
		  benchMarks[index].Warmup();
		  output.write(".");
		  resolve(true);
		}); 
		warmupArray.push(warmup);
	}
	return Promise.all(warmupArray);
}

function BenchOne(benchMark, output) {
	var promise = new Promise(function(resolve, reject) {
		var r = benchMark.Bench();
		writeResult(r);
		return resolve(r);
	});
	
	return promise;
}

function Bench(benchMarks, output) {
	var total = 0;
	var totalPoints = 0;
	
	var i = 0;
	
	benchMarks.reduce(function(prev, cur) {
		var z = i;
		
		var p = new Promise(function(resolve, reject) {;
					setTimeout(resolve, 500, z);
				})
			.then(function(k) {
				output.writeHeader("[%d] %s".$(k + 1, benchMarks[k].Name));
				return BenchOne(benchMarks[k], output);
			}).then(function(r) {
				total += r.Elapsed;
				totalPoints += r.Points;
			});
		i++;
		return p;
	}, Promise.resolve())
	.then(function() { 
			output.writeLine();
			output.writeTitle("%-30s".$("Total:"));
			output.writeValue("%13.2f ms".$(total));
			output.writeValue("%13.2f pts".$(totalPoints));
			output.writeLine();
	});
}

var output = new Writer();

var benchMarks = [
	new MathBenchmark(),
	new MemoryBenchmark(),
	new RandomMemoryBenchmark(),
	new Scimark2Benchmark(),
	new DhrystoneBenchmark(),
	new WhetstoneBenchmark(),
	new ArithemticsBenchmark()
];



document.addEventListener('DOMContentLoaded', function(event) {
	Warmup(benchMarks, output)
		.then(function() {
			return sleep(1000);
		})
		.then(function(values) { 
			output.writeLine();
			output.writeHeader("Bench");
			Bench(benchMarks, output);
		});
})



//output.writeTitle("{Environment.OSVersion};{Environment.Version};{Environment.ProcessorCount};{Environment.WorkingSet}");
//result.worEach(r => output.WriteValue(string.Format(";{0:F2}", r.Points)));
//output.writeTitle(";{total}");