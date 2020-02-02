// javac whetstc.java
// java whetstc


import java.util.*;
import java.io.*;

public class whetstc 
{

    private static double TimeUsed;
    private static float x,y,z;
    private static float[] e1 = new float[4];
    private static float Check;
    private static float mwips;
    private static double[] loop_time = new double[9];
    private static double[] loop_mops = new double[9];
    private static double[] loop_mflops = new double[9];
    private static float[] results = new float[9];
    private static String[] titles = new String[9];
    private static int[] num = new int[4];

    private static int wwidth  = 500;
    private static int wheight = 325;

    private static String xout;
    private static double runTime;
    private static double mflops;

    private static int section ;
    private static int runit = 1;
    private static int printit = 0;

    private static int x100 = 100;
    
    private static PrintWriter prout;

    public static void main(String[] args) 
    {
        section = -1;
        display();              

        
        if (runit == 1)
        {
            TimeUsed = 0.0; 
            for (section=1; section<9; section++)
            {
                whetstones();
                display();
            }
       }     

    }

    public static void whetstones() 
    {
        double startTime;
        double endTime;
        int i, j, k, l, ix, xtra, n1mult;
        
        float t  =  0.49999975f;
        float t0 = t;  
        float t1 = 0.50000025f;
        float t2 = 2.0f;

        int n1 = 12*x100;
        int n2 = 14*x100;
        int n3 = 345*x100;
        int n4 = 210*x100;
        int n5 = 32*x100;
        int n6 = 899*x100;
        int n7 = 616*x100;
        int n8 = 93*x100;
               
        num[0] = 0;
        num[1] = 1;
        num[2] = 2;
        num[3] = 3;

        switch (section)
        {
        case 1:

        // Section 1, Array elements
        
        n1mult = 10;
        
        e1[0] =  1.0f;
        e1[1] = -1.0f;
        e1[2] = -1.0f;
        e1[3] = -1.0f;                   

        runTime = 0.0;
        xtra = 10;
        do
        {
            if (runTime > 0.2)
            {
                xtra = xtra * 5;
            }
            else if (runTime > 0.5)
            {
                xtra = xtra * 2;
            }
            else
            {
                xtra = xtra * 10;
            }
            startTime = getTime();
            for (ix=0; ix<xtra; ix++)
            {
                for(i=0; i<n1*n1mult; i++)
                {
                    e1[0] = (e1[0] + e1[1] + e1[2] - e1[3]) * t;
                    e1[1] = (e1[0] + e1[1] - e1[2] + e1[3]) * t;
                    e1[2] = (e1[0] - e1[1] + e1[2] + e1[3]) * t;
                    e1[3] = (-e1[0] + e1[1] + e1[2] + e1[3]) * t;
                }
                t = 1.0f - t;
                if (ix == 0) results[section] = e1[3];
            }
            t =  t0;                    
            endTime = getTime();
            runTime = endTime - startTime;
        }
        while (runTime < 1.0);
        
        Check = Check + e1[3];
        loop_time[section] = runTime / (double)n1mult / (double)xtra;
        loop_mflops[section] = (double)(n1*16) / 1000000.0 / loop_time[section];
        loop_mops[section] = 0.0;
        titles[section] = "N1 floating point";
        TimeUsed = TimeUsed + loop_time[section];
        break;

        case 2:
 
        // Section 2, Array as parameter

        runTime = 0.0;
        xtra = 10;
        do
        {
            if (runTime > 0.2)
            {
                xtra = xtra * 5;
            }
            else if (runTime > 0.5)
            {
                xtra = xtra * 2;
            }
            else
            {
                xtra = xtra * 10;
            }
            startTime = getTime();
            for (ix=0; ix<xtra; ix++)
            {
                for(i=0; i<n2; i++)
                {   
                      pa(e1,t,t2);
                }
                t = 1.0f - t;
                if (ix == 0) results[section] = e1[3];
            }
            t =  t0;                    
            endTime = getTime();
            runTime = endTime - startTime;
        }
        while (runTime < 1.0);
        Check = Check + e1[3];
        loop_time[section] = runTime / (double)xtra;
        loop_mflops[section] = (double)(n2*96) / 1000000.0 / loop_time[section];
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
        do
        {
            if (runTime > 0.2)
            {
                xtra = xtra * 5;
            }
            else if (runTime > 0.5)
            {
                xtra = xtra * 2;
            }
            else
            {
                xtra = xtra * 10;
            }
            startTime = getTime();
            for (ix=0; ix<xtra; ix++)
            {
                for(i=0; i<n3; i++)
                {
                    if (j == 1)
                    {       
                       j = num[2];
                    }
                    else
                    {
                       j = num[3];
                    }
                    if (j > 2)
                    {
                       j = num[0];
                    }
                    else
                    {
                       j = num[1];
                    }
                    if (j < 1)
                    {
                       j = num[1];
                    }
                    else
                    {
                       j = num[0];
                    }
                }
                if (ix == 0) results[section] = (float)j;
            }                    
            endTime = getTime();
            runTime = endTime - startTime;
        }
        while (runTime < 1.0);
        Check = Check + (float)j;
        loop_time[section] = runTime / (double)xtra;
        loop_mflops[section] = 0.0;
        loop_mops[section] = (double)(n3*3) / 1000000.0 / loop_time[section];
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
        do
        {
            if (runTime > 0.2)
            {
                xtra = xtra * 5;
            }
            else if (runTime > 0.5)
            {
                xtra = xtra * 2;
            }
            else
            {
                xtra = xtra * 10;
            }
            startTime = getTime();
            for (ix=0; ix<xtra; ix++)
            {
                for(i=0; i<n4; i++)
                {
                     j = num[1] *(k-j)*(l-k);
                     k = num[3] * k - (l-j) * k;
                     l = (l-k) * (num[2]+j);
                     e1[l-2] = j + k + l;
                     e1[k-2] = j * k * l;
                }
                if (ix == 0) results[section] = e1[0]+e1[1];
            }                    
            endTime = getTime();
            runTime = endTime - startTime;
        }
        while (runTime < 1.0);
        Check = Check + e1[0]+e1[1];
        loop_time[section] = runTime / (double)xtra;
        loop_mflops[section] = 0.0;
        loop_mops[section] = (double)(n4*15) / 1000000.0 / loop_time[section];
        titles[section] = "N4 fixed point   ";
        TimeUsed = TimeUsed + loop_time[section];
        break;

        case 5:
        
        // Section 5, Trig function        
                 

        x = 0.5f;
        y = 0.5f;
        runTime = 0.0;
        xtra = 10;
        do
        {
            if (runTime > 0.2)
            {
                xtra = xtra * 5;
            }
            else if (runTime > 0.5)
            {
                xtra = xtra * 2;
            }
            else
            {
                xtra = xtra * 10;
            }
            startTime = getTime();
            for (ix=0; ix<xtra; ix++)
            {

                for(i=1; i<n5; i++)
                {
                    x = (float)(t*Math.atan(t2*Math.sin(x)*Math.cos(x)/
                            (Math.cos(x+y)+Math.cos(x-y)-1.0)));
                    y = (float)(t*Math.atan(t2*Math.sin(y)*Math.cos(y)/
                             (Math.cos(x+y)+Math.cos(x-y)-1.0)));
                }
                t = 1.0f - t;
                if (ix == 0) results[section] = y;
            }
            t =  t0;                    
            endTime = getTime();
            runTime = endTime - startTime;
        }
        while (runTime < 1.0);
        Check = Check + y;
        loop_time[section] = runTime / (double)xtra;
        loop_mflops[section] = 0.0;
        loop_mops[section] = (double)(n5*26) / 1000000.0 / loop_time[section];
        titles[section] = "N5 sin,cos etc.  ";
        TimeUsed = TimeUsed + loop_time[section];
        break;

        case 6:

       // Section 6, Procedure calls
       
        x = 1.0f;
        y = 1.0f;
        z = 1.0f;
        runTime = 0.0;
        xtra = 10;
        do
        {
            if (runTime > 0.2)
            {
                xtra = xtra * 5;
            }
            else if (runTime > 0.5)
            {
                xtra = xtra * 2;
            }
            else
            {
                xtra = xtra * 10;
            }
            startTime = getTime();
            for (ix=0; ix<xtra; ix++)
            {
                for(i=0; i<n6; i++)
                {
                         p3(t,t1,t2);
                }
                if (ix == 0) results[section] = z;
            }
            t =  t0;                    
            endTime = getTime();
            runTime = endTime - startTime;
        }
        while (runTime < 1.0);
        Check = Check + z;
        loop_time[section] = runTime / (double)xtra;
        loop_mflops[section] = (double)(n6*6) / 1000000.0 / loop_time[section];
        loop_mops[section] = 0.0;
        titles[section] = "N6 floating point";
        TimeUsed = TimeUsed + loop_time[section];        
        break;

        case 7:
       
       // Section 7, Array refrences 
       
        j = 0;
        k = 1;
        l = 2;
        e1[0] = 1.0f;
        e1[1] = 2.0f;
        e1[2] = 3.0f;
        runTime = 0.0;
        xtra = 10;        do
        {
            if (runTime > 0.2)
            {
                xtra = xtra * 5;
            }
            else if (runTime > 0.5)
            {
                xtra = xtra * 2;
            }
            else
            {
                xtra = xtra * 10;
            }
            startTime = getTime();
            for (ix=0; ix<xtra; ix++)
            {
                for(i=0;i<n7;i++)
                {
                    po(e1,j,k,l);
                }
                if (ix == 0) results[section] = e1[2];
            }
            t =  t0;                    
            endTime = getTime();
            runTime = endTime - startTime;
        }
        while (runTime < 1.0);
        Check = Check + e1[2];
        loop_time[section] = runTime / (double)xtra;
        loop_mflops[section] = 0.0;
        loop_mops[section] = (double)(n7*3) / 1000000.0 / loop_time[section];
        titles[section] = "N7 assignments   ";
        TimeUsed = TimeUsed + loop_time[section];       
        break;

        case 8:
       
       // Section 8, Standard functions      

        x = 0.75f;
        runTime = 0.0;
        xtra = 10;
        do
        {
            if (runTime > 0.2)
            {
                xtra = xtra * 5;
            }
            else if (runTime > 0.5)
            {
                xtra = xtra * 2;
            }
            else
            {
                xtra = xtra * 10;
            }
            startTime = getTime();
            for (ix=0; ix<xtra; ix++)
            {
                for(i=0; i<n8; i++)
                {
                    x = (float)(Math.sqrt(Math.exp(Math.log(x)/t1)));
                }
                if (ix == 0) results[section] = x;
            }
            t =  t0;                    
            endTime = getTime();
            runTime = endTime - startTime;
        }
        while (runTime < 1.0);
        Check = Check + x;
        loop_time[section] = runTime / (double)xtra;
        loop_mflops[section] = 0.0;
        loop_mops[section] = (double)(n8*4) / 1000000.0 / loop_time[section];
        titles[section] = "N8 exp,sqrt etc. ";
        TimeUsed = TimeUsed + loop_time[section];
        mwips = (float)x100 / (float)(10.0 * TimeUsed);
        break;
        }              
    }

