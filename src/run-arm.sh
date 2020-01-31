#!/bin/bash
mkdir "../results/"
mkdir "../results/arm"

echo -e "Run Dhrystone v 2.1\n"

../bin/linux/arm/dhrystone_arm-armv6_O2 n 2>&1 > ../results/arm/dhrystone_arm-armv6_O2.stdout_stderr.log
../bin/linux/arm/dhrystone_arm-armv6_O3 n 2>&1 > ../results/arm/dhrystone_arm-armv6_O3.stdout_stderr.log
../bin/linux/arm/dhrystone_arm-armv7_O2 n 2>&1 > ../results/arm/dhrystone_arm-armv7_O2.stdout_stderr.log
../bin/linux/arm/dhrystone_arm-armv7_O3 n 2>&1 > ../results/arm/dhrystone_arm-armv7_O3.stdout_stderr.log
../bin/linux/arm/dhrystone_arm-armv7-a_O2 n 2>&1 > ../results/arm/dhrystone_arm-armv7-a_O2.stdout_stderr.log
../bin/linux/arm/dhrystone_arm-armv7-a_ffast_O2 n 2>&1 > ../results/arm/dhrystone_arm-armv7-a_ffast_O2.stdout_stderr.log
../bin/linux/arm/dhrystone_arm-armv7-a_ffast_O2_cortex-a9 n 2>&1 > ../results/arm/dhrystone_arm-armv7-a_ffast_O2_cortex-a9.stdout_stderr.log
../bin/linux/arm/dhrystone_arm-armv7-a_ffast_O2_cortex-a7 n 2>&1 > ../results/arm/dhrystone_arm-armv7-a_ffast_O2_cortex-a7.stdout_stderr.log
../bin/linux/arm/dhrystone_arm-armv7-a_O3 n 2>&1 > ../results/arm/dhrystone_arm-armv7-a_O3.stdout_stderr.log
../bin/linux/arm/dhrystone_arm-armv7-a_ffast_O3 n 2>&1 > ../results/arm/dhrystone_arm-armv7-a_ffast_O3.stdout_stderr.log
../bin/linux/arm/dhrystone_arm-armv7-a_ffast_O3_cortex-a9 n 2>&1 > ../results/arm/dhrystone_arm-armv7-a_ffast_O3_cortex-a9.stdout_stderr.log
../bin/linux/arm/dhrystone_arm-armv7-a_ffast_O3_cortex-a7 n 2>&1 > ../results/arm/dhrystone_arm-armv7-a_ffast_O3_cortex-a7.stdout_stderr.log
../bin/linux/arm/dhrystone_arm-armv8-a_O2 n 2>&1 > ../results/arm/dhrystone_arm-armv8-a_O2.stdout_stderr.log
../bin/linux/arm/dhrystone_arm-armv8-a_ffast_O2 n 2>&1 > ../results/arm/dhrystone_arm-armv8-a_ffast_O2.stdout_stderr.log
../bin/linux/arm/dhrystone_arm-armv8-a_ffast_O2_cortex-a53 n 2>&1 > ../results/arm/dhrystone_arm-armv8-a_ffast_O2_cortex-a53.stdout_stderr.log
../bin/linux/arm/dhrystone_arm-armv8-a_ffast_O2_cortex-a57 n 2>&1 > ../results/arm/dhrystone_arm-armv8-a_ffast_O2_cortex-a57.stdout_stderr.log
../bin/linux/arm/dhrystone_arm-armv8-a_O3 n 2>&1 > ../results/arm/dhrystone_arm-armv8-a_O3.stdout_stderr.log
../bin/linux/arm/dhrystone_arm-armv8-a_ffast_O3 n 2>&1 > ../results/arm/dhrystone_arm-armv8-a_ffast_O3.stdout_stderr.log
../bin/linux/arm/dhrystone_arm-armv8-a_ffast_O3_cortex-a53 n 2>&1 > ../results/arm/dhrystone_arm-armv8-a_ffast_O3_cortex-a53.stdout_stderr.log
../bin/linux/arm/dhrystone_arm-armv8-a_ffast_O3_cortex-a57 n 2>&1 > ../results/arm/dhrystone_arm-armv8-a_ffast_O3_cortex-a57.stdout_stderr.log
../bin/linux/arm/dhrystone_arm-armv8.1-a_O2 n 2>&1 > ../results/arm/dhrystone_arm-armv8.1-a_O2.stdout_stderr.log
../bin/linux/arm/dhrystone_arm-armv8.1-a_O3 n 2>&1 > ../results/arm/dhrystone_arm-armv8.1-a_O3.stdout_stderr.log

