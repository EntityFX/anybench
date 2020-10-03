function getTime() {
    return Date.now() / 1000.0;
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

String.prototype.$ = function() {
    return String.form(this, Array.prototype.slice.call(arguments));
}


var Writer = /** @class */ (function () {
	
    function Writer() {
		this.output = "";
		this.useConsole = true;
		this.lineBuffer = "";
    }
	
    Writer.prototype.write = function (str) {
		this.lineBuffer += str;
		this.writeColor("gray", str);
    };
	
	Writer.prototype.writeLine = function() {
		console.log(this.lineBuffer);
		this.lineBuffer = "";
		if (this.useConsole) {
			writeDocument("<br />");
		}
	};
	
	Writer.prototype.writeColor = function (color, str) {
		if (this.useConsole) {
			this.writeColorWrap(color, str, "span");
		}
    };
	
	Writer.prototype.writeColorWrap = function (color, str, tag) {
		if (this.useConsole) {
			str = str.replace(/ /g,  "&nbsp;");
			writeDocument("<" + tag + " style=\"font-family: monospace; color: " + color + "\">" + str + "</" + tag + ">");
		}
    };
	
	Writer.prototype.writeHeader = function (str) {
		this.lineBuffer += str;
		this.writeColorWrap("cyan", str, "h2");
		this.writeLine();
    };
	
	Writer.prototype.writeValue = function (str) {
		this.lineBuffer += str;
		this.writeColor("green", str);
		this.writeLine();
    };

	Writer.prototype.writeTitle = function (str) {
		this.lineBuffer += str;
		this.writeColor("blue", str);
		this.writeLine();
    };
	
	function writeDocument(str) {
		document.writeln(str);
	}
	
    return Writer;
}());