    static void po(float e1[], int j, int k, int l)
    {
        e1[j] = e1[k];
        e1[k] = e1[l];
        e1[l] = e1[j];
        return;
    }

    static void p3(float t, float t1, float t2)
    {
        x = y;
        y = z;
        x = t * (x + y);
        y = t1 * (x + y);
        z = (x + y)/t2;
        return;
    }

    static void pa(float e[], float t, float t2)
    { 
        int j;
        for(j=0;j<6;j++)
        {
            e[0] = (e[0]+e[1]+e[2]-e[3])*t;
            e[1] = (e[0]+e[1]-e[2]+e[3])*t;
            e[2] = (e[0]-e[1]+e[2]+e[3])*t;
            e[3] = (-e[0]+e[1]+e[2]+e[3])/t2;
        }
        return;
    }


    public static double getTime()
    {
            double q;
            long itime;
            itime = System.currentTimeMillis();
            q = (double) itime;
            return q / 1000.0;
    }

    public String format(double x, int v, int d)
    {
            String s = "";
            String s2;
            int j, len, p;
            int i = (int) Math.abs(x);
            double r = Math.abs(x) - (double) i;
            String m = " ";
            if (x < 0)
            {
                    m = "-";
            }
            s2 = m + i;
            len = v - s2.length();
            if (len < 1)
            {
                    s = s2;
            }
            else
            {
                    for (j = 0; j < len; j++)
                    {
                            s = s + " ";
                    }
                    s = s + s2;
            }
            s = s + ".";
            p = (int)(r * Math.pow(10d,(double)d));
            s2 = "" + p;
            len = d - s2.length();
            if (len < 1)
            {
                    s = s + s2;
            }
            else
            {
                    for (j = 0; j < len; j++)
                    {
                            s = s + "0";
                    }
                    s = s + s2;
            }

            return s;
    }

