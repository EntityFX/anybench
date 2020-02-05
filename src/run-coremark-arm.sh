#!/bin/bash
mkdir "../results/"
mkdir "../results/arm"

echo -e "Run Coremark\n"

../bin/linux/arm/coremark_arm-armv6_O2 n 2>&1 > ../results/arm/coremark_arm-armv6_O2.stdout_stderr.log
../bin/linux/arm/coremark_arm-armv6_O3 n 2>&1 > ../results/arm/coremark_arm-armv6_O3.stdout_stderr.log
../bin/linux/arm/coremark_arm-armv7_O2 n 2>&1 > ../results/arm/coremark_arm-armv7_O2.stdout_stderr.log
../bin/linux/arm/coremark_arm-armv7_O3 n 2>&1 > ../results/arm/coremark_arm-armv7_O3.stdout_stderr.log
../bin/linux/arm/coremark_arm-armv7-a_O2 n 2>&1 > ../results/arm/coremark_arm-armv7-a_O2.stdout_stderr.log
../bin/linux/arm/coremark_arm-armv7-a_ffast_O2 n 2>&1 > ../results/arm/coremark_arm-armv7-a_ffast_O2.stdout_stderr.log
../bin/linux/arm/coremark_arm-armv7-a_ffast_O2_cortex-a9 n 2>&1 > ../results/arm/coremark_arm-armv7-a_ffast_O2_cortex-a9.stdout_stderr.log
../bin/linux/arm/coremark_arm-armv7-a_ffast_O2_cortex-a7 n 2>&1 > ../results/arm/coremark_arm-armv7-a_ffast_O2_cortex-a7.stdout_stderr.log
../bin/linux/arm/coremark_arm-armv7-a_O3 n 2>&1 > ../results/arm/coremark_arm-armv7-a_O3.stdout_stderr.log
../bin/linux/arm/coremark_arm-armv7-a_ffast_O3 n 2>&1 > ../results/arm/coremark_arm-armv7-a_ffast_O3.stdout_stderr.log
../bin/linux/arm/coremark_arm-armv7-a_ffast_O3_cortex-a9 n 2>&1 > ../results/arm/coremark_arm-armv7-a_ffast_O3_cortex-a9.stdout_stderr.log
../bin/linux/arm/coremark_arm-armv7-a_ffast_O3_cortex-a7 n 2>&1 > ../results/arm/coremark_arm-armv7-a_ffast_O3_cortex-a7.stdout_stderr.log
../bin/linux/arm/coremark_arm-armv8-a_O2 n 2>&1 > ../results/arm/coremark_arm-armv8-a_O2.stdout_stderr.log
../bin/linux/arm/coremark_arm-armv8-a_ffast_O2 n 2>&1 > ../results/arm/coremark_arm-armv8-a_ffast_O2.stdout_stderr.log
../bin/linux/arm/coremark_arm-armv8-a_ffast_O2_cortex-a53 n 2>&1 > ../results/arm/coremark_arm-armv8-a_ffast_O2_cortex-a53.stdout_stderr.log
../bin/linux/arm/coremark_arm-armv8-a_ffast_O2_cortex-a57 n 2>&1 > ../results/arm/coremark_arm-armv8-a_ffast_O2_cortex-a57.stdout_stderr.log
../bin/linux/arm/coremark_arm-armv8-a_O3 n 2>&1 > ../results/arm/coremark_arm-armv8-a_O3.stdout_stderr.log
../bin/linux/arm/coremark_arm-armv8-a_ffast_O3 n 2>&1 > ../results/arm/coremark_arm-armv8-a_ffast_O3.stdout_stderr.log
../bin/linux/arm/coremark_arm-armv8-a_ffast_O3_cortex-a53 n 2>&1 > ../results/arm/coremark_arm-armv8-a_ffast_O3_cortex-a53.stdout_stderr.log
../bin/linux/arm/coremark_arm-armv8-a_ffast_O3_cortex-a57 n 2>&1 > ../results/arm/coremark_arm-armv8-a_ffast_O3_cortex-a57.stdout_stderr.log
../bin/linux/arm/coremark_arm-armv8.1-a_O2 n 2>&1 > ../results/arm/coremark_arm-armv8.1-a_O2.stdout_stderr.log
../bin/linux/arm/coremark_arm-armv8.1-a_O3 n 2>&1 > ../results/arm/coremark_arm-armv8.1-a_O3.stdout_stderr.log

echo -e "Run Coremark 2 Thread\n"

