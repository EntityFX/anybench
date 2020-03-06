using System;
using System.Diagnostics;

namespace DhrystoneNetCore
{
    public enum Enumeration { Ident_1, Ident_2, Ident_3, Ident_4, Ident_5 }

    public class Record
    {
        public Record Ptr_Comp;

        public Enumeration Discr;

        public Record_variant variant;
    }

    public class Record_variant
    {
        public Record_var1 var_1;

        public Record_var2 var_2;

        public Record_var3 var_3;
    }

    public class Record_var1
    {
        public Enumeration Enum_Comp;

        public int Int_Comp;

        public string Str_Comp; //31 char
    }

    public class Record_var2
    {
        public Enumeration E_Comp_2;

        public string Str_2_Comp; //31 char
    }

    public class Record_var3
    {
        public char Ch_1_Comp;

        public char Ch_2_Comp;
    }

    class Program
    {
        static Record Ptr_Glob,
                 Next_Ptr_Glob;

        static int Int_Glob;

        static bool Bool_Glob;

        static char Ch_1_Glob,
                Ch_2_Glob;

        static int[] Arr_1_Glob = new int[50];
        static int[,] Arr_2_Glob = new int[50, 50];

        static string Reg_Define = "Register option      Selected.";

        const double Mic_secs_Per_Second = 1000000.0;

        static double Microseconds,
                Dhrystones_Per_Second,
                Vax_Mips;