    public static void display()
    {
        if (section == -1)
        {
           Calendar c = Calendar.getInstance();
           String sys = "%n     Whetstone Benchmark Java Version, %tb %te %tY, %tT%n%n";
           System.out.format(sys, c, c, c, c);
           try
           {
           
              // Create file 
              boolean append = true;
              prout = new PrintWriter(new FileWriter(new File("whets.txt"), append));
              prout.printf("  *************************************************************%n");
              prout.printf(sys, c, c, c, c);
              printit = 1;
           }
           catch (Exception e)
           {
             //Catch exception if any
             System.err.println("%n  Create File Error: %n%n" + e.getMessage());
           }
        }
        else if (section == 1)
        { 
            String hd = "                                                       1 Pass%n";
            System.out.format(hd);
            if (printit == 1) prout.printf(hd);
            hd = "  Test                  Result       MFLOPS     MOPS  millisecs%n%n";
            System.out.format(hd);
            if (printit == 1) prout.printf(hd);
        }
        if (section > 0)
        {
            System.out.format("%19s", titles[section]);
            if (printit == 1) prout.printf("%19s", titles[section]);            
            System.out.format(" %13.9f", results[section]);           
            if (printit == 1) prout.printf(" %13.9f", results[section]);            
            if (loop_mflops[section] > 0.0)
            {
               System.out.format(" %9.2f         ", loop_mflops[section]);
               if (printit == 1) prout.printf(" %9.2f         ", loop_mflops[section]);
            }
            if (loop_mops[section] > 0.0)
            {
               System.out.format("          %9.2f", loop_mops[section]);
               if (printit == 1) prout.printf("          %9.2f", loop_mops[section]);
            }
            System.out.format(" %9.4f%n", loop_time[section]*1000.0);
            if (printit == 1) prout.printf(" %9.4f%n", loop_time[section]*1000.0);
        }
        if (section == 8)
        {
            System.out.format("%n  MWIPS          ");
            if (printit == 1) prout.printf("%n  MWIPS          ");
            System.out.format("                 %9.2f", mwips);
            if (printit == 1) prout.printf("                 %9.2f", mwips);
            System.out.format("          %9.4f%n%n", TimeUsed*1000.0);
            if (printit == 1) prout.printf("          %9.4f%n%n", TimeUsed*1000.0);

            System.out.println("  Operating System    " 
                            + System.getProperty("os.name") + ", Arch. " 
                            + System.getProperty("os.arch") + ", Version "
                            + System.getProperty("os.version"));
            if (printit == 1) prout.printf("  Operating System    " 
                            + System.getProperty("os.name") + ", Arch. " 
                            + System.getProperty("os.arch") + ", Version "
                            + System.getProperty("os.version") + "%n");
            System.out.println("  Java Vendor         "
                            + System.getProperty("java.vendor") + ", Version " 
                            + " " + System.getProperty("java.version"));
            if (printit == 1) prout.printf("  Java Vendor         "
                            + System.getProperty("java.vendor") + ", Version " 
                            + " " + System.getProperty("java.version") + "%n");
            System.out.println("  CPU " + System.getenv("PROCESSOR_IDENTIFIER"));
            if (printit == 1) prout.printf("  CPU " + System.getenv("PROCESSOR_IDENTIFIER") + "%n%n");
            
            System.out.println(" ");
            
            //Close the output stream
            if (printit == 1) prout.close();

        }
        return;
    }
}