../bin/linux/arm/coremark_mp2_arm-armv6_O2 n 2>&1 > ../results/arm/coremark_mp2_arm-armv6_O2.stdout_stderr.log
../bin/linux/arm/coremark_mp2_arm-armv6_O3 n 2>&1 > ../results/arm/coremark_mp2_arm-armv6_O3.stdout_stderr.log
../bin/linux/arm/coremark_mp2_arm-armv7_O2 n 2>&1 > ../results/arm/coremark_mp2_arm-armv7_O2.stdout_stderr.log
../bin/linux/arm/coremark_mp2_arm-armv7_O3 n 2>&1 > ../results/arm/coremark_mp2_arm-armv7_O3.stdout_stderr.log
../bin/linux/arm/coremark_mp2_arm-armv7-a_O2 n 2>&1 > ../results/arm/coremark_mp2_arm-armv7-a_O2.stdout_stderr.log
../bin/linux/arm/coremark_mp2_arm-armv7-a_ffast_O2 n 2>&1 > ../results/arm/coremark_mp2_arm-armv7-a_ffast_O2.stdout_stderr.log
../bin/linux/arm/coremark_mp2_arm-armv7-a_ffast_O2_cortex-a9 n 2>&1 > ../results/arm/coremark_mp2_arm-armv7-a_ffast_O2_cortex-a9.stdout_stderr.log
../bin/linux/arm/coremark_mp2_arm-armv7-a_ffast_O2_cortex-a7 n 2>&1 > ../results/arm/coremark_mp2_arm-armv7-a_ffast_O2_cortex-a7.stdout_stderr.log
../bin/linux/arm/coremark_mp2_arm-armv7-a_O3 n 2>&1 > ../results/arm/coremark_mp2_arm-armv7-a_O3.stdout_stderr.log
../bin/linux/arm/coremark_mp2_arm-armv7-a_ffast_O3 n 2>&1 > ../results/arm/coremark_mp2_arm-armv7-a_ffast_O3.stdout_stderr.log
../bin/linux/arm/coremark_mp2_arm-armv7-a_ffast_O3_cortex-a9 n 2>&1 > ../results/arm/coremark_mp2_arm-armv7-a_ffast_O3_cortex-a9.stdout_stderr.log
../bin/linux/arm/coremark_mp2_arm-armv7-a_ffast_O3_cortex-a7 n 2>&1 > ../results/arm/coremark_mp2_arm-armv7-a_ffast_O3_cortex-a7.stdout_stderr.log
../bin/linux/arm/coremark_mp2_arm-armv8-a_O2 n 2>&1 > ../results/arm/coremark_mp2_arm-armv8-a_O2.stdout_stderr.log
../bin/linux/arm/coremark_mp2_arm-armv8-a_ffast_O2 n 2>&1 > ../results/arm/coremark_mp2_arm-armv8-a_ffast_O2.stdout_stderr.log
../bin/linux/arm/coremark_mp2_arm-armv8-a_ffast_O2_cortex-a53 n 2>&1 > ../results/arm/coremark_mp2_arm-armv8-a_ffast_O2_cortex-a53.stdout_stderr.log
../bin/linux/arm/coremark_mp2_arm-armv8-a_ffast_O2_cortex-a57 n 2>&1 > ../results/arm/coremark_mp2_arm-armv8-a_ffast_O2_cortex-a57.stdout_stderr.log
../bin/linux/arm/coremark_mp2_arm-armv8-a_O3 n 2>&1 > ../results/arm/coremark_mp2_arm-armv8-a_O3.stdout_stderr.log
../bin/linux/arm/coremark_mp2_arm-armv8-a_ffast_O3 n 2>&1 > ../results/arm/coremark_mp2_arm-armv8-a_ffast_O3.stdout_stderr.log
../bin/linux/arm/coremark_mp2_arm-armv8-a_ffast_O3_cortex-a53 n 2>&1 > ../results/arm/coremark_mp2_arm-armv8-a_ffast_O3_cortex-a53.stdout_stderr.log
../bin/linux/arm/coremark_mp2_arm-armv8-a_ffast_O3_cortex-a57 n 2>&1 > ../results/arm/coremark_mp2_arm-armv8-a_ffast_O3_cortex-a57.stdout_stderr.log
../bin/linux/arm/coremark_mp2_arm-armv8.1-a_O2 n 2>&1 > ../results/arm/coremark_mp2_arm-armv8.1-a_O2.stdout_stderr.log
../bin/linux/arm/coremark_mp2_arm-armv8.1-a_O3 n 2>&1 > ../results/arm/coremark_mp2_arm-armv8.1-a_O3.stdout_stderr.log

echo -e "Run Coremark 4 Thread\n"