        static void Main(string[] args)
        {


            int Int_1_Loc = 0;
            int Int_2_Loc = 0;
            int Int_3_Loc = 0;

            char Ch_Index = ' ';
            Enumeration Enum_Loc = Enumeration.Ident_1;
            string Str_1_Loc = "";
            string Str_2_Loc = "";

            int Run_Index;
            int Number_Of_Runs;
            int endit, count = 10;

            int errors = 0;
            int i;
            int nopause = 1;

            double timeb = 0.0;

            if (args.Length > 1)
            {
                switch (args[0])
                {
                    case "N":
                        nopause = 0;
                        break;
                    case "n":
                        nopause = 0;
                        break;
                }
            }

            Next_Ptr_Glob = new Record();
            Ptr_Glob = new Record();
            Ptr_Glob.Ptr_Comp = Next_Ptr_Glob;
            Ptr_Glob.Discr = Enumeration.Ident_1;
            Ptr_Glob.variant = new Record_variant();
            Ptr_Glob.variant.var_1 = new Record_var1();
            Ptr_Glob.variant.var_1.Enum_Comp = Enumeration.Ident_3;
            Ptr_Glob.variant.var_1.Int_Comp = 40;

            Ptr_Glob.variant.var_1.Str_Comp = "DHRYSTONE PROGRAM, SOME STRING";

            Str_1_Loc = "DHRYSTONE PROGRAM, 1'ST STRING";

            Arr_2_Glob[8, 7] = 10;

            getDetails();

            Console.WriteLine("##########################################");

            Console.WriteLine("");
            Console.WriteLine("Dhrystone Benchmark, Version 2.1 (Language: C#)");
            Console.WriteLine("");

            Console.WriteLine("Optimisation    {0}", 0);

            Console.WriteLine("Register option selected\n");

            Number_Of_Runs = 5000;



            do
            {

                Number_Of_Runs = Number_Of_Runs * 2;
                count = count - 1;
                Arr_2_Glob[8, 7] = 10;

                var sw = new Stopwatch();
                sw.Start();
                var timea = sw.Elapsed.TotalSeconds;

                for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
                {
                    Proc_5();
                    Proc_4();

                    Int_1_Loc = 2;
                    Int_2_Loc = 3;
                    Str_2_Loc = "DHRYSTONE PROGRAM, 2'ND STRING";
                    Enum_Loc = Enumeration.Ident_2;

                    Bool_Glob = !Func_2(Str_1_Loc, Str_2_Loc);

                    while (Int_1_Loc < Int_2_Loc)  /* loop body executed once */
                    {
                        Int_3_Loc = 5 * Int_1_Loc - Int_2_Loc;
                        /* Int_3_Loc == 7 */
                        Proc_7(Int_1_Loc, Int_2_Loc, ref Int_3_Loc);
                        /* Int_3_Loc == 7 */
                        Int_1_Loc += 1;
                    }   /* while */

                    /* Int_1_Loc == 3, Int_2_Loc == 3, Int_3_Loc == 7 */
                    Proc_8(Arr_1_Glob, Arr_2_Glob, Int_1_Loc, Int_3_Loc);
                    /* Int_Glob == 5 */
                    Proc_1(Ptr_Glob);
                    for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
                    /* loop body executed twice */
                    {
                        if (Enum_Loc == Func_1(Ch_Index, 'C'))
                        /* then, not executed */
                        {
                            Proc_6(Enumeration.Ident_1, ref Enum_Loc);
                            Str_2_Loc= "DHRYSTONE PROGRAM, 3'RD STRING";
                            Int_2_Loc = Run_Index;
                            Int_Glob = Run_Index;
                        }
                    }
                    /* Int_1_Loc == 3, Int_2_Loc == 3, Int_3_Loc == 7 */
                    Int_2_Loc = Int_2_Loc * Int_1_Loc;
                    Int_1_Loc = Int_2_Loc / Int_3_Loc;
                    Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
                    /* Int_1_Loc == 1, Int_2_Loc == 13, Int_3_Loc == 7 */
                    Proc_2(ref Int_1_Loc);
                    /* Int_1_Loc == 5 */
                }

                timeb = (sw.Elapsed.TotalSeconds - timea);

                Console.WriteLine("{0} runs {1} seconds", Number_Of_Runs, timeb);
                if (timeb > 2)
                {
                    count = 0;
                }
                else
                {
                    if (timeb < 0.05)
                    {
                        Number_Of_Runs = Number_Of_Runs * 5;
                    }
                }
            }
            while (count > 0);

            Console.WriteLine("");
            Console.WriteLine("Final values (* implementation-dependent):");
            Console.WriteLine("");
            Console.Write("Int_Glob:      ");
            if (Int_Glob == 5) Console.Write("O.K.  ");
            else Console.Write("WRONG ");
            Console.Write("{0}  ", Int_Glob);

            Console.Write("Bool_Glob:     ");
            if (Bool_Glob) Console.Write("O.K.  ");
            else Console.Write("WRONG ");
            Console.WriteLine("{0}", Convert.ToInt32(Bool_Glob));

            Console.Write("Ch_1_Glob:     ");
            if (Ch_1_Glob == 'A') Console.Write("O.K.  ");
            else Console.Write("WRONG ");
            Console.Write("{0}  ", Ch_1_Glob);

            Console.Write("Ch_2_Glob:     ");
            if (Ch_2_Glob == 'B') Console.Write("O.K.  ");
            else Console.Write("WRONG ");
            Console.WriteLine("{0}", Ch_2_Glob);

            Console.Write("Arr_1_Glob[8]: ");
            if (Arr_1_Glob[8] == 7) Console.Write("O.K.  ");
            else Console.Write("WRONG ");
            Console.Write("{0}  ", Arr_1_Glob[8]);

            Console.Write("Arr_2_Glob8/7: ");
            if (Arr_2_Glob[8,7] == Number_Of_Runs + 10)
                Console.Write("O.K.  ");
            else Console.Write("WRONG ");
            Console.WriteLine("{0}", Arr_2_Glob[8,7]);


            Console.Write("Ptr_Glob->            ");
            Console.WriteLine("  Ptr_Comp:       *   {0}", Ptr_Glob.Ptr_Comp);

            Console.Write("  Discr:       ");
            if (Ptr_Glob.Discr == Enumeration.Ident_1) Console.Write("O.K.  ");
            else Console.Write("WRONG ");
            Console.Write("{0}  ", (int)Ptr_Glob.Discr);

            Console.Write("Enum_Comp:     ");
            if (Ptr_Glob.variant.var_1.Enum_Comp == Enumeration.Ident_3)
                Console.Write("O.K.  ");
            else Console.Write("WRONG ");
            Console.WriteLine("{0}", (int)Ptr_Glob.variant.var_1.Enum_Comp);

            Console.Write("  Int_Comp:    ");
            if (Ptr_Glob.variant.var_1.Int_Comp == 17) Console.Write("O.K.  ");
            else Console.Write("WRONG ");
            Console.Write("{0} ", Ptr_Glob.variant.var_1.Int_Comp);

            Console.Write("Str_Comp:      ");
            if (Ptr_Glob.variant.var_1.Str_Comp == "DHRYSTONE PROGRAM, SOME STRING")
                Console.Write("O.K.  ");
            else Console.Write("WRONG ");
            Console.WriteLine("{0}", Ptr_Glob.variant.var_1.Str_Comp);

            Console.Write("Next_Ptr_Glob->       ");
            Console.Write("  Ptr_Comp:       *    {0}", Next_Ptr_Glob.Ptr_Comp);
            Console.Write(" same as above\n");

            Console.Write("  Discr:       ");
            if (Next_Ptr_Glob.Discr == 0)
                Console.Write("O.K.  ");
            else Console.Write("WRONG ");
            Console.Write("{0}  ", (int)Next_Ptr_Glob.Discr);

            Console.Write("Enum_Comp:     ");
            if (Next_Ptr_Glob.variant.var_1.Enum_Comp == Enumeration.Ident_2)
                Console.Write("O.K.  ");
            else Console.Write("WRONG ");
            Console.WriteLine("{0}", (int)Next_Ptr_Glob.variant.var_1.Enum_Comp);

            Console.Write("  Int_Comp:    ");
            if (Next_Ptr_Glob.variant.var_1.Int_Comp == 18)
                Console.Write("O.K.  ");
            else Console.Write("WRONG ");
            Console.Write("{0} ", Next_Ptr_Glob.variant.var_1.Int_Comp);

            Console.Write("Str_Comp:      ");
            if (Next_Ptr_Glob.variant.var_1.Str_Comp == "DHRYSTONE PROGRAM, SOME STRING")
                Console.Write("O.K.  ");
            else Console.Write("WRONG ");
            Console.WriteLine("{0}", Next_Ptr_Glob.variant.var_1.Str_Comp);

            Console.Write("Int_1_Loc:     ");
            if (Int_1_Loc == 5)
                Console.Write("O.K.  ");
            else Console.Write("WRONG ");
            Console.Write("{0}  ", Int_1_Loc);

            Console.Write("Int_2_Loc:     ");
            if (Int_2_Loc == 13)
                Console.Write("O.K.  ");
            else Console.Write("WRONG ");
            Console.WriteLine("{0}", Int_2_Loc);

            Console.Write("Int_3_Loc:     ");
            if (Int_3_Loc == 7)
                Console.Write("O.K.  ");
            else Console.Write("WRONG ");
            Console.Write("{0}  ", Int_3_Loc);

            Console.Write("Enum_Loc:      ");
            if (Enum_Loc ==  Enumeration.Ident_2)
                Console.Write("O.K.  ");
            else Console.Write("WRONG ");
            Console.WriteLine("{0}  ", (int)Enum_Loc);


            Console.Write("Str_1_Loc:                             ");
            if (Str_1_Loc == "DHRYSTONE PROGRAM, 1'ST STRING")
                Console.Write("O.K.  ");

            else Console.Write("WRONG ");
            Console.WriteLine("{0}", Str_1_Loc);

            Console.Write("Str_2_Loc:                             ");
            if (Str_2_Loc == "DHRYSTONE PROGRAM, 2'ND STRING")
                Console.Write("O.K.  ");
            else Console.Write("WRONG ");
            Console.WriteLine("{0}", Str_2_Loc);


            Console.WriteLine("");

            if (timeb < 2)
            {
                Console.WriteLine("Measured time too small to obtain meaningful results");
                Console.WriteLine("Please increase number of runs");
                Console.WriteLine("");
            }
            else
            {

                Microseconds = timeb * Mic_secs_Per_Second
                                    / (double)Number_Of_Runs;
                Dhrystones_Per_Second = (double)Number_Of_Runs / timeb;
                Vax_Mips = Dhrystones_Per_Second / 1757.0;

                Console.WriteLine("Nanoseconds one Dhrystone run: {0}", Microseconds * 1000);
                Console.WriteLine("Dhrystones per Second:         {0}", Dhrystones_Per_Second);
                Console.WriteLine("VAX  MIPS rating =             {0}", Vax_Mips);
                Console.WriteLine("");
            }
            }

