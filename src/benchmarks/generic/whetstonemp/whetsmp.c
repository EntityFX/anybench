/*

 gcc whetsmp.c cpuidc64.o cpuida64.o -m64 -lrt -lc -lm -O3 -o whetsMP64
 gcc whetsmp.c cpuidc.o cpuida.o -lrt -lc -lm -O3 -o whetsMP32

 */

#include <stdio.h>
#include "cpuidh.h"
#include <stdlib.h>
#include <unistd.h>
#include <math.h>
#include <inttypes.h>
#include <stdint.h>
#include <ctype.h>
#include <string.h>
#include <pthread.h>

#ifndef __MACH__

#include <sys/sysinfo.h>

#endif

// PRECISION
//    #define SPDP double
//    #define Precision "Double Precision"
//    #define SorD "2"
//    #define optX "4"

#define SPDP float
#define Precision "Single Precision"
#define SorD "1"
#define optX "3"

// VERSION
//    #define version   "32-Bit Version 1.0"
#define version   "64-Bit Version 1.0"


#	ifndef options
#	define options   version
#	endif

void MFLOPS1(SPDP e11[4], SPDP ta0, long thrd);

void MFLOPS2(SPDP e12[4], SPDP t02, long thrd);

void MIPSInt(int j, int k, int l, SPDP e14[4], long thrd);

SPDP MOPSCOS(SPDP t5, SPDP t25, SPDP x[1], SPDP y[1], long thrd);

void MFLOPS3(SPDP *x, SPDP *y, SPDP *z, SPDP t, SPDP t1, SPDP t2, long thrd);

void MIPSEqu(SPDP e1a[4], int j, int k, int l, long thrd);

SPDP MOPSExp(SPDP x8, SPDP t18, long thrd);

int test;
int calibrate = 1;
int repeatPasses = 1;
int x100 = 100;
int n1;
int n2;
int n3;
int n4;
int n5;
int n6;
int n7;
int n8;
int n1mult = 10;
int n3mult = 5;
int n7mult = 10;

double score[66][10];
double timec[66][10];
SPDP Check;
SPDP results[65][9];

pthread_t tid[100];
pthread_attr_t *attrt = NULL;
pthread_mutex_t mutext = PTHREAD_MUTEX_INITIALIZER;