echo -e "Run Whetstone v 2.1\n"

../bin/linux/arm/whetstone_arm-armv6_O2 n 2>&1 > ../results/arm/whetstone_arm-armv6_O2.stdout_stderr.log
../bin/linux/arm/whetstone_arm-armv6_O3 n 2>&1 > ../results/arm/whetstone_arm-armv6_O3.stdout_stderr.log
../bin/linux/arm/whetstone_arm-armv7_O2 n 2>&1 > ../results/arm/whetstone_arm-armv7_O2.stdout_stderr.log
../bin/linux/arm/whetstone_arm-armv7_O3 n 2>&1 > ../results/arm/whetstone_arm-armv7_O3.stdout_stderr.log
../bin/linux/arm/whetstone_arm-armv7-a_O2 n 2>&1 > ../results/arm/whetstone_arm-armv7-a_O2.stdout_stderr.log
../bin/linux/arm/whetstone_arm-armv7-a_ffast_O2 n 2>&1 > ../results/arm/whetstone_arm-armv7-a_ffast_O2.stdout_stderr.log
../bin/linux/arm/whetstone_arm-armv7-a_ffast_O2_cortex-a9 n 2>&1 > ../results/arm/whetstone_arm-armv7-a_ffast_O2_cortex-a9.stdout_stderr.log
../bin/linux/arm/whetstone_arm-armv7-a_ffast_O2_cortex-a7 n 2>&1 > ../results/arm/whetstone_arm-armv7-a_ffast_O2_cortex-a7.stdout_stderr.log
../bin/linux/arm/whetstone_arm-armv7-a_O3 n 2>&1 > ../results/arm/whetstone_arm-armv7-a_O3.stdout_stderr.log
../bin/linux/arm/whetstone_arm-armv7-a_ffast_O3 n 2>&1 > ../results/arm/whetstone_arm-armv7-a_ffast_O3.stdout_stderr.log
../bin/linux/arm/whetstone_arm-armv7-a_ffast_O3_cortex-a9 n 2>&1 > ../results/arm/whetstone_arm-armv7-a_ffast_O3_cortex-a9.stdout_stderr.log
../bin/linux/arm/whetstone_arm-armv7-a_ffast_O3_cortex-a7 n 2>&1 > ../results/arm/whetstone_arm-armv7-a_ffast_O3_cortex-a7.stdout_stderr.log
../bin/linux/arm/whetstone_arm-armv8-a_O2 n 2>&1 > ../results/arm/whetstone_arm-armv8-a_O2.stdout_stderr.log
../bin/linux/arm/whetstone_arm-armv8-a_ffast_O2 n 2>&1 > ../results/arm/whetstone_arm-armv8-a_ffast_O2.stdout_stderr.log
../bin/linux/arm/whetstone_arm-armv8-a_ffast_O2_cortex-a53 n 2>&1 > ../results/arm/whetstone_arm-armv8-a_ffast_O2_cortex-a53.stdout_stderr.log
../bin/linux/arm/whetstone_arm-armv8-a_ffast_O2_cortex-a57 n 2>&1 > ../results/arm/whetstone_arm-armv8-a_ffast_O2_cortex-a57.stdout_stderr.log
../bin/linux/arm/whetstone_arm-armv8-a_O3 n 2>&1 > ../results/arm/whetstone_arm-armv8-a_O3.stdout_stderr.log
../bin/linux/arm/whetstone_arm-armv8-a_ffast_O3 n 2>&1 > ../results/arm/whetstone_arm-armv8-a_ffast_O3.stdout_stderr.log
../bin/linux/arm/whetstone_arm-armv8-a_ffast_O3_cortex-a53 n 2>&1 > ../results/arm/whetstone_arm-armv8-a_ffast_O3_cortex-a53.stdout_stderr.log
../bin/linux/arm/whetstone_arm-armv8-a_ffast_O3_cortex-a57 n 2>&1 > ../results/arm/whetstone_arm-armv8-a_ffast_O3_cortex-a57.stdout_stderr.log
../bin/linux/arm/whetstone_arm-armv8.1-a_O2 n 2>&1 > ../results/arm/whetstone_arm-armv8.1-a_O2.stdout_stderr.log
../bin/linux/arm/whetstone_arm-armv8.1-a_O3 n 2>&1 > ../results/arm/whetstone_arm-armv8.1-a_O3.stdout_stderr.log