        static int getDetails()
        {

            Console.WriteLine("  ####################################################\n  getDetails and MHz\n\n");

            return 0;
        }

        static void Proc_1(Record Ptr_Val_Par)
        /******************/

        /* executed once */
        {
            Record Next_Record = Ptr_Val_Par.Ptr_Comp;
            /* == Ptr_Glob_Next */
            /* Local variable, initialized with Ptr_Val_Par->Ptr_Comp,    */
            /* corresponds to "rename" in Ada, "with" in Pascal           */

            Ptr_Val_Par.Ptr_Comp = Ptr_Glob;

            Ptr_Val_Par.variant.var_1.Int_Comp = 5;
            Next_Record.variant = new Record_variant();
            Next_Record.variant.var_1 = new Record_var1();
            Next_Record.variant.var_1.Int_Comp
                  = Ptr_Val_Par.variant.var_1.Int_Comp;
            Next_Record.Ptr_Comp = Ptr_Val_Par.Ptr_Comp;
            Proc_3(ref Next_Record.Ptr_Comp);
            /* Ptr_Val_Par->Ptr_Comp->Ptr_Comp 
                                == Ptr_Glob->Ptr_Comp */
            if (Next_Record.Discr == Enumeration.Ident_1)
            /* then, executed */
            {
                Next_Record.variant.var_1.Int_Comp = 6;
                Proc_6(Ptr_Val_Par.variant.var_1.Enum_Comp,
                       ref Next_Record.variant.var_1.Enum_Comp);
                Next_Record.Ptr_Comp = Ptr_Glob.Ptr_Comp;
                Proc_7(Next_Record.variant.var_1.Int_Comp, 10,
                       ref Next_Record.variant.var_1.Int_Comp);
            }
            else /* not executed */
                Ptr_Val_Par=Ptr_Val_Par.Ptr_Comp;
        } /* Proc_1 */

