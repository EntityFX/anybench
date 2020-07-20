/*
 gcc  mpmflops.c cpuidc.c -lrt -lc -lm -O3 -lpthread -o MP-MFLOPS
 ./MP-MFLOPS
 #define version "Linux/ARM v1.0"

 gcc mpmflops.c cpuidc.c -lrt -lc -lm -O3 -mcpu=cortex-a7 -mfloat-abi=hard -mfpu=neon-vfpv4 -funsafe-math-optimizations -lpthread -o MP-MFLOPSPiNeon
 ./MP-MFLOPSPiA7Neon
 #define version "Compiled NEON v1.0"

 gcc mpmflops.c cpuidc.c -lrt -lc -lm -O3 -mcpu=cortex-a7 -mfloat-abi=hard -mfpu=neon-vfpv4 -lpthread -o MP-MFLOPSPiA7
 ./MP-MFLOPSPiA7
 #define version "Linux/ARM V7A v1.0"

 Affinity Setting - use 1 CPU
 taskset 0x00000001 ./MP-MFLOPSPiA7u

*/



 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
 #include <math.h>
 #include <time.h>
 #include "cpuidh.h"
 #include <pthread.h> 

// #define version "Linux/ARM v1.0"
// #define version "Linux/ARM V7A v1.0"
 #define version "Compiled NEON v1.0"

 float  x_cpu[4000000];
 double runSecs = 0.1;
 char resultchars[1000];

 typedef struct 
 { 
    float      *x; 
    int        xlen; 
 }
 MYCALCS;

 MYCALCS xcalcs;

 pthread_t tid[100]; 
 pthread_attr_t * attrt = NULL; 
 pthread_mutex_t mutext = PTHREAD_MUTEX_INITIALIZER;

 int     words[3]; 
 int     repeats[3]; 
 int     runrepeats;
 int     part;
 int     opwd;
 float   xval = 0.999950f;
 float   aval = 0.000020f;
 float   bval = 0.999980f;
 float   cval = 0.000011f;
 float   dval = 1.000011f;
 float   eval = 0.000012f;
 float   fval = 0.999992f;
 float   gval = 0.000013f;
 float   hval = 1.000013f;
 float   jval = 0.000014f;
 float   kval = 0.999994f;
 float   lval = 0.000015f;
 float   mval = 1.000015f;
 float   oval = 0.000016f;
 float   pval = 0.999996f;
 float   qval = 0.000017f;
 float   rval = 1.000017f;
 float   sval = 0.000018f;
 float   tval = 1.000018f;
 float   uval = 0.000019f;
 float   vval = 1.000019f;
 float   wval = 0.000021f;
 float   yval = 1.000021f;

 void triadplus2(int n, float a, float b, float c, float d, float e, float f, float g, float h, float j, float k, float l, float m, float o, float p, float q, float r, float s, float t, float u, float v, float w, float y, float *x)
 {
     int i;

     for(i=0; i<n; i++)
     x[i] = (x[i]+a)*b-(x[i]+c)*d+(x[i]+e)*f-(x[i]+g)*h+(x[i]+j)*k-(x[i]+l)*m+(x[i]+o)*p-(x[i]+q)*r+(x[i]+s)*t-(x[i]+u)*v+(x[i]+w)*y;
 } 

 void triad(int n, float a, float b, float *x)
 {
     int i;

     for(i=0; i<n; i++)
     x[i] = (x[i]+a)*b;
 }


 void *runTests(void *arg)
 {
    int  i;
    int  wds;
    long offset;
    float *xcp;
    
    offset = (long)arg;

    wds = xcalcs.xlen;
    xcp = xcalcs.x + offset * wds;
    
    for (i=0; i<runrepeats; i++)
    {
       // calculations in CPU
       if (part == 0)
       {
          triad(wds, aval, xval, xcp);
          opwd = 2;
       }
       if (part == 1)
       {
          triadplus2(wds, aval, bval, cval, dval, eval, fval, gval, hval, jval, kval, lval, mval, oval, pval, qval, rval, sval, tval, uval, vval, wval, yval,  xcp);
          opwd = 32;
       }   
 
    }
 }

