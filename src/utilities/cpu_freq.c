#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <pthread.h>

// Must be a multiple of 4096
// This should take significant time to run if it's not possible to disable automatic scale or if you want to test
// Sustained turbo frequency
// Suggested time: O(10s)
#ifndef INSTRUCTIONS
#define INSTRUCTIONS 4096L*1048576L*16L
#endif

#define USEC_IN_SEC 1e6

// On ARM, add +1 to the same register is 1 cycle operation, that makes it suitable for such use-case
#if defined(__x86_64__) || defined(__i386__)
#define ADD_ASM "inc %[i]\n"
#elif defined(__aarch64__) || (defined(__arm64__) && defined(__APPLE__))
#define ADD_ASM "add  %[i], %[i], #1\n"
#elif defined(__e2k__)
#define ADD_ASM "{ addd,0 0x1, %[i], %[i] }\n"
#else
#warning "Unsupported platform! Will try to use generic C code, but it might produce wrong result! Please contribute 1-cycle increment instruction for your platform."
#define GENERIC_LOOP 1
#endif
#define ADD_16 ADD_ASM ADD_ASM ADD_ASM ADD_ASM \
        ADD_ASM ADD_ASM ADD_ASM ADD_ASM        \
        ADD_ASM ADD_ASM ADD_ASM ADD_ASM        \
        ADD_ASM ADD_ASM ADD_ASM ADD_ASM

#define ADD_256 ADD_16 ADD_16 ADD_16 ADD_16 \
        ADD_16 ADD_16 ADD_16 ADD_16         \
        ADD_16 ADD_16 ADD_16 ADD_16         \
        ADD_16 ADD_16 ADD_16 ADD_16

#define ADD_4096 ADD_256 ADD_256 ADD_256 ADD_256 \
        ADD_256 ADD_256 ADD_256 ADD_256          \
        ADD_256 ADD_256 ADD_256 ADD_256          \
        ADD_256 ADD_256 ADD_256 ADD_256

pthread_rwlock_t thread_sync;

void *estimate_freq(void *data) {
    double *result = (double *) (data);
    struct timeval tv;

    pthread_rwlock_rdlock(&thread_sync);

    // Do warmup. That helps on OS where you can't disable frequency scaling
    register_t i;
#ifdef GENERIC_LOOP
    for (i = 0; i < INSTRUCTIONS / 4; i++)
	    asm("");
#else
    for (i = 0; i < INSTRUCTIONS / 4;) {
        asm volatile (
        ADD_4096
        : [i] "+r"(i)
        :
        : "cc"
        );
    }
#endif

    gettimeofday(&tv, NULL);
    double start = tv.tv_sec + tv.tv_usec / USEC_IN_SEC;

#ifdef GENERIC_LOOP
    for (i = 0; i < INSTRUCTIONS; i++)
	    asm("");
#else
    for (i = 0; i < INSTRUCTIONS;) {
        asm volatile (
        ADD_4096
        : [i] "+r"(i)
        :
        : "cc"
        );
    }
#endif

    gettimeofday(&tv, NULL);
    double end = tv.tv_sec + tv.tv_usec / USEC_IN_SEC;
    *result = end - start;
    pthread_rwlock_unlock(&thread_sync);
    pthread_exit(NULL);
}

/*
 * On M1 Mac code for some reason doesn't work for total amount of CPU cores (verified via powermetrics CLI)
 * In that case it should be run separately on Effective and on Performance cores
 * Also on M1 mac there is a known problem that OS won't scale effective cores to their max frequency,
 * currently I don't have any idea why that happens...
 */
int main(int argc, char *argv[]) {
    if (argc < 2) {
        printf("Usage: cpu_freq_arm NUM_OF_CPUs\n");
        exit(1);
    }
    int cpus = atoi(argv[1]);
    if (cpus == 0) {
        printf("NUM_OF_CPUs must be a number, greater than 0!\n");
        exit(1);
    }

    double *results = malloc(cpus * sizeof(double));
    pthread_t *thread_ids = malloc(cpus * sizeof(pthread_t));

    pthread_rwlock_init(&thread_sync, NULL);
    pthread_rwlock_wrlock(&thread_sync);

    for (int i = 0; i < cpus; i++) {
        results[i] = 0;
        int rc = pthread_create(&thread_ids[i], NULL, estimate_freq, (void *) (&(results[i])));
        if (rc) {
            printf("ERROR: failed to create a thread: %d\n", rc);
            exit(1);
        }
    }

    // Wait for all threads to finish
    for (int i = 0; i < cpus; i++) {
        if (i == 0) {
            pthread_rwlock_unlock(&thread_sync);
        }
        pthread_join(thread_ids[i], NULL);
    }

    printf("max_threads=%d\n", cpus);
    for (int i = 0; i < cpus; i++) {
        double estimated_frequency = INSTRUCTIONS / results[i];;
        printf("runtime_seconds_cpu%d=%lf\ninstructions_cpu%d=%ld\nestimated_frequency_hz_cpu%d=%.2lf\n", i, results[i],
               i, INSTRUCTIONS, i, estimated_frequency);
    }
    pthread_rwlock_destroy(&thread_sync);
    free(results);
    free(thread_ids);

    return 0;
}