        static void Proc_2(ref int Int_Par_Ref)
        /******************/
        /* executed once */
        /* *Int_Par_Ref == 1, becomes 4 */

        {
            int Int_Loc;
            Enumeration Enum_Loc = Enumeration.Ident_5;

            Int_Loc = Int_Par_Ref + 10;
            do /* executed once */
                if (Ch_1_Glob == 'A')
                /* then, executed */
                {
                    Int_Loc -= 1;
                    Int_Par_Ref = Int_Loc - Int_Glob;
                    Enum_Loc = Enumeration.Ident_1;
                } /* if */
            while (Enum_Loc != Enumeration.Ident_1); /* true */
        } /* Proc_2 */

        static void Proc_3(ref Record Ptr_Ref_Par)
        /******************/
        /* executed once */
        /* Ptr_Ref_Par becomes Ptr_Glob */

        {
            if (Ptr_Glob != null)
                /* then, executed */
                Ptr_Ref_Par = Ptr_Glob.Ptr_Comp;
            Proc_7(10, Int_Glob, ref Ptr_Glob.variant.var_1.Int_Comp);
        } /* Proc_3 */

        static void Proc_4() /* without parameters */
                             /*******/
                             /* executed once */
        {
            bool Bool_Loc;

            Bool_Loc = Ch_1_Glob == 'A';
            Bool_Glob = Bool_Loc | Bool_Glob;
            Ch_2_Glob = 'B';
        } /* Proc_4 */

        static void Proc_5() /* without parameters */
                             /*******/
                             /* executed once */
        {
            Ch_1_Glob = 'A';
            Bool_Glob = false;
        } /* Proc_5 */

        static void Proc_6(Enumeration Enum_Val_Par, ref Enumeration Enum_Ref_Par)
        /*********************************/
        /* executed once */
        /* Enum_Val_Par == Ident_3, Enum_Ref_Par becomes Ident_2 */

        {
            Enum_Ref_Par = Enum_Val_Par;
            if (!Func_3(Enum_Val_Par))
                /* then, not executed */
                Enum_Ref_Par = Enumeration.Ident_4;
            switch (Enum_Val_Par)
            {
                case Enumeration.Ident_1:
                    Enum_Ref_Par = Enumeration.Ident_1;
                    break;
                case Enumeration.Ident_2:
                    if (Int_Glob > 100)
                        /* then */
                        Enum_Ref_Par = Enumeration.Ident_1;
                    else Enum_Ref_Par = Enumeration.Ident_4;
                    break;
                case Enumeration.Ident_3: /* executed */
                    Enum_Ref_Par = Enumeration.Ident_2;
                    break;
                case Enumeration.Ident_4: break;
                case Enumeration.Ident_5:
                    Enum_Ref_Par = Enumeration.Ident_3;
                    break;
            } /* switch */
        } /* Proc_6 */

        static void Proc_7(int Int_1_Par_Val, int Int_2_Par_Val,
                                             ref int Int_Par_Ref)
        /**********************************************/
        /* executed three times                                      */
        /* first call:      Int_1_Par_Val == 2, Int_2_Par_Val == 3,  */
        /*                  Int_Par_Ref becomes 7                    */
        /* second call:     Int_1_Par_Val == 10, Int_2_Par_Val == 5, */
        /*                  Int_Par_Ref becomes 17                   */
        /* third call:      Int_1_Par_Val == 6, Int_2_Par_Val == 10, */
        /*                  Int_Par_Ref becomes 18                   */

