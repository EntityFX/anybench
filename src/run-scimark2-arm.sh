#!/bin/bash
mkdir "../results/"
mkdir "../results/arm"

echo -e "Run Scimark2\n"

../bin/linux/arm/scimark2_arm-armv6_O2 2>&1 > ../results/arm/scimark2_arm-armv6_O2.stdout_stderr.log
../bin/linux/arm/scimark2_arm-armv6_O3 2>&1 > ../results/arm/scimark2_arm-armv6_O3.stdout_stderr.log
../bin/linux/arm/scimark2_arm-armv7_O2 2>&1 > ../results/arm/scimark2_arm-armv7_O2.stdout_stderr.log
../bin/linux/arm/scimark2_arm-armv7_O3 2>&1 > ../results/arm/scimark2_arm-armv7_O3.stdout_stderr.log
../bin/linux/arm/scimark2_arm-armv7-a_O2 2>&1 > ../results/arm/scimark2_arm-armv7-a_O2.stdout_stderr.log
../bin/linux/arm/scimark2_arm-armv7-a_ffast_O2 2>&1 > ../results/arm/scimark2_arm-armv7-a_ffast_O2.stdout_stderr.log
../bin/linux/arm/scimark2_arm-armv7-a_ffast_O2_cortex-a9 2>&1 > ../results/arm/scimark2_arm-armv7-a_ffast_O2_cortex-a9.stdout_stderr.log
../bin/linux/arm/scimark2_arm-armv7-a_ffast_O2_cortex-a7 2>&1 > ../results/arm/scimark2_arm-armv7-a_ffast_O2_cortex-a7.stdout_stderr.log
../bin/linux/arm/scimark2_arm-armv7-a_O3 2>&1 > ../results/arm/scimark2_arm-armv7-a_O3.stdout_stderr.log
../bin/linux/arm/scimark2_arm-armv7-a_ffast_O3 2>&1 > ../results/arm/scimark2_arm-armv7-a_ffast_O3.stdout_stderr.log
../bin/linux/arm/scimark2_arm-armv7-a_ffast_O3_cortex-a9 2>&1 > ../results/arm/scimark2_arm-armv7-a_ffast_O3_cortex-a9.stdout_stderr.log
../bin/linux/arm/scimark2_arm-armv7-a_ffast_O3_cortex-a7 2>&1 > ../results/arm/scimark2_arm-armv7-a_ffast_O3_cortex-a7.stdout_stderr.log
../bin/linux/arm/scimark2_arm-armv8-a_O2 2>&1 > ../results/arm/scimark2_arm-armv8-a_O2.stdout_stderr.log
../bin/linux/arm/scimark2_arm-armv8-a_ffast_O2 2>&1 > ../results/arm/scimark2_arm-armv8-a_ffast_O2.stdout_stderr.log
../bin/linux/arm/scimark2_arm-armv8-a_ffast_O2_cortex-a53 2>&1 > ../results/arm/scimark2_arm-armv8-a_ffast_O2_cortex-a53.stdout_stderr.log
../bin/linux/arm/scimark2_arm-armv8-a_ffast_O2_cortex-a57 2>&1 > ../results/arm/scimark2_arm-armv8-a_ffast_O2_cortex-a57.stdout_stderr.log
../bin/linux/arm/scimark2_arm-armv8-a_O3 2>&1 > ../results/arm/scimark2_arm-armv8-a_O3.stdout_stderr.log
../bin/linux/arm/scimark2_arm-armv8-a_ffast_O3 2>&1 > ../results/arm/scimark2_arm-armv8-a_ffast_O3.stdout_stderr.log
../bin/linux/arm/scimark2_arm-armv8-a_ffast_O3_cortex-a53 2>&1 > ../results/arm/scimark2_arm-armv8-a_ffast_O3_cortex-a53.stdout_stderr.log
../bin/linux/arm/scimark2_arm-armv8-a_ffast_O3_cortex-a57 2>&1 > ../results/arm/scimark2_arm-armv8-a_ffast_O3_cortex-a57.stdout_stderr.log
../bin/linux/arm/scimark2_arm-armv8.1-a_O2 2>&1 > ../results/arm/scimark2_arm-armv8.1-a_O2.stdout_stderr.log
../bin/linux/arm/scimark2_arm-armv8.1-a_O3 2>&1 > ../results/arm/scimark2_arm-armv8.1-a_O3.stdout_stderr.log
# Huawei Taishan
../bin/linux/arm/scimark2_arm-armv8.4-a_O2_tsv110 2>&1 > ../results/arm/scimark2_arm-armv8.4-a_O2_tsv110.stdout_stderr.log
../bin/linux/arm/scimark2_arm-armv8.4-a_O3_tsv110 2>&1 > ../results/arm/scimark2_arm-armv8.4-a_O3_tsv110.stdout_stderr.log
../bin/linux/arm/scimark2_arm-armv8.4-a_Ofast_tsv110 2>&1 > ../results/arm/scimark2_arm-armv8.4-a_Ofast_tsv110.stdout_stderr.log