../bin/linux/arm/coremark_mp4_arm-armv6_O2 n 2>&1 > ../results/arm/coremark_mp4_arm-armv6_O2.stdout_stderr.log
../bin/linux/arm/coremark_mp4_arm-armv6_O3 n 2>&1 > ../results/arm/coremark_mp4_arm-armv6_O3.stdout_stderr.log
../bin/linux/arm/coremark_mp4_arm-armv7_O2 n 2>&1 > ../results/arm/coremark_mp4_arm-armv7_O2.stdout_stderr.log
../bin/linux/arm/coremark_mp4_arm-armv7_O3 n 2>&1 > ../results/arm/coremark_mp4_arm-armv7_O3.stdout_stderr.log
../bin/linux/arm/coremark_mp4_arm-armv7-a_O2 n 2>&1 > ../results/arm/coremark_mp4_arm-armv7-a_O2.stdout_stderr.log
../bin/linux/arm/coremark_mp4_arm-armv7-a_ffast_O2 n 2>&1 > ../results/arm/coremark_mp4_arm-armv7-a_ffast_O2.stdout_stderr.log
../bin/linux/arm/coremark_mp4_arm-armv7-a_ffast_O2_cortex-a9 n 2>&1 > ../results/arm/coremark_mp4_arm-armv7-a_ffast_O2_cortex-a9.stdout_stderr.log
../bin/linux/arm/coremark_mp4_arm-armv7-a_ffast_O2_cortex-a7 n 2>&1 > ../results/arm/coremark_mp4_arm-armv7-a_ffast_O2_cortex-a7.stdout_stderr.log
../bin/linux/arm/coremark_mp4_arm-armv7-a_O3 n 2>&1 > ../results/arm/coremark_mp4_arm-armv7-a_O3.stdout_stderr.log
../bin/linux/arm/coremark_mp4_arm-armv7-a_ffast_O3 n 2>&1 > ../results/arm/coremark_mp4_arm-armv7-a_ffast_O3.stdout_stderr.log
../bin/linux/arm/coremark_mp4_arm-armv7-a_ffast_O3_cortex-a9 n 2>&1 > ../results/arm/coremark_mp4_arm-armv7-a_ffast_O3_cortex-a9.stdout_stderr.log
../bin/linux/arm/coremark_mp4_arm-armv7-a_ffast_O3_cortex-a7 n 2>&1 > ../results/arm/coremark_mp4_arm-armv7-a_ffast_O3_cortex-a7.stdout_stderr.log
../bin/linux/arm/coremark_mp4_arm-armv8-a_O2 n 2>&1 > ../results/arm/coremark_mp4_arm-armv8-a_O2.stdout_stderr.log
../bin/linux/arm/coremark_mp4_arm-armv8-a_ffast_O2 n 2>&1 > ../results/arm/coremark_mp4_arm-armv8-a_ffast_O2.stdout_stderr.log
../bin/linux/arm/coremark_mp4_arm-armv8-a_ffast_O2_cortex-a53 n 2>&1 > ../results/arm/coremark_mp4_arm-armv8-a_ffast_O2_cortex-a53.stdout_stderr.log
../bin/linux/arm/coremark_mp4_arm-armv8-a_ffast_O2_cortex-a57 n 2>&1 > ../results/arm/coremark_mp4_arm-armv8-a_ffast_O2_cortex-a57.stdout_stderr.log
../bin/linux/arm/coremark_mp4_arm-armv8-a_O3 n 2>&1 > ../results/arm/coremark_mp4_arm-armv8-a_O3.stdout_stderr.log
../bin/linux/arm/coremark_mp4_arm-armv8-a_ffast_O3 n 2>&1 > ../results/arm/coremark_mp4_arm-armv8-a_ffast_O3.stdout_stderr.log
../bin/linux/arm/coremark_mp4_arm-armv8-a_ffast_O3_cortex-a53 n 2>&1 > ../results/arm/coremark_mp4_arm-armv8-a_ffast_O3_cortex-a53.stdout_stderr.log
../bin/linux/arm/coremark_mp4_arm-armv8-a_ffast_O3_cortex-a57 n 2>&1 > ../results/arm/coremark_mp4_arm-armv8-a_ffast_O3_cortex-a57.stdout_stderr.log
../bin/linux/arm/coremark_mp4_arm-armv8.1-a_O2 n 2>&1 > ../results/arm/coremark_mp4_arm-armv8.1-a_O2.stdout_stderr.log
../bin/linux/arm/coremark_mp4_arm-armv8.1-a_O3 n 2>&1 > ../results/arm/coremark_mp4_arm-armv8.1-a_O3.stdout_stderr.log

echo -e "Run Coremark 8 Thread\n"

