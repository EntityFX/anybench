using System;
using System.Diagnostics;

namespace WhetstoneNet
{
    public static class Program
    {
        static double[] loop_time = new double[9];
        static float[] loop_mops = new float[9];
        static float[] loop_mflops = new float[9];
        static double TimeUsed;
        static float mwips;
        static string[] headings = new string[9];
        static float Check;
        static float[] results = new float[9];
        static char this_month;
        static int this_year;



        public static void Main(string[] args)
        {
            int count = 10, calibrate = 1;
            long xtra = 1;
            int endit, section;
            long x100 = 100;
            int duration = 100;
            string[] general = new string[8];
            int getinput = 1;

            Console.WriteLine("{0} Precision C# Whetstone Benchmark\n", "Double");

            if (args.Length > 1)
            {
                switch (args[1])
                {
                    case "N":
                        getinput = 0;
                        break;
                    case "n":
                        getinput = 0;
                        break;
                }
            }
            if (getinput == 0)
            {
                Console.WriteLine("No run time input data\n");
            }
            else
            {
                Console.WriteLine("With run time input data\n");
            }

            Console.WriteLine("Calibrate");

            do
            {
                TimeUsed = 0;

                Whetstones(xtra, x100, calibrate);

                Console.WriteLine("{0,11} Seconds {1,10}   Passes (x 100)",
                                         TimeUsed.ToString("F2"), xtra);
                calibrate = calibrate + 1;
                count = count - 1;
                if (TimeUsed > 2.0)
                    count = 0;
                else
                    xtra = xtra * 5;
            }
            while (count > 0);

            if (TimeUsed > 0)
                xtra = (long)((float)(duration * xtra) / TimeUsed);
            if (xtra < 1) xtra = 1;

            calibrate = 0;

            Console.WriteLine("\nUse {0}  passes (x 100)", xtra);

            Console.WriteLine("\n          {0} Precision C# Whetstone Benchmark",
                                                                   "Double");
            Console.WriteLine("\n                  {0}", "??");
            Console.WriteLine("\n                  {0}", "");
            /* ----------------- ---------------------------- ---------
                               --------- --------- */
            Console.WriteLine("\nLoop content                  Result              MFLOPS " +
                                     "     MOPS   Seconds\n");

            TimeUsed = 0;
            Whetstones(xtra, x100, calibrate);

            Console.Write("MWIPS            ");
            if (TimeUsed > 0)
                mwips = (float)(xtra) * (float)(x100) / (10 * (float)TimeUsed);
            else
                mwips = 0;

            Console.WriteLine("{0,39}{1,19}\n", mwips.ToString("F3"), TimeUsed.ToString("F3"));

            if (Check == 0)
                Console.WriteLine("Wrong answer  ");
        }