void *whetstones(void *arg) {
    SPDP x;
    int i, j, k, l;
    long thread;
    SPDP e1[4];
    double timeb;

    volatile int mainCount = 0;

    SPDP t = (SPDP) 0.49999975;
    SPDP t0 = t;
    SPDP ta = t;
    SPDP tb = t;
    SPDP t1 = (SPDP) 0.50000025;
    SPDP t2 = 2.0;

    Check = 0.0;

    thread = (long) arg;

    // Section 1, Array elements

    if (test == 1) {
        e1[0] = 1.0;
        e1[1] = -1.0;
        e1[2] = -1.0;
        e1[3] = -1.0;

        mainCount = 0;

        do {
            MFLOPS1(e1, ta, thread);
            mainCount = mainCount + 1;
            ta = (SPDP) 1.0 - ta;
        } while (mainCount < repeatPasses);

        pthread_mutex_lock(&mutext);
        end_time();
        timeb = secs / (double) (n1mult);
        secs = timeb;
        timec[thread][test] = timeb;
        timec[thread][9] = timeb;
        score[thread][test] = (double) (n1 * 16) * (double) (mainCount) / (1000000.0 * timeb);
        if (thread > 0) printf("%7.0f", score[thread][test]);
        pthread_mutex_unlock(&mutext);
    }

    // Section 2, Array as parameter

    if (test == 2) {
        e1[0] = 1.0;
        e1[1] = -1.0;
        e1[2] = -1.0;
        e1[3] = -1.0;

        mainCount = 0;

        do {
            MFLOPS2(e1, tb, thread);
            mainCount = mainCount + 1;
            tb = (SPDP) 1.0 - tb;
        } while (mainCount < repeatPasses);

        pthread_mutex_lock(&mutext);
        end_time();
        timeb = secs;
        timec[thread][test] = timeb;
        timec[thread][9] = timec[thread][9] + timeb;
        score[thread][test] = (double) (n2 * 96) * (double) (mainCount) / (1000000.0 * timeb);
        if (thread > 0) printf("%7.0f", score[thread][test]);
        pthread_mutex_unlock(&mutext);
    }

    // Section 3, Conditional jumps 

    if (test == 3) {
        int j = 1;
        int j3 = 1;

        mainCount = 0;

        do {
            for (i = 0; i < n3 * n3mult; i++) {
                if (j == 1) j = 2;
                else j = 3;
                if (j > 2) j = 0;
                else j = 1;
                if (j < 1) j = 1;
                else j = 0;
            }
            mainCount = mainCount + 1;
        } while (mainCount < repeatPasses);
        Check = Check + (SPDP) j;
        results[thread][3] = (SPDP) j;

        pthread_mutex_lock(&mutext);
        end_time();
        timeb = secs / (double) n3mult;
        secs = timeb;
        timec[thread][test] = timeb;
        timec[thread][9] = timec[thread][9] + timeb;
        score[thread][test] = (double) (n3 * 3) * (double) (mainCount) / (1000000.0 * timeb);
        if (thread > 0) printf("%7.0f", score[thread][test]);
        pthread_mutex_unlock(&mutext);
    }

    // Section 4, Integer arithmetic

    if (test == 4) {
        int j4 = 1;
        int k4 = 2;
        int l4 = 3;

        mainCount = 0;

        do {
            MIPSInt(j4, k4, l4, e1, thread);
            mainCount = mainCount + 1;
        } while (mainCount < repeatPasses);
        pthread_mutex_lock(&mutext);
        end_time();
        timeb = secs;
        x = e1[0] + e1[1];
        timec[thread][test] = timeb;
        timec[thread][9] = timec[thread][9] + timeb;
        score[thread][test] = (double) (n4 * 15) * (double) (mainCount) / (1000000.0 * timeb);
        if (thread > 0) printf("%7.0f", score[thread][test]);
        pthread_mutex_unlock(&mutext);
    }

    // Section 5, Trig functions

    if (test == 5) {
        SPDP x5[1];
        SPDP y5[1];
        x5[0] = 0.5;
        y5[0] = 0.5;
        mainCount = 0;

        do {
            MOPSCOS(t, t2, x5, y5, thread);
            t = (SPDP) 1.0 - t;
            mainCount = mainCount + 1;
        } while (mainCount < repeatPasses);
        t = t0;
        pthread_mutex_lock(&mutext);
        end_time();
        timeb = secs;
        timec[thread][test] = timeb;
        timec[thread][9] = timec[thread][9] + timeb;
        score[thread][test] = (double) (n5 * 26) * (double) (mainCount) / (1000000.0 * timeb);
        if (thread > 0) printf("%7.0f", score[thread][test]);
        pthread_mutex_unlock(&mutext);
    }

    // Section 6, Procedure calls

    if (test == 6) {
        SPDP x6 = 1.0;
        SPDP y6 = 1.0;
        SPDP z6 = 1.0;
        SPDP t6 = t;
        SPDP t16 = t1;
        SPDP t26 = t2;
        mainCount = 0;

        do {
            mainCount = mainCount + 1;
            MFLOPS3(&x6, &y6, &z6, t6, t16, t26, thread);
        } while (mainCount < repeatPasses);
        pthread_mutex_lock(&mutext);
        end_time();
        timeb = secs;
        timec[thread][test] = timeb;
        timec[thread][9] = timec[thread][9] + timeb;
        score[thread][test] = (double) (n6 * 6) * (double) (mainCount) / (1000000.0 * timeb);
        if (thread > 0) printf("%7.0f", score[thread][test]);
        pthread_mutex_unlock(&mutext);
    }

    // Section 7, Array refrences

    if (test == 7) {
        j = 0;
        k = 1;
        l = 2;
        e1[0] = 1.0;
        e1[1] = 2.0;
        e1[2] = 3.0;
        mainCount = 0;

        do {
            MIPSEqu(e1, j, k, l, thread);
            mainCount = mainCount + 1;
            if (e1[0] + e1[1] == (SPDP) 23.2) e1[2] = e1[2] + (SPDP) 2.0;
        } while (mainCount < repeatPasses);
        pthread_mutex_lock(&mutext);
        end_time();
        timeb = secs / (double) (n7mult);
        secs = timeb;
        timec[thread][test] = timeb;
        timec[thread][9] = timec[thread][9] + timeb;
        score[thread][test] = (double) (n7 * 3) * (double) (mainCount) / (1000000.0 * timeb);
        if (thread > 0) printf("%7.0f", score[thread][test]);
        pthread_mutex_unlock(&mutext);
    }

    // Section 8, Standard functions

    if (test == 8) {
        x = 0.75;
        mainCount = 0;

        do {
            x = MOPSExp(x, t1, thread);
            mainCount = mainCount + 1;
        } while (mainCount < repeatPasses);
        pthread_mutex_lock(&mutext);
        end_time();
        timeb = secs;
        timec[thread][test] = timeb;
        timec[thread][9] = timec[thread][9] + timeb;
        score[thread][test] = (double) (n8 * 4) * (double) (mainCount) / (1000000.0 * timeb);
        if (thread > 0) printf("%7.0f", score[thread][test]);
        pthread_mutex_unlock(&mutext);
    }
    return 0;
}


