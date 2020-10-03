var Dhrystone = /** @class */ (function () {
	var output = new Writer();
	
	var Ident_1 = 0;
	var Ident_2 = 1;
	var Ident_3 = 2;
	var Ident_4 = 3;
	var Ident_5 = 4;
	
	var LOOPS = 20000000;
	
	var IntGlob = 0;
	var BoolGlob = false;
    var Char1Glob = '\0';
    var Char2Glob = '\0';
    var Array1Glob = new Array(50);
    var Array2Glob = new Array(50);
	
	var PtrGlbNext = null;
	var PtrGlb = null;
	var Check = null;
	
	function Dhrystone(name) {
        this.name = name;
    }
	
	function structAssign(destination, source) {
		destination.IntComp = source.IntComp;
		destination.PtrComp = source.PtrComp;
		destination.StringComp = source.StringComp;
		destination.EnumComp = source.EnumComp;
		destination.Discr = source.Discr;
	}
	
	function Proc0(loops) {
		PtrGlbNext = {};
		PtrGlb = {};
		PtrGlb.PtrComp = PtrGlbNext;
		PtrGlb.Discr = Ident_1;
		PtrGlb.EnumComp = Ident_3;
		PtrGlb.IntComp = 40;
		PtrGlb.StringComp = "DHRYSTONE PROGRAM, SOME STRING";
		var String1Loc = "DHRYSTONE PROGRAM, 1'ST STRING";
		var String2Loc = "DHRYSTONE PROGRAM, 2'ND STRING";


		IntGlob = 0;
		BoolGlob = false;
		Char1Glob = '\0';
		Char2Glob = '\0';
		Array1Glob = new Array(50);
		Array2Glob = new Array(50);
		for (var i = 0; i < Array2Glob.length; i++)
		{
			Array2Glob[i] = new Array(Array2Glob.length);
		}
		Array2Glob[8][7] = 10;

		var EnumLoc = 0;
		var IntLoc1 = 0;
		var IntLoc2 = 0;
		var IntLoc3 = 0;

		var startTime = getTime();

		for (var i = 0; i < loops; ++i)
		{
			Proc5();
			Proc4();
			IntLoc1 = 2;
			IntLoc2 = 3;
			IntLoc3 = 0;
			String2Loc = "DHRYSTONE PROGRAM, 2'ND STRING";
			EnumLoc = Ident_2;
			BoolGlob = !Func2(String1Loc, String2Loc);
			while (IntLoc1 < IntLoc2)
			{
				IntLoc3 = 5 * IntLoc1 - IntLoc2;
				IntLoc3 = Proc7(IntLoc1, IntLoc2);
				IntLoc1 += 1;


			}
			Proc8(Array1Glob, Array2Glob, IntLoc1, IntLoc3);
			PtrGlb = Proc1(PtrGlb);
			var CharIndex = 'A';

			for (CharIndex = 'A'; CharIndex <= Char2Glob; ++CharIndex)
			{
				if (EnumLoc == Func1(CharIndex, 'C'))
				{
					EnumLoc = Proc6(Ident_1);
				}
			}


			IntLoc2 = IntLoc2 * IntLoc1;
			IntLoc1 = Math.floor(IntLoc2 / IntLoc3);
			IntLoc2 = 7 * (IntLoc2 - IntLoc3) - IntLoc1;
			IntLoc1 = Proc2(IntLoc1);
		}

		var endTime = getTime();
		var benchtime = (endTime - startTime) * 1000;
		var loopsPerBenchtime = 0.0;
		if (benchtime == 0.0)
		{
			loopsPerBenchtime = 0.0;
		}
		else
		{
			loopsPerBenchtime = (loops / benchtime);
		}
		var dhrystones = 1000 * loopsPerBenchtime;

		Check = {
			EnumLoc : EnumLoc,
			IntLoc1 : IntLoc1,
			IntLoc2 : IntLoc2,
			IntLoc3 : IntLoc3,
			String1Loc : String1Loc,
			String2Loc : String2Loc
		};

		return {
			Dhrystones : dhrystones,
			Output : "",
			TimeUsed : benchtime,
			VaxMips : dhrystones / 1757
		};
	}
	
	function Proc1(PtrValPar)
	{
		var NextRecord = PtrGlb.PtrComp;
		structAssign(PtrGlb.PtrComp, PtrGlb);
		PtrValPar.IntComp = 5;
		NextRecord.IntComp = PtrValPar.IntComp;
		NextRecord.PtrComp = PtrValPar.PtrComp;
		NextRecord.PtrComp = Proc3(NextRecord.PtrComp);
		if (NextRecord.Discr == Ident_1)
		{
			NextRecord.IntComp = 6;
			NextRecord.EnumComp = Proc6(PtrValPar.EnumComp);
			NextRecord.PtrComp = PtrGlb.PtrComp;
			NextRecord.IntComp = Proc7(NextRecord.IntComp, 10);
		}
		else
		{
			structAssign(PtrValPar, PtrValPar.PtrComp);
		}

		return PtrValPar;
	}
	
	function Proc2(IntParIO)
	{
		var IntLoc = IntParIO + 10;
		var EnumLoc = Ident_2;
		while (true)
		{
			if (Char1Glob == 'A')
			{
				IntLoc = IntLoc - 1;
				IntParIO = IntLoc - IntGlob;
				EnumLoc = Ident_1;
			}
			if (EnumLoc == Ident_1)
				break;
		}
		return IntParIO;
	}
	
	function Proc3(PtrParOut)
	{
		if (PtrGlb != null)
		{
			PtrParOut = PtrGlb.PtrComp;
		}
		else
		{
			IntGlob = 100;
		}
		PtrGlb.IntComp = Proc7(10, IntGlob);
		return PtrParOut;
	}

	function Proc4()
	{
		var BoolLoc = Char1Glob == 'A';
		BoolGlob = BoolLoc || BoolGlob;
		Char2Glob = 'B';
	}

	function Proc5()
	{
		Char1Glob = 'A';
		BoolGlob = false;
	}
	
	function Proc6(EnumParIn)
	{
		var EnumParOut = EnumParIn;
		if (!Func3(EnumParIn))
		{
			EnumParOut = Ident_4;
		}


		switch (EnumParIn)
		{
			case Ident_1:
				EnumParOut = Ident_1;
				break;
			case Ident_2:
				if (IntGlob > 100)
					EnumParOut = Ident_1;
				else
					EnumParOut = Ident_4;
				break;
			case Ident_3:
				EnumParOut = Ident_2;
				break;
			case Ident_4:
				break;
			case Ident_5:
				EnumParOut = Ident_3;
				break;
		}

		return EnumParOut;
	}

	function Proc7(IntParI1, IntParI2)
	{
		var IntLoc = IntParI1 + 2;
		var IntParOut = IntParI2 + IntLoc;
		return IntParOut;
	}

	function Proc8(Array1Par, Array2Par, IntParI1, IntParI2)
	{
		var IntLoc = IntParI1 + 5;
		Array1Par[IntLoc] = IntParI2;
		Array1Par[IntLoc + 1] = Array1Par[IntLoc];
		Array1Par[IntLoc + 30] = IntLoc;
		// for IntIndex in range(IntLoc, IntLoc+2):
		for (var IntIndex = IntLoc; IntIndex < IntLoc + 2; ++IntIndex)
		{
			Array2Par[IntLoc][IntIndex] = IntLoc;
		}
		Array2Par[IntLoc][IntLoc - 1] = Array2Par[IntLoc][IntLoc - 1] + 1;
		Array2Par[IntLoc + 20][IntLoc] = Array1Par[IntLoc];
		IntGlob = 5;
	}

	function Func1(CharPar1, CharPar2)
	{
		var CharLoc1 = CharPar1;
		var CharLoc2 = CharLoc1;
		return CharLoc2 != CharPar2 ? Ident_1 : Ident_2;
	}

	function Func2(StrParI1, StrParI2)
	{
		var IntLoc = 1;
		var CharLoc = '\0';
		while (IntLoc <= 1)
		{
			if (Func1(StrParI1[IntLoc], StrParI2[IntLoc + 1]) == Ident_1)
			{
				CharLoc = 'A';
				IntLoc = IntLoc + 1;
			}
		}
		if (CharLoc >= 'W' && CharLoc <= 'Z')
		{
			IntLoc = 7;
		}
		if (CharLoc == 'X')
		{
			return true;
		}
		else
		{
			if (StrParI1.localeCompare(StrParI2) > 0)
			{
				IntLoc = IntLoc + 7;
				return true;
			}
			else
			{
				return false;
			}
		}
	}

	function Func3(EnumParIn)
	{
		var EnumLoc = EnumParIn;
		return EnumLoc == Ident_3;
	}
	
    Dhrystone.prototype.bench = function (loops) {
		output.write("##########################################");
		output.writeLine();
		
		output.writeLine();
		output.write("Dhrystone Benchmark, Version 2.1 (Language: JavaScript)");
		output.writeLine();
		output.writeLine();
		
		output.write("Optimization Non-optimised");
		output.writeLine();
		
		var result = Proc0(loops || LOOPS);
		
		output.writeLine();
		output.write("Final values (* implementation-dependent):\n");
		output.writeLine();		
		output.writeLine();
		output.write("Int_Glob:      ");

		if (IntGlob == 5) output.write("O.K.  ");
		else output.write("WRONG ");
		output.write("%s  ".$(IntGlob));
		
		output.write("Bool_Glob:     ");
		if (BoolGlob) output.write("O.K.  ");
		else output.write("WRONG ");
		output.write("%s".$(BoolGlob));
		output.writeLine();
		
		output.write("Ch_1_Glob:     ");
		if (Char1Glob == 'A') output.write("O.K.  ");
		else output.write("WRONG ");
		output.write("%s  ".$(Char1Glob));

		output.write("Ch_2_Glob:     ");
		if (Char2Glob == 'B') output.write("O.K.  ");
		else output.write("WRONG ");
		output.write("%s".$(Char2Glob));
		output.writeLine();
		
		output.write("Arr_1_Glob[8]: ");
		if (Array1Glob[8] == 7) output.write("O.K.  ");
		else output.write("WRONG ");
		output.write("%s  ".$(Array1Glob[8]));

		output.write("Arr_2_Glob8/7: ");
		if (Array2Glob[8][7] == LOOPS + 10)
			output.write("O.K.  ");
		else output.write("WRONG ");
		output.write("%s".$(Array2Glob[8][7]));
		output.writeLine();
		
		output.write("Ptr_Glob->            ");
		output.write("  Ptr_Comp:       *    %s".$(PtrGlb.PtrComp != null));
		output.writeLine();
		
		output.write("  Discr:       ");
		if (PtrGlb.Discr == 0) output.write("O.K.  ");
		else output.write("WRONG ");
		output.write("%s  ".$(PtrGlb.Discr));

		output.write("Enum_Comp:     ");
		if (PtrGlb.EnumComp == 2)
			output.write("O.K.  ");
		else output.write("WRONG ");
		output.write("%s".$(PtrGlb.EnumComp));
		output.writeLine();
		
		output.write("  Int_Comp:    ");
		if (PtrGlb.IntComp == 17) output.write("O.K.  ");
		else output.write("WRONG ");
		output.write("%s ".$(PtrGlb.IntComp));

		output.write("Str_Comp:      ");
		if (PtrGlb.StringComp ==
							 "DHRYSTONE PROGRAM, SOME STRING")
		output.write("O.K.  ");
		else output.Write("WRONG ");
		output.write("%s".$(PtrGlb.StringComp));
		output.writeLine();
		
		output.write("Next_Ptr_Glob->       ");
		output.write("  Ptr_Comp:       *    %s".$(PtrGlbNext.PtrComp != null));
		output.write(" same as above");
		output.writeLine();
		
		output.write("  Discr:       ");
		if (PtrGlbNext.Discr == 0)
			output.write("O.K.  ");
		else output.write("WRONG ");
		output.write("%s  ".$(PtrGlbNext.Discr));

		output.write("Enum_Comp:     ");
		if (PtrGlbNext.EnumComp == 1)
			output.write("O.K.  ");
		else output.write("WRONG ");
		output.write("%s".$(PtrGlbNext.EnumComp));
		output.writeLine();
		
		output.write("  Int_Comp:    ");
		if (PtrGlbNext.IntComp == 18)
			output.write("O.K.  ");
		else output.write("WRONG ");
		output.write("%s ".$(PtrGlbNext.IntComp));

		output.write("Str_Comp:      ");
		if (PtrGlbNext.StringComp ==
							 "DHRYSTONE PROGRAM, SOME STRING")
		   output.write("O.K.  ");
		else output.write("WRONG ");
		output.write("%s".$(PtrGlbNext.StringComp));
		output.writeLine();
		
		output.write("Int_1_Loc:     ");
		if (Check.IntLoc1 == 5)
			output.write("O.K.  ");
		else output.write("WRONG ");
		output.write("%s  ".$(Check.IntLoc1));

		output.write("Int_2_Loc:     ");
		if (Check.IntLoc2 == 13)
			output.write("O.K.  ");
		else output.write("WRONG ");
		output.write("%s".$(Check.IntLoc2));
		output.writeLine();
		
		output.write("Int_3_Loc:     ");
		if (Check.IntLoc3 == 7)
			output.write("O.K.  ");
		else output.write("WRONG ");
		output.write("%s  ".$(Check.IntLoc3));
		output.writeLine();
		
		output.write("Enum_Loc:      ");
		if (Check.EnumLoc == 1)
			output.write("O.K.  ");
		else output.write("WRONG ");
		output.write("%s  ".$(Check.EnumLoc));
		output.writeLine();

		output.write("Str_1_Loc:                             ");
		if (Check.String1Loc == "DHRYSTONE PROGRAM, 1'ST STRING")
			output.write("O.K.  ");

		else output.write("WRONG ");
		output.write("%s".$(Check.String1Loc));
		output.writeLine();
		
		output.write("Str_2_Loc:                             ");
		if (Check.String2Loc == "DHRYSTONE PROGRAM, 2'ND STRING")
			output.write("O.K.  ");
		else output.write("WRONG ");
		output.write("%s".$(Check.String2Loc));
		output.writeLine();

		output.writeLine();

		output.write("Nanoseconds one Dhrystone run: %f".$(1000000000 / result.Dhrystones));
		output.writeLine();
		output.write("Dhrystones per Second:         %d".$(result.Dhrystones));
		output.writeLine();
		output.write("VAX  MIPS rating =             %d".$(result.VaxMips));
		output.writeLine();
		output.writeLine();
			
		return result;
    };
	
    return Dhrystone;
}());