        static void Whetstones(long xtra, long x100, int calibrate)
        {
            long n1, n2, n3, n4, n5, n6, n7, n8, i, ix, n1mult;
            float x, y, z;
            long j, k, l;
            float[] e1 = new float[4];
            double timea;
            double timeb;

            float t = 0.49999975f;
            float t0 = t;
            float t1 = 0.50000025f;
            float t2 = 2;

            Check = 0;

            n1 = 12 * x100;
            n2 = 14 * x100;
            n3 = 345 * x100;
            n4 = 210 * x100;
            n5 = 32 * x100;
            n6 = 899 * x100;
            n7 = 616 * x100;
            n8 = 93 * x100;
            n1mult = 10;

            /* Section 1, Array elements */

            e1[0] = 1;
            e1[1] = -1;
            e1[2] = -1;
            e1[3] = -1;

            var sw = new Stopwatch();
            sw.Start();
            timea = sw.Elapsed.TotalSeconds;

            for (ix = 0; ix < xtra; ix++)
            {
                for (i = 0; i < n1 * n1mult; i++)
                {
                    e1[0] = (e1[0] + e1[1] + e1[2] - e1[3]) * t;
                    e1[1] = (e1[0] + e1[1] - e1[2] + e1[3]) * t;
                    e1[2] = (e1[0] - e1[1] + e1[2] + e1[3]) * t;
                    e1[3] = (-e1[0] + e1[1] + e1[2] + e1[3]) * t;
                }
                t = 1 - t;
            }
            t = t0;

            timeb = (sw.Elapsed.TotalSeconds - timea) / n1mult;
            Pout("N1 floating point", (float)(n1 * 16) * (float)(xtra),
                             1, e1[3], timeb, calibrate, 1);

            /* Section 2, Array as parameter */

            timea = sw.Elapsed.TotalSeconds;
            {
                for (ix = 0; ix < xtra; ix++)
                {
                    for (i = 0; i < n2; i++)
                    {
                        Pa(e1, t, t2);
                    }
                    t = 1 - t;
                }
                t = t0;
            }
            timeb = sw.Elapsed.TotalSeconds - timea;
            Pout("N2 floating point", (float)(n2 * 96) * (float)(xtra),
                                 1, e1[3], timeb, calibrate, 2);

            /* Section 3, Conditional jumps */
            j = 1;
            timea = sw.Elapsed.TotalSeconds;
            {
                for (ix = 0; ix < xtra; ix++)
                {
                    for (i = 0; i < n3; i++)
                    {
                        if (j == 1) j = 2;
                        else j = 3;
                        if (j > 2) j = 0;
                        else j = 1;
                        if (j < 1) j = 1;
                        else j = 0;
                    }
                }
            }
            timeb = sw.Elapsed.TotalSeconds - timea;
            Pout("N3 if then else  ", (float)(n3 * 3) * (float)(xtra),
                            2, (float)(j), timeb, calibrate, 3);

            /* Section 4, Integer arithmetic */
            j = 1;
            k = 2;
            l = 3;
            timea = sw.Elapsed.TotalSeconds;
            {
                for (ix = 0; ix < xtra; ix++)
                {
                    for (i = 0; i < n4; i++)
                    {
                        j = j * (k - j) * (l - k);
                        k = l * k - (l - j) * k;
                        l = (l - k) * (k + j);
                        e1[l - 2] = j + k + l;
                        e1[k - 2] = j * k * l;
                    }
                }
            }
            timeb = sw.Elapsed.TotalSeconds - timea;
            x = e1[0] + e1[1];
            Pout("N4 fixed point   ", (float)(n4 * 15) * (float)(xtra),
                                     2, x, timeb, calibrate, 4);

            /* Section 5, Trig functions */
            x = 0.5f;
            y = 0.5f;
            timea = sw.Elapsed.TotalSeconds;
            {
                for (ix = 0; ix < xtra; ix++)
                {
                    for (i = 1; i < n5; i++)
                    {
                        x = (float)(t * Math.Atan(t2 * Math.Sin(x) * Math.Cos(x) / (Math.Cos(x + y) + Math.Cos(x - y) - 1.0)));
                        y = (float)(t * Math.Atan(t2 * Math.Sin(y) * Math.Cos(y) / (Math.Cos(x + y) + Math.Cos(x - y) - 1.0)));
                    }
                    t = 1 - t;
                }
                t = t0;
            }
            timeb = sw.Elapsed.TotalSeconds - timea;
            Pout("N5 sin,cos etc.  ", (float)(n5 * 26) * (float)(xtra),
                                     2, y, timeb, calibrate, 5);

            /* Section 6, Procedure calls */
            x = 1;
            y = 1;
            z = 1;
            timea = sw.Elapsed.TotalSeconds;
            {
                for (ix = 0; ix < xtra; ix++)
                {
                    for (i = 0; i < n6; i++)
                    {
                        P3(ref x, ref y, ref z, t, t1, t2);
                    }
                }
            }
            timeb = sw.Elapsed.TotalSeconds - timea;
            Pout("N6 floating point", (float)(n6 * 6) * (float)(xtra),
                                    1, z, timeb, calibrate, 6);

            /* Section 7, Array refrences */
            j = 0;
            k = 1;
            l = 2;
            e1[0] = 1;
            e1[1] = 2;
            e1[2] = 3;
            timea = sw.Elapsed.TotalSeconds;
            {
                for (ix = 0; ix < xtra; ix++)
                {
                    for (i = 0; i < n7; i++)
                    {
                        Po(e1, j, k, l);
                    }
                }
            }
            timeb = sw.Elapsed.TotalSeconds - timea;
            Pout("N7 assignments   ", (float)(n7 * 3) * (float)(xtra),
                                2, e1[2], timeb, calibrate, 7);

            /* Section 8, Standard functions */
            x = 0.75f;
            timea = sw.Elapsed.TotalSeconds;
            {
                for (ix = 0; ix < xtra; ix++)
                {
                    for (i = 0; i < n8; i++)
                    {
                        x = (float)Math.Sqrt(Math.Exp(Math.Log(x) / t1));
                    }
                }
            }
            timeb = sw.Elapsed.TotalSeconds - timea;
            Pout("N8 exp,sqrt etc. ", (float)(n8 * 4) * (float)(xtra),
                                    2, x, timeb, calibrate, 8);

        }

        static void Pa(float[] e, float t, float t2)
        {
            long j;
            for (j = 0; j < 6; j++)
            {
                e[0] = (e[0] + e[1] + e[2] - e[3]) * t;
                e[1] = (e[0] + e[1] - e[2] + e[3]) * t;
                e[2] = (e[0] - e[1] + e[2] + e[3]) * t;
                e[3] = (-e[0] + e[1] + e[2] + e[3]) / t2;
            }

            return;
        }

        static void Po(float[] e1, long j, long k, long l)
        {
            e1[j] = e1[k];
            e1[k] = e1[l];
            e1[l] = e1[j];
            return;
        }

        static void P3(ref float x, ref float y, ref float z, float t, float t1, float t2)
        {
            x = y;
            y = z;
            x = t * (x + y);
            y = t1 * (x + y);
            z = (x + y) / t2;
            return;
        }

        static void Pout(string title, float ops, int type, float checknum,
              double time, int calibrate, int section)
        {
            float mops, mflops;

            Check = Check + checknum;
            loop_time[section] = time;
            headings[section] = title;
            TimeUsed = TimeUsed + time;
            if (calibrate == 1)

            {
                results[section] = checknum;
            }
            if (calibrate == 0)
            {
                Console.Write("{0,-18}{1,24}    ", headings[section], results[section].ToString("F17"));

                if (type == 1)
                {
                    if (time > 0)
                    {
                        mflops = ops / (1000000 * (float)time);
                    }
                    else
                    {
                        mflops = 0;
                    }
                    loop_mops[section] = 99999;
                    loop_mflops[section] = mflops;
                    Console.WriteLine("{0,9}           {1,9}",
                    loop_mflops[section].ToString("F3"), (loop_time[section]).ToString("F3"));
                }
                else
                {
                    if (time > 0)
                    {
                        mops = ops / (1000000 * (float)time);
                    }
                    else
                    {
                        mops = 0;
                    }
                    loop_mops[section] = mops;
                    loop_mflops[section] = 0;
                    Console.WriteLine("           {0,9}{1,9}",
                    loop_mops[section].ToString("F3"), (loop_time[section]).ToString("F3"));
                }
            }

            return;
        }
    }
}
