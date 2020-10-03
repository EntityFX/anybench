var Whetstone = /** @class */ (function () {
	var writer = new Writer();
	
	
	var TimeUsed = 0.0;
	var x, y, z = 0.0;
	var e1 = [0.0, 0.0, 0.0, 0.0];
	var Check = 0.0;
	var mwips = 0.0;
	var loop_time = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0];
	var loop_mops = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0];
	var loop_mflops = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0];
	var results = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0];
	var titles = ["", "", "", "", "", "", "", "", ""]
	var num = [0, 0, 0, 0];

	var wwidth = 500;
	var wheight = 325;

	var xout = "";
	var runTime = 0.0;
	var mflops = 0.0;

	var section = 0;
	var runit = 1;
	var printit = 0;

	var x100 = 100;
	
    function Whetstone(name) {
        this.name = name;
    }
	
    Whetstone.prototype.bench = function() {
		section = -1;

		display();

		if (runit == 1) {
			TimeUsed = 0.0;
			for (section = 1; section < 9; section++) {
				whetstones();
				display();
			}
		}
		
		return {
			output : "",
			mwips : mwips,
			timeUsed : TimeUsed
		};
	};
	
	function whetstones() {
		var startTime = 0.0;
		var endTime = 0.0;
		var i, j, k, l, ix, xtra, n1mult = 0;

		var t = 0.49999975;
		var t0 = t;
		var t1 = 0.50000025;
		var t2 = 2.0;

		var n1 = 12 * x100;
		var n2 = 14 * x100;
		var n3 = 345 * x100;
		var n4 = 210 * x100;
		var n5 = 32 * x100;
		var n6 = 899 * x100;
		var n7 = 616 * x100;
		var n8 = 93 * x100;

		num[0] = 0;
		num[1] = 1;
		num[2] = 2;
		num[3] = 3;

		switch (section) {
			case 1:

				// Section 1, Array elements

				n1mult = 10;

				e1[0] = 1.0;
				e1[1] = -1.0;
				e1[2] = -1.0;
				e1[3] = -1.0;

				runTime = 0.0;
				xtra = 10;
				do {
					if (runTime > 0.2) {
						xtra = xtra * 5;
					}
					else if (runTime > 0.5) {
						xtra = xtra * 2;
					}
					else {
						xtra = xtra * 10;
					}
					startTime = getTime();
					for (ix = 0; ix < xtra; ix++) {
						for (i = 0; i < n1 * n1mult; i++) {
							e1[0] = (e1[0] + e1[1] + e1[2] - e1[3]) * t;
							e1[1] = (e1[0] + e1[1] - e1[2] + e1[3]) * t;
							e1[2] = (e1[0] - e1[1] + e1[2] + e1[3]) * t;
							e1[3] = (-e1[0] + e1[1] + e1[2] + e1[3]) * t;
						}
						t = 1.0 - t;
						if (ix == 0) results[section] = e1[3];
					}
					t = t0;
					endTime = getTime();
					runTime = endTime - startTime;
				}
				while (runTime < 1.0);

				Check = Check + e1[3];
				loop_time[section] = runTime / n1mult / xtra;
				loop_mflops[section] = (n1 * 16) / 1000000.0 / loop_time[section];
				loop_mops[section] = 0.0;
				titles[section] = "N1 floating point";
				TimeUsed = TimeUsed + loop_time[section];
				break;

			case 2:

				// Section 2, Array as parameter

				runTime = 0.0;
				xtra = 10;
				do {
					if (runTime > 0.2) {
						xtra = xtra * 5;
					}
					else if (runTime > 0.5) {
						xtra = xtra * 2;
					}
					else {
						xtra = xtra * 10;
					}
					startTime = getTime();
					for (ix = 0; ix < xtra; ix++) {
						for (i = 0; i < n2; i++) {
							pa(e1, t, t2);
						}
						t = 1.0 - t;
						if (ix == 0) results[section] = e1[3];
					}
					t = t0;
					endTime = getTime();
					runTime = endTime - startTime;
				}
				while (runTime < 1.0);
				Check = Check + e1[3];
				loop_time[section] = runTime / xtra;
				loop_mflops[section] = (n2 * 96) / 1000000.0 / loop_time[section];
				loop_mops[section] = 0.0;
				titles[section] = "N2 floating point";
				TimeUsed = TimeUsed + loop_time[section];
				break;

			case 3:

				// Section  3, Conditional jumps

				// num[0] to num[3] instead of 1, 2, 3 and 4

				runTime = 0.0;
				xtra = 10;
				j = 1;
				do {
					if (runTime > 0.2) {
						xtra = xtra * 5;
					}
					else if (runTime > 0.5) {
						xtra = xtra * 2;
					}
					else {
						xtra = xtra * 10;
					}
					startTime = getTime();
					for (ix = 0; ix < xtra; ix++) {
						for (i = 0; i < n3; i++) {
							if (j == 1) {
								j = num[2];
							}
							else {
								j = num[3];
							}
							if (j > 2) {
								j = num[0];
							}
							else {
								j = num[1];
							}
							if (j < 1) {
								j = num[1];
							}
							else {
								j = num[0];
							}
						}
						if (ix == 0) results[section] = j;
					}
					endTime = getTime();
					runTime = endTime - startTime;
				}
				while (runTime < 1.0);
				Check = Check + j;
				loop_time[section] = runTime / xtra;
				loop_mflops[section] = 0.0;
				loop_mops[section] = (n3 * 3) / 1000000.0 / loop_time[section];
				titles[section] = "N3 if then else  ";
				TimeUsed = TimeUsed + loop_time[section];
				break;

			case 4:

				// Section 4, Integer arithmetic

				// num[1] to num[3] instead of j, k, l for 1, 2, 3

				j = 1;
				k = 2;
				l = 3;
				runTime = 0.0;
				xtra = 10;
				do {
					if (runTime > 0.2) {
						xtra = xtra * 5;
					}
					else if (runTime > 0.5) {
						xtra = xtra * 2;
					}
					else {
						xtra = xtra * 10;
					}
					startTime = getTime();
					for (ix = 0; ix < xtra; ix++) {
						for (i = 0; i < n4; i++) {
							j = num[1] * (k - j) * (l - k);
							k = num[3] * k - (l - j) * k;
							l = (l - k) * (num[2] + j);
							e1[l - 2] = j + k + l;
							e1[k - 2] = j * k * l;
						}
						if (ix == 0) results[section] = e1[0] + e1[1];
					}
					endTime = getTime();
					runTime = endTime - startTime;
				}
				while (runTime < 1.0);
				Check = Check + e1[0] + e1[1];
				loop_time[section] = runTime / xtra;
				loop_mflops[section] = 0.0;
				loop_mops[section] = (n4 * 15) / 1000000.0 / loop_time[section];
				titles[section] = "N4 fixed point   ";
				TimeUsed = TimeUsed + loop_time[section];
				break;

			case 5:

				// Section 5, Trig function        


				x = 0.5;
				y = 0.5;
				runTime = 0.0;
				xtra = 10;
				do {
					if (runTime > 0.2) {
						xtra = xtra * 5;
					}
					else if (runTime > 0.5) {
						xtra = xtra * 2;
					}
					else {
						xtra = xtra * 10;
					}
					startTime = getTime();
					for (ix = 0; ix < xtra; ix++) {

						for (i = 1; i < n5; i++) {
							x = (t * Math.atan(t2 * Math.sin(x) * Math.cos(x) /
								(Math.cos(x + y) + Math.cos(x - y) - 1.0)));
							y = (t * Math.atan(t2 * Math.sin(y) * Math.cos(y) /
								(Math.cos(x + y) + Math.cos(x - y) - 1.0)));
						}
						t = 1.0 - t;
						if (ix == 0) results[section] = y;
					}
					t = t0;
					endTime = getTime();
					runTime = endTime - startTime;
				}
				while (runTime < 1.0);
				Check = Check + y;
				loop_time[section] = runTime / xtra;
				loop_mflops[section] = 0.0;
				loop_mops[section] = (n5 * 26) / 1000000.0 / loop_time[section];
				titles[section] = "N5 sin,cos etc.  ";
				TimeUsed = TimeUsed + loop_time[section];
				break;

			case 6:

				// Section 6, Procedure calls

				x = 1.0;
				y = 1.0;
				z = 1.0;
				runTime = 0.0;
				xtra = 10;
				do {
					if (runTime > 0.2) {
						xtra = xtra * 5;
					}
					else if (runTime > 0.5) {
						xtra = xtra * 2;
					}
					else {
						xtra = xtra * 10;
					}
					startTime = getTime();
					for (ix = 0; ix < xtra; ix++) {
						for (i = 0; i < n6; i++) {
							p3(t, t1, t2);
						}
						if (ix == 0) results[section] = z;
					}
					t = t0;
					endTime = getTime();
					runTime = endTime - startTime;
				}
				while (runTime < 1.0);
				Check = Check + z;
				loop_time[section] = runTime / xtra;
				loop_mflops[section] = (n6 * 6) / 1000000.0 / loop_time[section];
				loop_mops[section] = 0.0;
				titles[section] = "N6 floating point";
				TimeUsed = TimeUsed + loop_time[section];
				break;

			case 7:

				// Section 7, Array refrences 

				j = 0;
				k = 1;
				l = 2;
				e1[0] = 1.0;
				e1[1] = 2.0;
				e1[2] = 3.0;
				runTime = 0.0;
				xtra = 10; do {
					if (runTime > 0.2) {
						xtra = xtra * 5;
					}
					else if (runTime > 0.5) {
						xtra = xtra * 2;
					}
					else {
						xtra = xtra * 10;
					}
					startTime = getTime();
					for (ix = 0; ix < xtra; ix++) {
						for (i = 0; i < n7; i++) {
							po(e1, j, k, l);
						}
						if (ix == 0) results[section] = e1[2];
					}
					t = t0;
					endTime = getTime();
					runTime = endTime - startTime;
				}
				while (runTime < 1.0);
				Check = Check + e1[2];
				loop_time[section] = runTime / xtra;
				loop_mflops[section] = 0.0;
				loop_mops[section] = (n7 * 3) / 1000000.0 / loop_time[section];
				titles[section] = "N7 assignments   ";
				TimeUsed = TimeUsed + loop_time[section];
				break;

			case 8:

				// Section 8, Standard functions      

				x = 0.75;
				runTime = 0.0;
				xtra = 10;
				do {
					if (runTime > 0.2) {
						xtra = xtra * 5;
					}
					else if (runTime > 0.5) {
						xtra = xtra * 2;
					}
					else {
						xtra = xtra * 10;
					}
					startTime = getTime();
					for (ix = 0; ix < xtra; ix++) {
						for (i = 0; i < n8; i++) {
							x = (Math.sqrt(Math.exp(Math.log(x) / t1)));
						}
						if (ix == 0) results[section] = x;
					}
					t = t0;
					endTime = getTime();
					runTime = endTime - startTime;
				}
				while (runTime < 1.0);
				Check = Check + x;
				loop_time[section] = runTime / xtra;
				loop_mflops[section] = 0.0;
				loop_mops[section] = (n8 * 4) / 1000000.0 / loop_time[section];
				titles[section] = "N8 exp,sqrt etc. ";
				TimeUsed = TimeUsed + loop_time[section];
				mwips = x100 / (10.0 * TimeUsed);
				break;
		}
	}

	function po(e1, j, k, l) {
		e1[j] = e1[k];
		e1[k] = e1[l];
		e1[l] = e1[j];
		return;
	}

	function p3(t, t1, t2) {
		x = y;
		y = z;
		x = t * (x + y);
		y = t1 * (x + y);
		z = (x + y) / t2;
		return;
	}

	function pa(e, t, t2) {
		var j = 0;
		for (j = 0; j < 6; j++) {
			e[0] = (e[0] + e[1] + e[2] - e[3]) * t;
			e[1] = (e[0] + e[1] - e[2] + e[3]) * t;
			e[2] = (e[0] - e[1] + e[2] + e[3]) * t;
			e[3] = (-e[0] + e[1] + e[2] + e[3]) / t2;
		}
		return;
	}

	function display() {
		if (section == -1) {
			var c = new Date();
			var sys = "     Whetstone Benchmark JavaScript Version, " + c.toUTCString();
			writer.write(sys);
			writer.writeLine();
		} else if (section == 1) {
			var hd = "                                                       1 Pass";
			writer.write(hd);
			writer.writeLine();
			hd = "  Test                  Result       MFLOPS     MOPS  millisecs";
			writer.write(hd);
			writer.writeLine();
		}
		if (section > 0) {
			writer.write("%19s".$(titles[section]));
			writer.write(" %13.9f".$(results[section]));

			if (loop_mflops[section] > 0.0) {
				writer.write(" %9.2f         ".$(loop_mflops[section]));
			}
			if (loop_mops[section] > 0.0) {
				writer.write("          %9.2f".$(loop_mops[section]));
			}
			writer.write(" %9.4f".$(loop_time[section] * 1000.0));
			writer.writeLine();
		}

		if (section == 8)
		{
			writer.write("  MWIPS          ".$());
			writer.write("                 %9.2f".$(mwips));
			writer.write("          %9.4f".$(TimeUsed*1000.0));
			writer.writeLine();
		}
	}
	
    return Whetstone;
}());