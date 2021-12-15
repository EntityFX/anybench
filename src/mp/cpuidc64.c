/*
;  nasm -f elf64 -g -F stabs cpuida64.asm   for cpuida64.o
;  gcc cpuidc64.c -m64 -c                   for cpuidc64.o
;  gcc test.c cpuidc64.o cpuida64.o -m64 -lrt -lc -lm -o test
;  ./test
*/

  #include <stdio.h>
  #include "cpuidh.h"
  #include <stdlib.h>     
  #include <string.h> 
  #include <time.h>
  #include <math.h>
  #include <sys/time.h>
  #include <sys/resource.h>

  char    configdata[10][200];
  char    timeday[30];
  char    idString1[100] = " ";
  char    idString2[100] = " ";
  double  theseSecs = 0.0;
  double  startSecs = 0.0;
  double  secs;
  int     megaHz;

  int     pagesize;
  double  ramGB;

  int CPUconf;
  int CPUavail;
  long int pages;
 

  unsigned int eaxCode1   = 0;
  unsigned int ebxCode1   = 0;
  unsigned int ecxCode1   = 0;
  unsigned int edxCode1   = 0;
  unsigned int ext81edx   = 0;
  unsigned int intel1amd2 = 0;
  unsigned int startCount = 0;
  unsigned int endCount   = 0;
  unsigned int cycleCount = 0;
  unsigned int millisecs  = 0;
  unsigned int looptime   = 10;
  
  int     hasMMX = 0;
  int     hasSSE = 0;
  int     hasSSE2 = 0;
  int     hasSSE3 = 0;
  int     has3DNow = 0;

#if defined(__MACH__) && !defined(CLOCK_REALTIME)
        #include <sys/time.h>
        #define CLOCK_REALTIME 0
        // clock_gettime is not implemented on older versions of OS X (< 10.12).
        // If implemented, CLOCK_REALTIME will have already been defined.
        int clock_gettime(int clk_id, struct timespec* t) {
                struct timeval now;
                int rv = gettimeofday(&now, NULL);
                if (rv) return rv;
                t->tv_sec  = now.tv_sec;
                t->tv_nsec = now.tv_usec * 1000;
                return 0;
        }
#endif

#include <sys/utsname.h>
#ifndef __MACH__
        #include <sys/sysinfo.h>
#else
#include <unistd.h>
#include <sys/sysctl.h>
int get_nprocs_conf() {
	return sysconf(_SC_NPROCESSORS_CONF);
}

int get_nprocs() {
	return sysconf(_SC_NPROCESSORS_CONF);
}

long get_phys_pages() {
#ifdef _SC_PAGE_SIZE
	return sysconf(_SC_PHYS_PAGES);
#else
	uint64_t mem;
	size_t len = sizeof(mem);
	sysctlbyname("hw.memsize", &mem, &len, NULL, 0);
	return mem/sysconf(_SC_PAGE_SIZE);
#endif
}

int getpagesize() {
	return sysconf(_SC_PAGE_SIZE);
}


#endif

  void local_time()
  {
     time_t t;

     t = time(NULL);
     sprintf(timeday, "%s", asctime(localtime(&t)));
     return;
  }

  struct timespec tp1;

  void getSecs()
  {
     clock_gettime(CLOCK_REALTIME, &tp1);
 
     theseSecs =  tp1.tv_sec + tp1.tv_nsec / 1e9;           
     return;
  }

  void start_time()
  {
      getSecs();
      startSecs = theseSecs;
      return;
  }

  void end_time()
  {
      getSecs();
      secs = theseSecs - startSecs;
      millisecs = (int)(1000.0 * secs);
      return;
  }    

  int getDetails()
  {
     int max;
     int min = 1000000;
     int i;
     unsigned int MM_EXTENSION   = 0x00800000;
     unsigned int SSE_EXTENSION  = 0x02000000;
     unsigned int SSE2_EXTENSION = 0x04000000;
     unsigned int SSE3_EXTENSION = 0x00000001;
     unsigned int _3DNOW_FEATURE = 0x80000000;

     printf("  ####################################################\n  getDetails and MHz\n\n");

     #ifndef __MACH__
     struct sysinfo sysdata;
     #endif 
     struct utsname udetails;
 
      //_cpuida();
     sprintf(configdata[1], "  Assembler CPUID and RDTSC      ");  
     sprintf(configdata[2], "  CPU %s, Features Code %8.8X, Model Code %8.8X",
                           idString1, edxCode1, eaxCode1);
     sprintf(configdata[3], "  %s", idString2);

     max = 0;
     for (i=0; i<10; i++)
     {
        startCount = 0;
        endCount   = 0;
        start_time();
        //_calculateMHz();
        end_time();      
        megaHz = (int)((double)cycleCount / 1000000.0 / secs + 0.5);
        if (megaHz > max) max = megaHz;
        if (megaHz < min) min = megaHz;
     }
     sprintf(configdata[4], "  Measured - Minimum %d MHz, Maximum %d MHz", min, max);
     megaHz = max;

     sprintf(configdata[5], "  Linux Functions"); 
     CPUconf  =  get_nprocs_conf();
     CPUavail =  get_nprocs();
     sprintf(configdata[6], "  get_nprocs() - CPUs %d, Configured CPUs %d", CPUconf, CPUavail);

     pages = get_phys_pages();
     pagesize = getpagesize();
     ramGB = ((long long unsigned)pages * (long long unsigned)pagesize / 1024 / 1024 / 1024);
     sprintf(configdata[7], "  get_phys_pages() and size - RAM Size %5.2f GB, Page Size %d Bytes", ramGB, pagesize);

     if (uname(&udetails) > -1)
     {
        sprintf(configdata[8], "  uname() - %s, %s, %s", udetails.sysname,
                                  udetails.nodename, udetails.release);  
        sprintf(configdata[9], "  %s, %s", udetails.version, udetails.machine);
     }
     else
     {
         sprintf(configdata[8], "  uname() - No details"); 
         sprintf(configdata[9], "  ");
     }

     if (edxCode1 & MM_EXTENSION)
     {
           hasMMX = 1;
     }
     if (edxCode1 & SSE_EXTENSION)
     {
           hasSSE = 1;
     }
     if (edxCode1 & SSE2_EXTENSION)
     {
           hasSSE2 = 1;
     }
     if (ecxCode1 & SSE3_EXTENSION)
     {
           hasSSE3 = 1;
     }
     if (intel1amd2 == 0x68747541)
     {
           if (ext81edx & _3DNOW_FEATURE)        
           {
               has3DNow = 1;
           }
     }

     return 0; 
  }