int main(int argc, char *argv[]) {
    int CPUavail = get_nprocs();
    int i, j, g;
    int threads = 1;
    int param1 = 0;
    int count = 10;
    int duration = 10;
    int errors = 0;
    int errors2;
    long thisThread;
    double TimeUsed;
    double mwips;
    char names[12][10];
    char was[30];
    char th1[30];

    n1 = 12 * x100;
    n2 = 14 * x100;
    n3 = 345 * x100;
    n4 = 210 * x100;
    n5 = 32 * x100;
    n6 = 899 * x100;
    n7 = 616 * x100;
    n8 = 93 * x100;

    sprintf(names[1], "MFLOPS 1 ");
    sprintf(names[2], "MFLOPS 2 ");
    sprintf(names[3], "IFMOPS   ");
    sprintf(names[4], "FIXPMOPS ");
    sprintf(names[5], "COSMOPS  ");
    sprintf(names[6], "MFLOPS 3 ");
    sprintf(names[7], "EQUMOPS  ");
    sprintf(names[8], "EXPMOPS  ");
    sprintf(names[9], "millisec ");
    sprintf(names[10], "MWIPS    ");

    for (i = 1; i < 5; i = i + 2) {
        if (argc > i) {
            switch (toupper(argv[i][0])) {
                case 'T':
                    if (argc > i + 1) {
                        sscanf(argv[i + 1], "%d", &param1);
                        if (param1 > 0) threads = param1;
                        if (threads > 64) threads = 64;
                    }
                    break;
            }
        }
    }

    local_time();
    printf("%d CPUs Available\n", CPUavail);
    if (param1 == 0) threads = CPUavail;
    printf("##############################################\n\n");
    printf(" Multithreading %s Whetstones %s\n\n", Precision, options);
    printf("             Using %d threads - %s\n", threads, timeday);

    printf(" Calibrate\n");
    do {
        TimeUsed = 0;

        thisThread = 0;
        start_time();
        for (test = 1; test < 9; test++) {
            pthread_create(&tid[thisThread], attrt, whetstones, (void *) thisThread);
            pthread_join(tid[thisThread], NULL);
        }
        TimeUsed = secs;
        printf("%11.5f Seconds %10.0lf   Passes (x 100)\n",
               TimeUsed, (SPDP) (repeatPasses));
        calibrate = calibrate + 1;
        count = count - 1;
        if (TimeUsed > 0.2)
            count = 0;
        else
            repeatPasses = repeatPasses * 5;
    } while (count > 0);

    if (TimeUsed > 0)
        repeatPasses = (int) ((SPDP) (duration * repeatPasses) / TimeUsed);
    if (repeatPasses < 1) repeatPasses = 1;

    calibrate = 0;
    TimeUsed = 0;

    printf("\n Use %d  passes (x 100)\n\n", repeatPasses);

    for (test = 1; test < 9; test++) {
        printf(" %s", names[test]);
        start_time();
        for (thisThread = 1; thisThread < threads + 1; thisThread++) {
            pthread_create(&tid[thisThread], attrt, whetstones, (void *) thisThread);
        }
        for (thisThread = 1; thisThread < threads + 1; thisThread++) {
            pthread_join(tid[thisThread], NULL);
        }
        TimeUsed = TimeUsed + secs;
        printf("\n");
    }
    printf(" %s", names[9]);
    for (i = 1; i < threads + 1; i++) {
        printf("%7.0f", timec[i][9] * 1000);
        score[i][9] = 0.0;
    }
    printf("\n %s", names[10]);
    for (i = 1; i < threads + 1; i++) {
        mwips = (double) (repeatPasses) * (double) (x100) / (10 * timec[i][9]);
        printf("%7.0f", mwips);
        score[i][9] = mwips;
    }
    printf("\n\n");
    printf("         MWIPS MFLOPS MFLOPS MFLOPS    Cos    Exp  Fixpt     If  Equal\n");
    printf(" Thread             1      2      3   MOPS   MOPS   MOPS   MOPS   MOPS\n\n");

    for (j = 1; j < 10; j++) {
        score[threads + 1][j] = 0.0;
        for (i = 1; i < threads + 1; i++) {
            score[threads + 1][j] = score[threads + 1][j] + score[i][j];
        }
    }

    for (i = 1; i < threads + 1; i++) {
        printf("%7d", i);
        printf("%7.0f", score[i][9]);
        printf("%7.0f", score[i][1]);
        printf("%7.0f", score[i][2]);
        printf("%7.0f", score[i][6]);
        printf("%7.0f", score[i][5]);
        printf("%7.0f", score[i][8]);
        printf("%7.0f", score[i][4]);
        printf("%7.0f", score[i][3]);
        printf("%7.0f", score[i][7]);
        printf("\n");
    }
    printf(" Total ");

    printf("%7.0f", score[threads + 1][9]);
    printf("%7.0f", score[threads + 1][1]);
    printf("%7.0f", score[threads + 1][2]);
    printf("%7.0f", score[threads + 1][6]);
    printf("%7.0f", score[threads + 1][5]);
    printf("%7.0f", score[threads + 1][8]);
    printf("%7.0f", score[threads + 1][4]);
    printf("%7.0f", score[threads + 1][3]);
    printf("%7.0f", score[threads + 1][7]);
    printf("\n\n");

    printf(" MWIPS ");
    if (TimeUsed > 0) {
        mwips = (double) (repeatPasses) * (double) threads * (double) (x100) / (10 * TimeUsed);
    } else {
        mwips = 0;
    }
    printf("%7.0f Based on time for last thread to finish\n\n", mwips);


    if (Check == 0) {
        printf("\n Wrong sumcheck\n\n");
    }

    printf("\n Results Of Calculations Thread 1\n\n");
    for (i = 1; i < 9; i = i + 2) {
        printf(" %s %21.17f      %s %21.17f\n", names[i], results[1][i], names[i + 1], results[1][i + 1]);
    }
    printf("\n");

    for (j = 2; j < threads + 1; j++) {
        errors2 = errors;
        for (i = 1; i < 9; i++) {
            sprintf(was, "%21.17f", results[j][i]);
            sprintf(th1, "%21.17f", results[1][i]);
            if (strcmp(th1, was) != 0) {
                printf(" Thread %d %s Wrong Result Was %s\n", j, names[i], was);
                errors = errors + 1;
            }
        }
        if (errors != errors2) {
            printf("\n");
        }
    }
    if (errors == 0 && threads > 1) {
        printf("      Numeric results of the other %d threads were same as above\n", threads - 1);
    }
    printf("\n");

    local_time();
    printf("               End of test %s", timeday);

    return 0;
}