echo -e "Run Memspeed v 2.1\n"

../bin/linux/arm/memspeed_arm-armv6_O2 n 2>&1 > ../results/arm/memspeed_arm-armv6_O2.stdout_stderr.log
../bin/linux/arm/memspeed_arm-armv6_O3 n 2>&1 > ../results/arm/memspeed_arm-armv6_O3.stdout_stderr.log
../bin/linux/arm/memspeed_arm-armv7_O2 n 2>&1 > ../results/arm/memspeed_arm-armv7_O2.stdout_stderr.log
../bin/linux/arm/memspeed_arm-armv7_O3 n 2>&1 > ../results/arm/memspeed_arm-armv7_O3.stdout_stderr.log
../bin/linux/arm/memspeed_arm-armv7-a_O2 n 2>&1 > ../results/arm/memspeed_arm-armv7-a_O2.stdout_stderr.log
../bin/linux/arm/memspeed_arm-armv7-a_ffast_O2 n 2>&1 > ../results/arm/memspeed_arm-armv7-a_ffast_O2.stdout_stderr.log
../bin/linux/arm/memspeed_arm-armv7-a_ffast_O2_cortex-a9 n 2>&1 > ../results/arm/memspeed_arm-armv7-a_ffast_O2_cortex-a9.stdout_stderr.log
../bin/linux/arm/memspeed_arm-armv7-a_ffast_O2_cortex-a7 n 2>&1 > ../results/arm/memspeed_arm-armv7-a_ffast_O2_cortex-a7.stdout_stderr.log
../bin/linux/arm/memspeed_arm-armv7-a_O3 n 2>&1 > ../results/arm/memspeed_arm-armv7-a_O3.stdout_stderr.log
../bin/linux/arm/memspeed_arm-armv7-a_ffast_O3 n 2>&1 > ../results/arm/memspeed_arm-armv7-a_ffast_O3.stdout_stderr.log
../bin/linux/arm/memspeed_arm-armv7-a_ffast_O3_cortex-a9 n 2>&1 > ../results/arm/memspeed_arm-armv7-a_ffast_O3_cortex-a9.stdout_stderr.log
../bin/linux/arm/memspeed_arm-armv7-a_ffast_O3_cortex-a7 n 2>&1 > ../results/arm/memspeed_arm-armv7-a_ffast_O3_cortex-a7.stdout_stderr.log
../bin/linux/arm/memspeed_arm-armv8-a_O2 n 2>&1 > ../results/arm/memspeed_arm-armv8-a_O2.stdout_stderr.log
../bin/linux/arm/memspeed_arm-armv8-a_ffast_O2 n 2>&1 > ../results/arm/memspeed_arm-armv8-a_ffast_O2.stdout_stderr.log
../bin/linux/arm/memspeed_arm-armv8-a_ffast_O2_cortex-a53 n 2>&1 > ../results/arm/memspeed_arm-armv8-a_ffast_O2_cortex-a53.stdout_stderr.log
../bin/linux/arm/memspeed_arm-armv8-a_ffast_O2_cortex-a57 n 2>&1 > ../results/arm/memspeed_arm-armv8-a_ffast_O2_cortex-a57.stdout_stderr.log
../bin/linux/arm/memspeed_arm-armv8-a_O3 n 2>&1 > ../results/arm/memspeed_arm-armv8-a_O3.stdout_stderr.log
../bin/linux/arm/memspeed_arm-armv8-a_ffast_O3 n 2>&1 > ../results/arm/memspeed_arm-armv8-a_ffast_O3.stdout_stderr.log
../bin/linux/arm/memspeed_arm-armv8-a_ffast_O3_cortex-a53 n 2>&1 > ../results/arm/memspeed_arm-armv8-a_ffast_O3_cortex-a53.stdout_stderr.log
../bin/linux/arm/memspeed_arm-armv8-a_ffast_O3_cortex-a57 n 2>&1 > ../results/arm/memspeed_arm-armv8-a_ffast_O3_cortex-a57.stdout_stderr.log
../bin/linux/arm/memspeed_arm-armv8.1-a_O2 n 2>&1 > ../results/arm/memspeed_arm-armv8.1-a_O2.stdout_stderr.log
../bin/linux/arm/memspeed_arm-armv8.1-a_O3 n 2>&1 > ../results/arm/memspeed_arm-armv8.1-a_O3.stdout_stderr.log