        {
            int Int_Loc;

            Int_Loc = Int_1_Par_Val + 2;
            Int_Par_Ref = Int_2_Par_Val + Int_Loc;
        } /* Proc_7 */

        static void Proc_8(int[] Arr_1_Par_Ref, int[,] Arr_2_Par_Ref,
                                 int Int_1_Par_Val, int Int_2_Par_Val)
        /*********************************************************************/
        /* executed once      */
        /* Int_Par_Val_1 == 3 */
        /* Int_Par_Val_2 == 7 */

        {
            int Int_Index;
            int Int_Loc;

            Int_Loc = Int_1_Par_Val + 5;
            Arr_1_Par_Ref[Int_Loc] = Int_2_Par_Val;
            Arr_1_Par_Ref[Int_Loc + 1] = Arr_1_Par_Ref[Int_Loc];
            Arr_1_Par_Ref[Int_Loc + 30] = Int_Loc;
            for (Int_Index = Int_Loc; Int_Index <= Int_Loc + 1; ++Int_Index)
                Arr_2_Par_Ref[Int_Loc, Int_Index] = Int_Loc;
            Arr_2_Par_Ref[Int_Loc,Int_Loc - 1] += 1;
            Arr_2_Par_Ref[Int_Loc + 20, Int_Loc] = Arr_1_Par_Ref[Int_Loc];
            Int_Glob = 5;
        } /* Proc_8 */

        static Enumeration Func_1(char Ch_1_Par_Val,
                                          char Ch_2_Par_Val)
        /*************************************************/
        /* executed three times                                         */
        /* first call:      Ch_1_Par_Val == 'H', Ch_2_Par_Val == 'R'    */
        /* second call:     Ch_1_Par_Val == 'A', Ch_2_Par_Val == 'C'    */
        /* third call:      Ch_1_Par_Val == 'B', Ch_2_Par_Val == 'C'    */

        {
            char Ch_1_Loc;
            char Ch_2_Loc;

            Ch_1_Loc = Ch_1_Par_Val;
            Ch_2_Loc = Ch_1_Loc;
            if (Ch_2_Loc != Ch_2_Par_Val)
                /* then, executed */
                return (Enumeration.Ident_1);
            else  /* not executed */
            {
                Ch_1_Glob = Ch_1_Loc;
                return (Enumeration.Ident_2);
            }
        } /* Func_1 */

        static bool Func_2(string Str_1_Par_Ref, string Str_2_Par_Ref)
        /*************************************************/
        /* executed once */
        /* Str_1_Par_Ref == "DHRYSTONE PROGRAM, 1'ST STRING" */
        /* Str_2_Par_Ref == "DHRYSTONE PROGRAM, 2'ND STRING" */

        {
            int Int_Loc;
            char Ch_Loc = 'A';

            Int_Loc = 2;
            while (Int_Loc <= 2) /* loop body executed once */
                if (Func_1(Str_1_Par_Ref[Int_Loc],
                            Str_2_Par_Ref[Int_Loc + 1]) == Enumeration.Ident_1)
                /* then, executed */
                {
                    Ch_Loc = 'A';
                    Int_Loc += 1;
                } /* if, while */
            if (Ch_Loc >= 'W' && Ch_Loc < 'Z')
                /* then, not executed */
                Int_Loc = 7;
            if (Ch_Loc == 'R')
                /* then, not executed */
                return (true);
            else /* executed */
            {
                if (string.Compare(Str_1_Par_Ref,Str_2_Par_Ref) > 0)

                /* then, not executed */
                {
                    Int_Loc += 7;
                    Int_Glob = Int_Loc;
                    return (true);
                }
                else /* executed */
                    return (false);
            } /* if Ch_Loc */
        } /* Func_2 */

        static bool Func_3(Enumeration Enum_Par_Val)
        /***************************/
        /* executed once        */
        /* Enum_Par_Val == Ident_3 */

        {
            Enumeration Enum_Loc;

            Enum_Loc = Enum_Par_Val;
            if (Enum_Loc == Enumeration.Ident_3)
                /* then, executed */
                return (true);
            else /* not executed */
                return (false);
        } /* Func_3 */
    }
}
