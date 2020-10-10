function getTime() {
    return Date.now() / 1000.0;
}

function getRandomInt(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min)) + min; //Максимум не включается, минимум включается
}

function sleep(ms) {
  return new Promise(function(resolve) { setTimeout(resolve, ms); });
}

var useDocument = true;
var buffer = "";

function print(str) {
	console.log(str);
    if(useDocument) {
        str = str.replace(/ /g,  "&nbsp;");
        document.writeln(str);
    }
    buffer+=str;
}

function printLn(str) {
	console.log(str);
    if(useDocument) {
        str = str.replace(/ /g,  "&nbsp;")
        document.writeln(str + "<br/>");
    }
    buffer+=str + "\n";
}

String.form = function(str, arr) {
    var i = -1;
    function callback(exp, p0, p1, p2, p3, p4) {
        if (exp=='%%') return '%';
        if (arr[++i]===undefined) return undefined;
        exp  = p2 ? parseInt(p2.substr(1)) : undefined;
        var base = p3 ? parseInt(p3.substr(1)) : undefined;
        var val;
        switch (p4) {
            case 's': val = arr[i]; break;
            case 'c': val = arr[i][0]; break;
            case 'f': val = parseFloat(arr[i]).toFixed(exp); break;
            case 'p': val = parseFloat(arr[i]).toPrecision(exp); break;
            case 'e': val = parseFloat(arr[i]).toExponential(exp); break;
            case 'x': val = parseInt(arr[i]).toString(base?base:16); break;
            case 'd': val = parseFloat(parseInt(arr[i], base?base:10).toPrecision(exp)).toFixed(0); break;
        }
        val = typeof(val)=='object' ? JSON.stringify(val) : val.toString(base);
        var sz = parseInt(p1); /* padding size */
        var ch = p1 && p1[0]=='0' ? '0' : ' '; /* isnull? */
        while (val.length<sz) val = p0 !== undefined ? val+ch : ch+val; /* isminus? */
       return val;
    }
    var regex = /%(-)?(0?[0-9]+)?([.][0-9]+)?([#][0-9]+)?([scfpexd%])/g;
    return str.replace(regex, callback);
}

Array.prototype.sum = Array.prototype.sum || function (){
  return this.reduce(function(p,c){return p+c},0);
};

String.prototype.$ = function() {
    return String.form(this, Array.prototype.slice.call(arguments));
}

var __extends = (this && this.__extends) || (function () {
    var extendStatics = function (d, b) {
        extendStatics = Object.setPrototypeOf ||
            ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
            function (d, b) { for (var p in b) if (Object.prototype.hasOwnProperty.call(b, p)) d[p] = b[p]; };
        return extendStatics(d, b);
    };
    return function (d, b) {
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();


var Writer = /** @class */ (function () {
	
    function Writer(useConsole) {
		this.output = "";
		this.useConsole = useConsole || true;
		this.lineBuffer = "";
    }
	
	Writer.prototype.writeLineLog = function() {
		console.log(this.lineBuffer);
		this.lineBuffer = "";
	}
	
    Writer.prototype.write = function (str) {
		this.lineBuffer += str;
		this.writeColor("#5a6374", str);
    };
	
	Writer.prototype.writeLine = function() {
		this.writeLineLog();
		if (this.useConsole) {
			writeDocument(document.createElement("br"));
		}
	};
	
	Writer.prototype.writeColor = function (color, str) {
		if (this.useConsole) {
			this.writeColorWrap(color, str, "span");
		}
    };
	
	Writer.prototype.writeColorWrap = function (color, str, tag) {
		if (this.useConsole && typeof document !== 'undefined') {
			str = str.replace(/ /g,  "&nbsp;");
			//var element = document.createElement(tag);
			//element.innerHTML = str;
			//element.style = "font-family: monospace; color: " + color + ";";
			//"<" + tag + " style=\"font-family: monospace; color: " + color + "\">" + str + "</" + tag + ">"
			//writeDocument(element);
			var style = "font-family: monospace; color: " + color + ";";
			var element = "<" + tag + " style=\"" + style + "\">" + str + "</" + tag + ">";
			document.body.innerHTML += element;
		}
    };
	
	Writer.prototype.writeHeader = function (str) {
		this.lineBuffer += str;
		this.writeLineLog();
		this.writeColorWrap("#61afef", str, "h2");
    };
	
	Writer.prototype.writeValue = function (str) {
		this.lineBuffer += str;
		this.writeColor("#98c379", str);
    };

	Writer.prototype.writeTitle = function (str) {
		this.lineBuffer += str;
		this.writeColor("#dcdfe4", str, "strong");
    };
	
	function writeDocument(element) {
		//document.writeln(str);
		//document.body.appendChild(element);
		document.body.appendChild(element);
	}
	
    return Writer;
}());

var WorkerWriter = /** @class */ (function () {
	
    function WorkerWriter(useConsole) {
		this.useConsole = useConsole || true;
    }
	
    WorkerWriter.prototype.write = function (str) {
		if (!this.useConsole) return;
		postMessage({ msgType: "output", writeType : "write", message: str});
    };
	
	WorkerWriter.prototype.writeLine = function() {
		if (!this.useConsole) return;
		postMessage({ msgType: "output", writeType : "writeLine"});
	};
	
	WorkerWriter.prototype.writeHeader = function (str) {
		if (!this.useConsole) return;
		postMessage({ msgType: "output", writeType : "writeHeader", message: str});
    };
	
	WorkerWriter.prototype.writeValue = function (str) {
		if (!this.useConsole) return;
		postMessage({ msgType: "output", writeType : "writeValue", message: str});
    };

	WorkerWriter.prototype.writeTitle = function (str) {
		if (!this.useConsole) return;
		postMessage({ msgType: "output", writeType : "writeTitle", message: str});
    };
	
	
    return WorkerWriter;
}());