echo -e "Run Linpack v 2.1\n"

../bin/linux/arm/linpack_arm-armv6_O2 n 2>&1 > ../results/arm/linpack_arm-armv6_O2.stdout_stderr.log
../bin/linux/arm/linpack_arm-armv6_O3 n 2>&1 > ../results/arm/linpack_arm-armv6_O3.stdout_stderr.log
../bin/linux/arm/linpack_arm-armv7_O2 n 2>&1 > ../results/arm/linpack_arm-armv7_O2.stdout_stderr.log
../bin/linux/arm/linpack_arm-armv7_O3 n 2>&1 > ../results/arm/linpack_arm-armv7_O3.stdout_stderr.log
../bin/linux/arm/linpack_arm-armv7-a_O2 n 2>&1 > ../results/arm/linpack_arm-armv7-a_O2.stdout_stderr.log
../bin/linux/arm/linpack_arm-armv7-a_ffast_O2 n 2>&1 > ../results/arm/linpack_arm-armv7-a_ffast_O2.stdout_stderr.log
../bin/linux/arm/linpack_arm-armv7-a_ffast_O2_cortex-a9 n 2>&1 > ../results/arm/linpack_arm-armv7-a_ffast_O2_cortex-a9.stdout_stderr.log
../bin/linux/arm/linpack_arm-armv7-a_ffast_O2_cortex-a7 n 2>&1 > ../results/arm/linpack_arm-armv7-a_ffast_O2_cortex-a7.stdout_stderr.log
../bin/linux/arm/linpack_arm-armv7-a_O3 n 2>&1 > ../results/arm/linpack_arm-armv7-a_O3.stdout_stderr.log
../bin/linux/arm/linpack_arm-armv7-a_ffast_O3 n 2>&1 > ../results/arm/linpack_arm-armv7-a_ffast_O3.stdout_stderr.log
../bin/linux/arm/linpack_arm-armv7-a_ffast_O3_cortex-a9 n 2>&1 > ../results/arm/linpack_arm-armv7-a_ffast_O3_cortex-a9.stdout_stderr.log
../bin/linux/arm/linpack_arm-armv7-a_ffast_O3_cortex-a7 n 2>&1 > ../results/arm/linpack_arm-armv7-a_ffast_O3_cortex-a7.stdout_stderr.log
../bin/linux/arm/linpack_arm-armv8-a_O2 n 2>&1 > ../results/arm/linpack_arm-armv8-a_O2.stdout_stderr.log
../bin/linux/arm/linpack_arm-armv8-a_ffast_O2 n 2>&1 > ../results/arm/linpack_arm-armv8-a_ffast_O2.stdout_stderr.log
../bin/linux/arm/linpack_arm-armv8-a_ffast_O2_cortex-a53 n 2>&1 > ../results/arm/linpack_arm-armv8-a_ffast_O2_cortex-a53.stdout_stderr.log
../bin/linux/arm/linpack_arm-armv8-a_ffast_O2_cortex-a57 n 2>&1 > ../results/arm/linpack_arm-armv8-a_ffast_O2_cortex-a57.stdout_stderr.log
../bin/linux/arm/linpack_arm-armv8-a_O3 n 2>&1 > ../results/arm/linpack_arm-armv8-a_O3.stdout_stderr.log
../bin/linux/arm/linpack_arm-armv8-a_ffast_O3 n 2>&1 > ../results/arm/linpack_arm-armv8-a_ffast_O3.stdout_stderr.log
../bin/linux/arm/linpack_arm-armv8-a_ffast_O3_cortex-a53 n 2>&1 > ../results/arm/linpack_arm-armv8-a_ffast_O3_cortex-a53.stdout_stderr.log
../bin/linux/arm/linpack_arm-armv8-a_ffast_O3_cortex-a57 n 2>&1 > ../results/arm/linpack_arm-armv8-a_ffast_O3_cortex-a57.stdout_stderr.log
../bin/linux/arm/linpack_arm-armv8.1-a_O2 n 2>&1 > ../results/arm/linpack_arm-armv8.1-a_O2.stdout_stderr.log
../bin/linux/arm/linpack_arm-armv8.1-a_O3 n 2>&1 > ../results/arm/linpack_arm-armv8.1-a_O3.stdout_stderr.log

echo -e "Run Lloops v 2.1\n"

