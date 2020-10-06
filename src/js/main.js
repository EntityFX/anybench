var dhrystone = new Dhrystone();
var res = dhrystone.bench();
console.log(res);

var whetstone = new Whetstone();
res = whetstone.bench();
console.log(res)

var scimark2 = new Scimark2();
res = scimark2.bench();
console.log(res);