void MFLOPS1(SPDP e11[4], SPDP ta0, long thrd) {
    int i;

    for (i = 0; i < n1 * n1mult; i++) {
        e11[0] = (e11[0] + e11[1] + e11[2] - e11[3]) * ta0;
        e11[1] = (e11[0] + e11[1] - e11[2] + e11[3]) * ta0;
        e11[2] = (e11[0] - e11[1] + e11[2] + e11[3]) * ta0;
        e11[3] = (-e11[0] + e11[1] + e11[2] + e11[3]) * ta0;
    }
    Check = Check + e11[3];
    results[thrd][1] = e11[3];
    return;
}

void MFLOPS2(SPDP e12[4], SPDP t02, long thrd) {
    int jj;

    for (jj = 0; jj < 6 * n2; jj++) {
        e12[0] = (e12[0] + e12[1] + e12[2] - e12[3]) * t02;
        e12[1] = (e12[0] + e12[1] - e12[2] + e12[3]) * t02;
        e12[2] = (e12[0] - e12[1] + e12[2] + e12[3]) * t02;
        e12[3] = (-e12[0] + e12[1] + e12[2] + e12[3]) / (SPDP) 2.0;
    }
    Check = Check + e12[3];
    results[thrd][2] = e12[3];
    return;
}


void MIPSInt(int j, int k, int l, SPDP e14[4], long thrd) {
    int i;

    for (i = 0; i < n4; i++) {
        j = j * (k - j) * (l - k);
        k = l * k - (l - j) * k;
        l = (l - k) * (k + j);
        e14[l - 2] = (SPDP) (j + k + l);
        e14[k - 2] = (SPDP) (j * k * l);
    }
    Check = Check + e14[k - 2];
    results[thrd][4] = e14[0] + e14[1];
    return;
}