../bin/linux/arm/lloops_arm-armv6_O2 n 2>&1 > ../results/arm/lloops_arm-armv6_O2.stdout_stderr.log
../bin/linux/arm/lloops_arm-armv6_O3 n 2>&1 > ../results/arm/lloops_arm-armv6_O3.stdout_stderr.log
../bin/linux/arm/lloops_arm-armv7_O2 n 2>&1 > ../results/arm/lloops_arm-armv7_O2.stdout_stderr.log
../bin/linux/arm/lloops_arm-armv7_O3 n 2>&1 > ../results/arm/lloops_arm-armv7_O3.stdout_stderr.log
../bin/linux/arm/lloops_arm-armv7-a_O2 n 2>&1 > ../results/arm/lloops_arm-armv7-a_O2.stdout_stderr.log
../bin/linux/arm/lloops_arm-armv7-a_ffast_O2 n 2>&1 > ../results/arm/lloops_arm-armv7-a_ffast_O2.stdout_stderr.log
../bin/linux/arm/lloops_arm-armv7-a_ffast_O2_cortex-a9 n 2>&1 > ../results/arm/lloops_arm-armv7-a_ffast_O2_cortex-a9.stdout_stderr.log
../bin/linux/arm/lloops_arm-armv7-a_ffast_O2_cortex-a7 n 2>&1 > ../results/arm/lloops_arm-armv7-a_ffast_O2_cortex-a7.stdout_stderr.log
../bin/linux/arm/lloops_arm-armv7-a_O3 n 2>&1 > ../results/arm/lloops_arm-armv7-a_O3.stdout_stderr.log
../bin/linux/arm/lloops_arm-armv7-a_ffast_O3 n 2>&1 > ../results/arm/lloops_arm-armv7-a_ffast_O3.stdout_stderr.log
../bin/linux/arm/lloops_arm-armv7-a_ffast_O3_cortex-a9 n 2>&1 > ../results/arm/lloops_arm-armv7-a_ffast_O3_cortex-a9.stdout_stderr.log
../bin/linux/arm/lloops_arm-armv7-a_ffast_O3_cortex-a7 n 2>&1 > ../results/arm/lloops_arm-armv7-a_ffast_O3_cortex-a7.stdout_stderr.log
../bin/linux/arm/lloops_arm-armv8-a_O2 n 2>&1 > ../results/arm/lloops_arm-armv8-a_O2.stdout_stderr.log
../bin/linux/arm/lloops_arm-armv8-a_ffast_O2 n 2>&1 > ../results/arm/lloops_arm-armv8-a_ffast_O2.stdout_stderr.log
../bin/linux/arm/lloops_arm-armv8-a_ffast_O2_cortex-a53 n 2>&1 > ../results/arm/lloops_arm-armv8-a_ffast_O2_cortex-a53.stdout_stderr.log
../bin/linux/arm/lloops_arm-armv8-a_ffast_O2_cortex-a57 n 2>&1 > ../results/arm/lloops_arm-armv8-a_ffast_O2_cortex-a57.stdout_stderr.log
../bin/linux/arm/lloops_arm-armv8-a_O3 n 2>&1 > ../results/arm/lloops_arm-armv8-a_O3.stdout_stderr.log
../bin/linux/arm/lloops_arm-armv8-a_ffast_O3 n 2>&1 > ../results/arm/lloops_arm-armv8-a_ffast_O3.stdout_stderr.log
../bin/linux/arm/lloops_arm-armv8-a_ffast_O3_cortex-a53 n 2>&1 > ../results/arm/lloops_arm-armv8-a_ffast_O3_cortex-a53.stdout_stderr.log
../bin/linux/arm/lloops_arm-armv8-a_ffast_O3_cortex-a57 n 2>&1 > ../results/arm/lloops_arm-armv8-a_ffast_O3_cortex-a57.stdout_stderr.log
../bin/linux/arm/lloops_arm-armv8.1-a_O2 n 2>&1 > ../results/arm/lloops_arm-armv8.1-a_O2.stdout_stderr.log
../bin/linux/arm/lloops_arm-armv8.1-a_O3 n 2>&1 > ../results/arm/lloops_arm-armv8.1-a_O3.stdout_stderr.log

echo -e "Run WhetstoneMP v 2.1\n"

