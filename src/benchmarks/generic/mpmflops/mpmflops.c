/*

gcc mpmflops.c cpuidc64.o cpuida64.o -m64 -lrt -lc -lm -O3 -o MPmflops64
./MPmflops64
gcc mpmflops.c cpuidc.o cpuida.o -lrt -lc -lm -O3 -o MPmflops32
./MPmflops32
gcc mpmflops.c cpuidc.o cpuida.o -lrt -lc -lm -O3 -msse -o MPmflops32SSE
./MPmflops32SSE


Affinity Setting
taskset 0x00000001 ./MPmflops64
*/

#include <stdio.h>
#include <stdlib.h>
#include "cpuidh.h"
#ifdef __ia64__
// IA64 doesn't have mm_malloc, stub it with plain non-alligned malloc
static inline void * _mm_malloc (size_t size, size_t alignment) {
	return malloc(size);
}

static inline void _mm_free (void * ptr) {
  free(ptr);
}
#else
#include <mm_malloc.h>
#endif
#include <pthread.h>
#include <ctype.h>
#include <string.h>
#ifndef __MACH__
#include <sys/sysinfo.h>
#endif

char heading[40] = "64 Bit MP SSE MFLOPS Benchmark 1";
// char   heading[40]  = "32 Bit MP i87 MFLOPS Benchmark 1";
// char   heading[40]  = "32 Bit MP SSE MFLOPS Benchmark 1";

typedef struct {
    float *x;
    int xlen;
}
        MYCALCS;

MYCALCS xcalcs;

pthread_t tid[100];
pthread_attr_t *attrt = NULL;
pthread_mutex_t mutext = PTHREAD_MUTEX_INITIALIZER;


FILE *outfile;
int endit;
int part;
int opwd;
int threads = 1;
int words = 102400;      // E Number of words in arrays
int repeats = 2500;        // R Number of repeat passes
float xval = 0.999950f;
float aval = 0.000020f;
float bval = 0.999980f;
float cval = 0.000011f;
float dval = 1.000011f;
float eval = 0.000012f;
float fval = 0.999992f;
float gval = 0.000013f;
float hval = 1.000013f;
float jval = 0.000014f;
float kval = 0.999994f;
float lval = 0.000015f;
float mval = 1.000015f;
float oval = 0.000016f;
float pval = 0.999996f;
float qval = 0.000017f;
float rval = 1.000017f;
float sval = 0.000018f;
float tval = 1.000018f;
float uval = 0.000019f;
float vval = 1.000019f;
float wval = 0.000021f;
float yval = 1.000021f;

void
triadplus2(int n, float a, float b, float c, float d, float e, float f, float g, float h, float j, float k, float l,
           float m, float o, float p, float q, float r, float s, float t, float u, float v, float w, float y,
           float *x) {
    int i;

    for (i = 0; i < n; i++)
        x[i] = (x[i] + a) * b - (x[i] + c) * d + (x[i] + e) * f - (x[i] + g) * h + (x[i] + j) * k - (x[i] + l) * m +
               (x[i] + o) * p - (x[i] + q) * r + (x[i] + s) * t - (x[i] + u) * v + (x[i] + w) * y;
}

void triadplus(int n, float a, float b, float c, float d, float e, float f, float *x) {
    int i;

    for (i = 0; i < n; i++)
        x[i] = (x[i] + a) * b - (x[i] + c) * d + (x[i] + e) * f;
}

void triad(int n, float a, float b, float *x) {
    int i;

    for (i = 0; i < n; i++)
        x[i] = (x[i] + a) * b;
}

void *runTests(void *arg) {
    int i;
    int wds;
    long offset;
    float *xcp;

    offset = (long) arg;

    wds = xcalcs.xlen;
    xcp = xcalcs.x + offset * wds;

    for (i = 0; i < repeats; i++) {
        // calculations in CPU
        if (part == 0) {
            triad(wds, aval, xval, xcp);
            opwd = 2;
        }
        if (part == 1) {
            triadplus(wds, aval, bval, cval, dval, eval, fval, xcp);
            opwd = 8;
        }
        if (part == 2) {
            triadplus2(wds, aval, bval, cval, dval, eval, fval, gval, hval, jval, kval, lval, mval, oval, pval, qval,
                       rval, sval, tval, uval, vval, wval, yval, xcp);
            opwd = 32;
        }

    }
    return 0;
}