SPDP MOPSCOS(SPDP t5, SPDP t25, SPDP x[1], SPDP y[1], long thrd) {
    int i;
    for (i = 1; i < n5; i++) {
        x[0] = (SPDP) (t5 * atan(t25 * sin(x[0]) * cos(x[0]) / (cos(x[0] + y[0]) + cos(x[0] - y[0]) - 1.0)));
        y[0] = (SPDP) (t5 * atan(t25 * sin(y[0]) * cos(y[0]) / (cos(x[0] + y[0]) + cos(x[0] - y[0]) - 1.0)));
    }
    Check = Check + y[0];
    results[thrd][5] = y[0];
    return y[0];
}

void MFLOPS3(SPDP *x, SPDP *y, SPDP *z, SPDP t, SPDP t1, SPDP t2, long thrd) {
    int i;

    for (i = 0; i < n6; i++) {
        *x = *y;
        *y = *z;
        *x = t * (*x + *y);
        *y = t1 * (*x + *y);
        *z = (*x + *y) / t2;
    }
    Check = Check + *z;
    results[thrd][6] = *z;
    return;
}


void MIPSEqu(SPDP e1a[4], int j, int k, int l, long thrd) {
    int i;

    for (i = 0; i < n7 * n7mult; i++) {
        e1a[j] = e1a[k];
        e1a[k] = e1a[l];
        e1a[l] = e1a[j];
    }
    Check = Check + e1a[l];
    results[thrd][7] = e1a[l];
    return;
}

SPDP MOPSExp(SPDP x8, SPDP t18, long thrd) {
    int i;

    for (i = 0; i < n8; i++) {
        x8 = (SPDP) (sqrt(exp(log(x8) / t18)));
    }
    Check = Check + x8;
    results[thrd][8] = x8;
    return x8;
}