../bin/linux/arm/whetstone_mp_arm-armv6_O2 n 2>&1 > ../results/arm/whetstone_mp_arm-armv6_O2.stdout_stderr.log
../bin/linux/arm/whetstone_mp_arm-armv6_O3 n 2>&1 > ../results/arm/whetstone_mp_arm-armv6_O3.stdout_stderr.log
../bin/linux/arm/whetstone_mp_arm-armv7_O2 n 2>&1 > ../results/arm/whetstone_mp_arm-armv7_O2.stdout_stderr.log
../bin/linux/arm/whetstone_mp_arm-armv7_O3 n 2>&1 > ../results/arm/whetstone_mp_arm-armv7_O3.stdout_stderr.log
../bin/linux/arm/whetstone_mp_arm-armv7-a_O2 n 2>&1 > ../results/arm/whetstone_mp_arm-armv7-a_O2.stdout_stderr.log
../bin/linux/arm/whetstone_mp_arm-armv7-a_ffast_O2 n 2>&1 > ../results/arm/whetstone_mp_arm-armv7-a_ffast_O2.stdout_stderr.log
../bin/linux/arm/whetstone_mp_arm-armv7-a_ffast_O2_cortex-a9 n 2>&1 > ../results/arm/whetstone_mp_arm-armv7-a_ffast_O2_cortex-a9.stdout_stderr.log
../bin/linux/arm/whetstone_mp_arm-armv7-a_ffast_O2_cortex-a7 n 2>&1 > ../results/arm/whetstone_mp_arm-armv7-a_ffast_O2_cortex-a7.stdout_stderr.log
../bin/linux/arm/whetstone_mp_arm-armv7-a_O3 n 2>&1 > ../results/arm/whetstone_mp_arm-armv7-a_O3.stdout_stderr.log
../bin/linux/arm/whetstone_mp_arm-armv7-a_ffast_O3 n 2>&1 > ../results/arm/whetstone_mp_arm-armv7-a_ffast_O3.stdout_stderr.log
../bin/linux/arm/whetstone_mp_arm-armv7-a_ffast_O3_cortex-a9 n 2>&1 > ../results/arm/whetstone_mp_arm-armv7-a_ffast_O3_cortex-a9.stdout_stderr.log
../bin/linux/arm/whetstone_mp_arm-armv7-a_ffast_O3_cortex-a7 n 2>&1 > ../results/arm/whetstone_mp_arm-armv7-a_ffast_O3_cortex-a7.stdout_stderr.log
../bin/linux/arm/whetstone_mp_arm-armv8-a_O2 n 2>&1 > ../results/arm/whetstone_mp_arm-armv8-a_O2.stdout_stderr.log
../bin/linux/arm/whetstone_mp_arm-armv8-a_ffast_O2 n 2>&1 > ../results/arm/whetstone_mp_arm-armv8-a_ffast_O2.stdout_stderr.log
../bin/linux/arm/whetstone_mp_arm-armv8-a_ffast_O2_cortex-a53 n 2>&1 > ../results/arm/whetstone_mp_arm-armv8-a_ffast_O2_cortex-a53.stdout_stderr.log
../bin/linux/arm/whetstone_mp_arm-armv8-a_ffast_O2_cortex-a57 n 2>&1 > ../results/arm/whetstone_mp_arm-armv8-a_ffast_O2_cortex-a57.stdout_stderr.log
../bin/linux/arm/whetstone_mp_arm-armv8-a_O3 n 2>&1 > ../results/arm/whetstone_mp_arm-armv8-a_O3.stdout_stderr.log
../bin/linux/arm/whetstone_mp_arm-armv8-a_ffast_O3 n 2>&1 > ../results/arm/whetstone_mp_arm-armv8-a_ffast_O3.stdout_stderr.log
../bin/linux/arm/whetstone_mp_arm-armv8-a_ffast_O3_cortex-a53 n 2>&1 > ../results/arm/whetstone_mp_arm-armv8-a_ffast_O3_cortex-a53.stdout_stderr.log
../bin/linux/arm/whetstone_mp_arm-armv8-a_ffast_O3_cortex-a57 n 2>&1 > ../results/arm/whetstone_mp_arm-armv8-a_ffast_O3_cortex-a57.stdout_stderr.log
../bin/linux/arm/whetstone_mp_arm-armv8.1-a_O2 n 2>&1 > ../results/arm/whetstone_mp_arm-armv8.1-a_O2.stdout_stderr.log
../bin/linux/arm/whetstone_mp_arm-armv8.1-a_O3 n 2>&1 > ../results/arm/whetstone_mp_arm-armv8.1-a_O3.stdout_stderr.log

echo -e "Run MPMFlops v 2.1\n"