// main program that executes in the CPU
int main(int argc, char *argv[]) {
    int CPUavail = get_nprocs();
    float *x_cpu;                  // Pointer to CPU arrays
    size_t size_x;

    int i, p, g, m;
    int param00 = 0;
    int param01 = 0;
    int param02 = 0;
    long ii;
    float fpmops;
    float mflops;
    char title[3][15];
    int isok1 = 0;
    int isok2 = 0;
    int count1 = 0;
    int minutes = 0;
    float errors[2][10];
    int erdata[5][10];
    float newdata = 0.999999f;
    int pStart = 0;
    int pEnd = 3;
    int calibrate = 0;
    double runSecs = 0.0;

    sprintf(title[0], "Data in & out ");
    for (i = 1; i < 9; i = i + 2) {
        if (argc > i) {
            switch (toupper(argv[i][0])) {
                case 'R':
                    if (argc > i + 1) {
                        sscanf(argv[i + 1], "%d", &param00);
                        if (param00 > 0) repeats = param00;
                        if (repeats < 100) repeats = 100;
                    }
                    break;

                case 'T':
                    if (argc > i + 1) {
                        sscanf(argv[i + 1], "%d", &param01);
                        if (param01 > 0) threads = param01;
                        if (threads > 64) threads = 64;
                    }
                    break;

                case 'M':
                    if (argc > i + 1) {
                        sscanf(argv[i + 1], "%d", &param02);
                        if (param02 > 0) {
                            minutes = param02;
                            pStart = 2;
                            pEnd = 1;
                            calibrate = 1;
                        }
                    }
                    break;
            }
        }
    }
    if (param01 == 0) threads = CPUavail;
    if (param00 == 0) repeats = repeats * CPUavail;

    int startWords = words;
    int startRepeats = repeats;
    local_time();
    if (minutes > 0) {
        printf("Reliability Test around %d Minutes\n", minutes);
    }
    printf("%d CPUs Available\n", CPUavail);
    printf("\n");
    printf("##############################################\n\n");
    printf("  %s, %d Threads, %s\n", heading, threads, timeday);
    printf("  Test             4 Byte  Ops/   Repeat    Seconds   MFLOPS       First   All\n");
    printf("                    Words  Word   Passes                         Results  Same\n\n");

    for (m = 0; m < minutes * 10000 + 1; m++) {
        for (part = pStart; part < 3; part++) {
            isok1 = 0;
            words = startWords;
            repeats = startRepeats;
            for (p = 0; p < pEnd; p++) {
                size_x = words * sizeof(float);

                // Allocate arrays for host CPU
                x_cpu = (float *) _mm_malloc(size_x, 16);
                if (x_cpu == NULL) {
                    printf(" ERROR WILL EXIT\n");
                    exit(1);
                }

                xcalcs.x = x_cpu;
                xcalcs.xlen = words / threads;

                if (calibrate == 1) {
                    // Data for array
                    for (i = 0; i < words; i++) {
                        x_cpu[i] = newdata;
                    }

                    start_time();
                    for (ii = 0; ii < threads; ii++) {
                        pthread_create(&tid[ii], attrt, runTests, (void *) ii);
                    }

                    for (ii = 0; ii < threads; ii++) {
                        pthread_join(tid[ii], NULL);
                    }
                    end_time();
                    repeats = (int) ((double) repeats * 15.0 / secs);
                    startRepeats = repeats;

                    calibrate = 0;
                }
                // Data for array
                for (i = 0; i < words; i++) {
                    x_cpu[i] = newdata;
                }

                start_time();
                for (ii = 0; ii < threads; ii++) {
                    pthread_create(&tid[ii], attrt, runTests, (void *) ii);
                }

                for (ii = 0; ii < threads; ii++) {
                    pthread_join(tid[ii], NULL);
                }
                end_time();
                fpmops = (float) words * (float) opwd;
                mflops = (float) repeats * fpmops / 1000000.0f / (float) secs;
                runSecs = runSecs + secs;
                if (runSecs > (double) (minutes * 60)) m = minutes * 10000 + 10;

                // Print results
                printf("%15s %9d %5d %8d %10.6f %8.0f ", title[0], words, opwd, repeats, secs, mflops);
                isok1 = 0;
                float one = x_cpu[0];
                if (one == newdata) {
                    isok2 = 1;
                    isok1 = 1;
                }
                for (i = 1; i < words; i++) {
                    if (one != x_cpu[i]) {
                        isok1 = 1;
                        if (count1 < 10) {
                            errors[0][count1] = x_cpu[i];
                            errors[1][count1] = one;
                            erdata[0][count1] = i;
                            erdata[1][count1] = words;
                            erdata[2][count1] = opwd;
                            erdata[3][count1] = repeats;

                            count1 = count1 + 1;
                        }
                    }
                }
                if (isok1 == 0) {
                    printf(" %10.6f   Yes\n", x_cpu[0]);
                } else {
                    printf("   See log     No\n");
                }
                // Cleanup
                _mm_free(x_cpu);
                words = words * 10;
                repeats = repeats / 10;
                if (repeats < 1) repeats = 1;
            }
            if (minutes == 0) {
                printf("\n");
            }
        }
    }
    if (minutes > 0) {
        printf("\n");
    }
    if (isok2 > 0) {
        printf(" ERROR - At least one first result of 0.999999 - no calculations?\n\n");
    }

    local_time();
    printf("               End of test %s", timeday);
    return 0;
}