int main()
{
    int  i, g, p;
    int  pStart = 0;
    int  pEnd = 3;
    int  isok1 = 0;
    long ii;
    float   newdata = 0.999999f;
    float   fpmops[36];
    float   mflops[36];
    int     results[36];
    int     op = 0;
    int     threads;

    words[0]   = 3200;           // 3200
    words[1]   = words[0] * 10;  // 32000
    words[2]   = words[1] * 100; // 3200000
    repeats[0] = 10000;         // 5000
    repeats[1] = repeats[0] / 10;
    repeats[2] = repeats[1] / 100;
     
    FILE    *outfile;
    
    outfile = fopen("MP-MFLOPS.txt","a+");
    if (outfile == NULL)
    {
        printf ("Cannot open results file \n\n");
        printf(" Press Enter\n");
        g  = getchar();
        exit (0);
    }
    printf("\n");
    getDetails();
    local_time();     

    printf(" ##########################################\n"); 
    fprintf (outfile, " #####################################################\n");                     

    printf ("\nFrom File /proc/cpuinfo\n");
    printf("%s\n", configdata[0]);
    printf ("\nFrom File /proc/version\n");
    printf("%s\n", configdata[1]);
        
    printf("\n MP-MFLOPS %s %s\n", version, timeday);
    printf("    FPU Add & Multiply using 1, 2, 4 and 8 Threads\n\n");
    printf("        2 Ops/Word              32 Ops/Word\n");
    printf(" KB     12.8     128   12800    12.8     128   12800\n");
    printf(" MFLOPS\n");

    fprintf(outfile, "\n MP-MFLOPS %s %s\n", version, timeday);
    fprintf(outfile, "    FPU Add & Multiply using 1, 2, 4 and 8 Threads\n\n");
    fprintf(outfile, "        2 Ops/Word              32 Ops/Word\n");
    fprintf(outfile, " KB     12.8     128   12800    12.8     128   12800\n");
    fprintf(outfile, " MFLOPS\n");
    
    for (threads=1; threads<9; threads=threads*2)
    {
        printf("%2dT ", threads);    
        fprintf(outfile, "%2dT ", threads);
            
        for (part=pStart; part<2; part++)
        {
            for (p=0; p<pEnd; p++)
            {
               xcalcs.x = x_cpu;
               xcalcs.xlen = words[p] / threads;
               runrepeats = repeats[p];
    
               // Data for array
               for (i=0; i<words[p]; i++)
               {
                  x_cpu[i] = newdata;
               }
    
               start_time();
               for (ii=0; ii<threads; ii++)
               {
                   pthread_create(&tid[ii], attrt, runTests, (void *)ii);
               }
    
               for(ii=0;ii<threads;ii++)
               {
                  pthread_join(tid[ii], NULL);
               }
               end_time();
               fpmops[op] = (float)words[p] * (float)opwd;
               mflops[op] = (float)repeats[p] * fpmops[op] / 1000000.0f / (float)secs;
               results[op] = (int)(x_cpu[0] * 100000);
               isok1  = 0;
               float one = x_cpu[0];
               for (i=1; i<words[p]; i++)
               {
                  if (one != x_cpu[i])
                  {
                     isok1 = 1;
                     results[op] = 0;
                     i = words[p];
                  }
               }
               printf("%8d", (int)mflops[op]);
               fprintf(outfile, "%8d", (int)mflops[op]);
               fflush(stdout);                
               fflush(outfile);                
               op = op + 1; 
            }
        }
        printf("\n");
        fprintf(outfile, "\n");
    }
    printf(              " Results x 100000, 0 indicates ERRORS\n"
                         " 1T %8d%8d%8d%8d%8d%8d\n"
                         " 2T %8d%8d%8d%8d%8d%8d\n"
                         " 4T %8d%8d%8d%8d%8d%8d\n"
                         " 8T %8d%8d%8d%8d%8d%8d\n",
                          results[0], results[1], results[2],
                          results[3], results[4], results[5],
                          results[6], results[7], results[8],
                          results[9], results[10], results[11],
                          results[12], results[13], results[14],
                          results[15], results[16], results[17],
                          results[18], results[19], results[20],
                          results[21], results[22], results[23]);
    fprintf(outfile,     " Results x 100000, 0 indicates ERRORS\n"
                         " 1T %8d%8d%8d%8d%8d%8d\n"
                         " 2T %8d%8d%8d%8d%8d%8d\n"
                         " 4T %8d%8d%8d%8d%8d%8d\n"
                         " 8T %8d%8d%8d%8d%8d%8d\n",
                          results[0], results[1], results[2],
                          results[3], results[4], results[5],
                          results[6], results[7], results[8],
                          results[9], results[10], results[11],
                          results[12], results[13], results[14],
                          results[15], results[16], results[17],
                          results[18], results[19], results[20],
                          results[21], results[22], results[23]);

    local_time();
    printf("\n         End of test %s\n", timeday);
    fprintf(outfile, "\n         End of test %s", timeday);        

    fprintf (outfile, "\nSYSTEM INFORMATION\n\nFrom File /proc/cpuinfo\n");
    fprintf (outfile, "%s \n", configdata[0]);
    fprintf (outfile, "\nFrom File /proc/version\n");
    fprintf (outfile, "%s \n", configdata[1]);
    fprintf (outfile, "\n");
    fflush(outfile);                
    char moredata[1024];
    printf("Type additional information to include in MP-MFLOPS.txt - Press Enter\n");
    if (fgets (moredata, sizeof(moredata), stdin) != NULL)
             fprintf (outfile, "Additional information - %s\n", moredata);     fflush(stdout);                
    fflush(outfile);                
    fclose(outfile);
    return 0;
}








 