../bin/linux/arm/mpmflops_arm-armv6_O2 n 2>&1 > ../results/arm/mpmflops_arm-armv6_O2.stdout_stderr.log
../bin/linux/arm/mpmflops_arm-armv6_O3 n 2>&1 > ../results/arm/mpmflops_arm-armv6_O3.stdout_stderr.log
../bin/linux/arm/mpmflops_arm-armv7_O2 n 2>&1 > ../results/arm/mpmflops_arm-armv7_O2.stdout_stderr.log
../bin/linux/arm/mpmflops_arm-armv7_O3 n 2>&1 > ../results/arm/mpmflops_arm-armv7_O3.stdout_stderr.log
../bin/linux/arm/mpmflops_arm-armv7-a_O2 n 2>&1 > ../results/arm/mpmflops_arm-armv7-a_O2.stdout_stderr.log
../bin/linux/arm/mpmflops_arm-armv7-a_ffast_O2 n 2>&1 > ../results/arm/mpmflops_arm-armv7-a_ffast_O2.stdout_stderr.log
../bin/linux/arm/mpmflops_arm-armv7-a_ffast_O2_cortex-a9 n 2>&1 > ../results/arm/mpmflops_arm-armv7-a_ffast_O2_cortex-a9.stdout_stderr.log
../bin/linux/arm/mpmflops_arm-armv7-a_ffast_O2_cortex-a7 n 2>&1 > ../results/arm/mpmflops_arm-armv7-a_ffast_O2_cortex-a7.stdout_stderr.log
../bin/linux/arm/mpmflops_arm-armv7-a_O3 n 2>&1 > ../results/arm/mpmflops_arm-armv7-a_O3.stdout_stderr.log
../bin/linux/arm/mpmflops_arm-armv7-a_ffast_O3 n 2>&1 > ../results/arm/mpmflops_arm-armv7-a_ffast_O3.stdout_stderr.log
../bin/linux/arm/mpmflops_arm-armv7-a_ffast_O3_cortex-a9 n 2>&1 > ../results/arm/mpmflops_arm-armv7-a_ffast_O3_cortex-a9.stdout_stderr.log
../bin/linux/arm/mpmflops_arm-armv7-a_ffast_O3_cortex-a7 n 2>&1 > ../results/arm/mpmflops_arm-armv7-a_ffast_O3_cortex-a7.stdout_stderr.log
../bin/linux/arm/mpmflops_arm-armv8-a_O2 n 2>&1 > ../results/arm/mpmflops_arm-armv8-a_O2.stdout_stderr.log
../bin/linux/arm/mpmflops_arm-armv8-a_ffast_O2 n 2>&1 > ../results/arm/mpmflops_arm-armv8-a_ffast_O2.stdout_stderr.log
../bin/linux/arm/mpmflops_arm-armv8-a_ffast_O2_cortex-a53 n 2>&1 > ../results/arm/mpmflops_arm-armv8-a_ffast_O2_cortex-a53.stdout_stderr.log
../bin/linux/arm/mpmflops_arm-armv8-a_ffast_O2_cortex-a57 n 2>&1 > ../results/arm/mpmflops_arm-armv8-a_ffast_O2_cortex-a57.stdout_stderr.log
../bin/linux/arm/mpmflops_arm-armv8-a_O3 n 2>&1 > ../results/arm/mpmflops_arm-armv8-a_O3.stdout_stderr.log
../bin/linux/arm/mpmflops_arm-armv8-a_ffast_O3 n 2>&1 > ../results/arm/mpmflops_arm-armv8-a_ffast_O3.stdout_stderr.log
../bin/linux/arm/mpmflops_arm-armv8-a_ffast_O3_cortex-a53 n 2>&1 > ../results/arm/mpmflops_arm-armv8-a_ffast_O3_cortex-a53.stdout_stderr.log
../bin/linux/arm/mpmflops_arm-armv8-a_ffast_O3_cortex-a57 n 2>&1 > ../results/arm/mpmflops_arm-armv8-a_ffast_O3_cortex-a57.stdout_stderr.log
../bin/linux/arm/mpmflops_arm-armv8.1-a_O2 n 2>&1 > ../results/arm/mpmflops_arm-armv8.1-a_O2.stdout_stderr.log
../bin/linux/arm/mpmflops_arm-armv8.1-a_O3 n 2>&1 > ../results/arm/mpmflops_arm-armv8.1-a_O3.stdout_stderr.log

echo -e "Run busspeedIL\n"