../bin/linux/arm/coremark_mp8_arm-armv6_O2 n 2>&1 > ../results/arm/coremark_mp8_arm-armv6_O2.stdout_stderr.log
../bin/linux/arm/coremark_mp8_arm-armv6_O3 n 2>&1 > ../results/arm/coremark_mp8_arm-armv6_O3.stdout_stderr.log
../bin/linux/arm/coremark_mp8_arm-armv7_O2 n 2>&1 > ../results/arm/coremark_mp8_arm-armv7_O2.stdout_stderr.log
../bin/linux/arm/coremark_mp8_arm-armv7_O3 n 2>&1 > ../results/arm/coremark_mp8_arm-armv7_O3.stdout_stderr.log
../bin/linux/arm/coremark_mp8_arm-armv7-a_O2 n 2>&1 > ../results/arm/coremark_mp8_arm-armv7-a_O2.stdout_stderr.log
../bin/linux/arm/coremark_mp8_arm-armv7-a_ffast_O2 n 2>&1 > ../results/arm/coremark_mp8_arm-armv7-a_ffast_O2.stdout_stderr.log
../bin/linux/arm/coremark_mp8_arm-armv7-a_ffast_O2_cortex-a9 n 2>&1 > ../results/arm/coremark_mp8_arm-armv7-a_ffast_O2_cortex-a9.stdout_stderr.log
../bin/linux/arm/coremark_mp8_arm-armv7-a_ffast_O2_cortex-a7 n 2>&1 > ../results/arm/coremark_mp8_arm-armv7-a_ffast_O2_cortex-a7.stdout_stderr.log
../bin/linux/arm/coremark_mp8_arm-armv7-a_O3 n 2>&1 > ../results/arm/coremark_mp8_arm-armv7-a_O3.stdout_stderr.log
../bin/linux/arm/coremark_mp8_arm-armv7-a_ffast_O3 n 2>&1 > ../results/arm/coremark_mp8_arm-armv7-a_ffast_O3.stdout_stderr.log
../bin/linux/arm/coremark_mp8_arm-armv7-a_ffast_O3_cortex-a9 n 2>&1 > ../results/arm/coremark_mp8_arm-armv7-a_ffast_O3_cortex-a9.stdout_stderr.log
../bin/linux/arm/coremark_mp8_arm-armv7-a_ffast_O3_cortex-a7 n 2>&1 > ../results/arm/coremark_mp8_arm-armv7-a_ffast_O3_cortex-a7.stdout_stderr.log
../bin/linux/arm/coremark_mp8_arm-armv8-a_O2 n 2>&1 > ../results/arm/coremark_mp8_arm-armv8-a_O2.stdout_stderr.log
../bin/linux/arm/coremark_mp8_arm-armv8-a_ffast_O2 n 2>&1 > ../results/arm/coremark_mp8_arm-armv8-a_ffast_O2.stdout_stderr.log
../bin/linux/arm/coremark_mp8_arm-armv8-a_ffast_O2_cortex-a53 n 2>&1 > ../results/arm/coremark_mp8_arm-armv8-a_ffast_O2_cortex-a53.stdout_stderr.log
../bin/linux/arm/coremark_mp8_arm-armv8-a_ffast_O2_cortex-a57 n 2>&1 > ../results/arm/coremark_mp8_arm-armv8-a_ffast_O2_cortex-a57.stdout_stderr.log
../bin/linux/arm/coremark_mp8_arm-armv8-a_O3 n 2>&1 > ../results/arm/coremark_mp8_arm-armv8-a_O3.stdout_stderr.log
../bin/linux/arm/coremark_mp8_arm-armv8-a_ffast_O3 n 2>&1 > ../results/arm/coremark_mp8_arm-armv8-a_ffast_O3.stdout_stderr.log
../bin/linux/arm/coremark_mp8_arm-armv8-a_ffast_O3_cortex-a53 n 2>&1 > ../results/arm/coremark_mp8_arm-armv8-a_ffast_O3_cortex-a53.stdout_stderr.log
../bin/linux/arm/coremark_mp8_arm-armv8-a_ffast_O3_cortex-a57 n 2>&1 > ../results/arm/coremark_mp8_arm-armv8-a_ffast_O3_cortex-a57.stdout_stderr.log
../bin/linux/arm/coremark_mp8_arm-armv8.1-a_O2 n 2>&1 > ../results/arm/coremark_mp8_arm-armv8.1-a_O2.stdout_stderr.log
../bin/linux/arm/coremark_mp8_arm-armv8.1-a_O3 n 2>&1 > ../results/arm/coremark_mp8_arm-armv8.1-a_O3.stdout_stderr.log