../bin/linux/arm/busspeedIL_arm-armv6_O2 n 2>&1 > ../results/arm/busspeedIL_arm-armv6_O2.stdout_stderr.log
../bin/linux/arm/busspeedIL_arm-armv6_O3 n 2>&1 > ../results/arm/busspeedIL_arm-armv6_O3.stdout_stderr.log
../bin/linux/arm/busspeedIL_arm-armv7_O2 n 2>&1 > ../results/arm/busspeedIL_arm-armv7_O2.stdout_stderr.log
../bin/linux/arm/busspeedIL_arm-armv7_O3 n 2>&1 > ../results/arm/busspeedIL_arm-armv7_O3.stdout_stderr.log
../bin/linux/arm/busspeedIL_arm-armv7-a_O2 n 2>&1 > ../results/arm/busspeedIL_arm-armv7-a_O2.stdout_stderr.log
../bin/linux/arm/busspeedIL_arm-armv7-a_ffast_O2 n 2>&1 > ../results/arm/busspeedIL_arm-armv7-a_ffast_O2.stdout_stderr.log
../bin/linux/arm/busspeedIL_arm-armv7-a_ffast_O2_cortex-a9 n 2>&1 > ../results/arm/busspeedIL_arm-armv7-a_ffast_O2_cortex-a9.stdout_stderr.log
../bin/linux/arm/busspeedIL_arm-armv7-a_ffast_O2_cortex-a7 n 2>&1 > ../results/arm/busspeedIL_arm-armv7-a_ffast_O2_cortex-a7.stdout_stderr.log
../bin/linux/arm/busspeedIL_arm-armv7-a_O3 n 2>&1 > ../results/arm/busspeedIL_arm-armv7-a_O3.stdout_stderr.log
../bin/linux/arm/busspeedIL_arm-armv7-a_ffast_O3 n 2>&1 > ../results/arm/busspeedIL_arm-armv7-a_ffast_O3.stdout_stderr.log
../bin/linux/arm/busspeedIL_arm-armv7-a_ffast_O3_cortex-a9 n 2>&1 > ../results/arm/busspeedIL_arm-armv7-a_ffast_O3_cortex-a9.stdout_stderr.log
../bin/linux/arm/busspeedIL_arm-armv7-a_ffast_O3_cortex-a7 n 2>&1 > ../results/arm/busspeedIL_arm-armv7-a_ffast_O3_cortex-a7.stdout_stderr.log
../bin/linux/arm/busspeedIL_arm-armv8-a_O2 n 2>&1 > ../results/arm/busspeedIL_arm-armv8-a_O2.stdout_stderr.log
../bin/linux/arm/busspeedIL_arm-armv8-a_ffast_O2 n 2>&1 > ../results/arm/busspeedIL_arm-armv8-a_ffast_O2.stdout_stderr.log
../bin/linux/arm/busspeedIL_arm-armv8-a_ffast_O2_cortex-a53 n 2>&1 > ../results/arm/busspeedIL_arm-armv8-a_ffast_O2_cortex-a53.stdout_stderr.log
../bin/linux/arm/busspeedIL_arm-armv8-a_ffast_O2_cortex-a57 n 2>&1 > ../results/arm/busspeedIL_arm-armv8-a_ffast_O2_cortex-a57.stdout_stderr.log
../bin/linux/arm/busspeedIL_arm-armv8-a_O3 n 2>&1 > ../results/arm/busspeedIL_arm-armv8-a_O3.stdout_stderr.log
../bin/linux/arm/busspeedIL_arm-armv8-a_ffast_O3 n 2>&1 > ../results/arm/busspeedIL_arm-armv8-a_ffast_O3.stdout_stderr.log
../bin/linux/arm/busspeedIL_arm-armv8-a_ffast_O3_cortex-a53 n 2>&1 > ../results/arm/busspeedIL_arm-armv8-a_ffast_O3_cortex-a53.stdout_stderr.log
../bin/linux/arm/busspeedIL_arm-armv8-a_ffast_O3_cortex-a57 n 2>&1 > ../results/arm/busspeedIL_arm-armv8-a_ffast_O3_cortex-a57.stdout_stderr.log
../bin/linux/arm/busspeedIL_arm-armv8.1-a_O2 n 2>&1 > ../results/arm/busspeedIL_arm-armv8.1-a_O2.stdout_stderr.log
../bin/linux/arm/busspeedIL_arm-armv8.1-a_O3 n 2>&1 > ../results/arm/busspeedIL_arm-armv8.1-a_O3.stdout_stderr.log
