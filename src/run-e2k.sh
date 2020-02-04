#!/bin/bash
mkdir "../results/"
mkdir "../results/e2k"

echo -e "Run Dhrystone v 2.1\n"

../bin/linux/e2k/dhrystone_e2k-elbrus-v3_O2 n 2>&1 > ../results/e2k/dhrystone_e2k-elbrus-v3_O2.stdout_stderr.log
../bin/linux/e2k/dhrystone_e2k-elbrus-v3_O3 n 2>&1 > ../results/e2k/dhrystone_e2k-elbrus-v3_O3.stdout_stderr.log
../bin/linux/e2k/dhrystone_e2k-elbrus-v3_O4 n 2>&1 > ../results/e2k/dhrystone_e2k-elbrus-v3_O4.stdout_stderr.log
../bin/linux/e2k/dhrystone_e2k-elbrus-v4_O2 n 2>&1 > ../results/e2k/dhrystone_e2k-elbrus-v4_O2.stdout_stderr.log
../bin/linux/e2k/dhrystone_e2k-elbrus-v4_ffast_O2 n 2>&1 > ../results/e2k/dhrystone_e2k-elbrus-v4_ffast_O2.stdout_stderr.log
../bin/linux/e2k/dhrystone_e2k-elbrus-v4_ffast_O2_elbrus-8c n 2>&1 > ../results/e2k/dhrystone_e2k-elbrus-v4_ffast_O2_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/dhrystone_e2k-elbrus-v4_ffast_O2_elbrus-1c+ n 2>&1 > ../results/e2k/dhrystone_e2k-elbrus-v4_ffast_O2_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/dhrystone_e2k-elbrus-v4_O3 n 2>&1 > ../results/e2k/dhrystone_e2k-elbrus-v4_O3.stdout_stderr.log
../bin/linux/e2k/dhrystone_e2k-elbrus-v4_ffast_O3 n 2>&1 > ../results/e2k/dhrystone_e2k-elbrus-v4_ffast_O3.stdout_stderr.log
../bin/linux/e2k/dhrystone_e2k-elbrus-v4_ffast_O3_elbrus-8c n 2>&1 > ../results/e2k/dhrystone_e2k-elbrus-v4_ffast_O3_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/dhrystone_e2k-elbrus-v4_ffast_O3_elbrus-1c+ n 2>&1 > ../results/e2k/dhrystone_e2k-elbrus-v4_ffast_O3_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/dhrystone_e2k-elbrus-v4_O4 n 2>&1 > ../results/e2k/dhrystone_e2k-elbrus-v4_O4.stdout_stderr.log
../bin/linux/e2k/dhrystone_e2k-elbrus-v4_ffast_O4 n 2>&1 > ../results/e2k/dhrystone_e2k-elbrus-v4_ffast_O4.stdout_stderr.log
../bin/linux/e2k/dhrystone_e2k-elbrus-v4_ffast_O4_elbrus-8c n 2>&1 > ../results/e2k/dhrystone_e2k-elbrus-v4_ffast_O4_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/dhrystone_e2k-elbrus-v4_ffast_O4_elbrus-1c+ n 2>&1 > ../results/e2k/dhrystone_e2k-elbrus-v4_ffast_O4_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/dhrystone_e2k-elbrus-v5_O2 n 2>&1 > ../results/e2k/dhrystone_e2k-elbrus-v5_O2.stdout_stderr.log
../bin/linux/e2k/dhrystone_e2k-elbrus-v5_ffast_O2 n 2>&1 > ../results/e2k/dhrystone_e2k-elbrus-v5_ffast_O2.stdout_stderr.log
../bin/linux/e2k/dhrystone_e2k-elbrus-v5_ffast_O2_elbrus-8c2 n 2>&1 > ../results/e2k/dhrystone_e2k-elbrus-v5_ffast_O2_elbrus-8c2.stdout_stderr.log
../bin/linux/e2k/dhrystone_e2k-elbrus-v5_O3 n 2>&1 > ../results/e2k/dhrystone_e2k-elbrus-v5_O3.stdout_stderr.log
../bin/linux/e2k/dhrystone_e2k-elbrus-v5_ffast_O3 n 2>&1 > ../results/e2k/dhrystone_e2k-elbrus-v5_ffast_O3.stdout_stderr.log
../bin/linux/e2k/dhrystone_e2k-elbrus-v5_ffast_O3_elbrus-8c2 n 2>&1 > ../results/e2k/dhrystone_e2k-elbrus-v5_ffast_O3_elbrus-8c2.stdout_stderr.log
../bin/linux/e2k/dhrystone_e2k-elbrus-v5_O4 n 2>&1 > ../results/e2k/dhrystone_e2k-elbrus-v5_O4.stdout_stderr.log
../bin/linux/e2k/dhrystone_e2k-elbrus-v5_ffast_O4 n 2>&1 > ../results/e2k/dhrystone_e2k-elbrus-v5_ffast_O4.stdout_stderr.log
../bin/linux/e2k/dhrystone_e2k-elbrus-v5_ffast_O4_elbrus-8c2 n 2>&1 > ../results/e2k/dhrystone_e2k-elbrus-v5_ffast_O4_elbrus-8c2.stdout_stderr.log

echo -e "Run Whetstone\n"

../bin/linux/e2k/whetstone_e2k-elbrus-v3_O2 n 2>&1 > ../results/e2k/whetstone_e2k-elbrus-v3_O2.stdout_stderr.log
../bin/linux/e2k/whetstone_e2k-elbrus-v3_O3 n 2>&1 > ../results/e2k/whetstone_e2k-elbrus-v3_O3.stdout_stderr.log
../bin/linux/e2k/whetstone_e2k-elbrus-v3_O4 n 2>&1 > ../results/e2k/whetstone_e2k-elbrus-v3_O4.stdout_stderr.log
../bin/linux/e2k/whetstone_e2k-elbrus-v4_O2 n 2>&1 > ../results/e2k/whetstone_e2k-elbrus-v4_O2.stdout_stderr.log
../bin/linux/e2k/whetstone_e2k-elbrus-v4_ffast_O2 n 2>&1 > ../results/e2k/whetstone_e2k-elbrus-v4_ffast_O2.stdout_stderr.log
../bin/linux/e2k/whetstone_e2k-elbrus-v4_ffast_O2_elbrus-8c n 2>&1 > ../results/e2k/whetstone_e2k-elbrus-v4_ffast_O2_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/whetstone_e2k-elbrus-v4_ffast_O2_elbrus-1c+ n 2>&1 > ../results/e2k/whetstone_e2k-elbrus-v4_ffast_O2_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/whetstone_e2k-elbrus-v4_O3 n 2>&1 > ../results/e2k/whetstone_e2k-elbrus-v4_O3.stdout_stderr.log
../bin/linux/e2k/whetstone_e2k-elbrus-v4_ffast_O3 n 2>&1 > ../results/e2k/whetstone_e2k-elbrus-v4_ffast_O3.stdout_stderr.log
../bin/linux/e2k/whetstone_e2k-elbrus-v4_ffast_O3_elbrus-8c n 2>&1 > ../results/e2k/whetstone_e2k-elbrus-v4_ffast_O3_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/whetstone_e2k-elbrus-v4_ffast_O3_elbrus-1c+ n 2>&1 > ../results/e2k/whetstone_e2k-elbrus-v4_ffast_O3_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/whetstone_e2k-elbrus-v4_O4 n 2>&1 > ../results/e2k/whetstone_e2k-elbrus-v4_O4.stdout_stderr.log
../bin/linux/e2k/whetstone_e2k-elbrus-v4_ffast_O4 n 2>&1 > ../results/e2k/whetstone_e2k-elbrus-v4_ffast_O4.stdout_stderr.log
../bin/linux/e2k/whetstone_e2k-elbrus-v4_ffast_O4_elbrus-8c n 2>&1 > ../results/e2k/whetstone_e2k-elbrus-v4_ffast_O4_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/whetstone_e2k-elbrus-v4_ffast_O4_elbrus-1c+ n 2>&1 > ../results/e2k/whetstone_e2k-elbrus-v4_ffast_O4_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/whetstone_e2k-elbrus-v5_O2 n 2>&1 > ../results/e2k/whetstone_e2k-elbrus-v5_O2.stdout_stderr.log
../bin/linux/e2k/whetstone_e2k-elbrus-v5_ffast_O2 n 2>&1 > ../results/e2k/whetstone_e2k-elbrus-v5_ffast_O2.stdout_stderr.log
../bin/linux/e2k/whetstone_e2k-elbrus-v5_ffast_O2_elbrus-8c2 n 2>&1 > ../results/e2k/whetstone_e2k-elbrus-v5_ffast_O2_elbrus-8c2.stdout_stderr.log
../bin/linux/e2k/whetstone_e2k-elbrus-v5_O3 n 2>&1 > ../results/e2k/whetstone_e2k-elbrus-v5_O3.stdout_stderr.log
../bin/linux/e2k/whetstone_e2k-elbrus-v5_ffast_O3 n 2>&1 > ../results/e2k/whetstone_e2k-elbrus-v5_ffast_O3.stdout_stderr.log
../bin/linux/e2k/whetstone_e2k-elbrus-v5_ffast_O3_elbrus-8c2 n 2>&1 > ../results/e2k/whetstone_e2k-elbrus-v5_ffast_O3_elbrus-8c2.stdout_stderr.log
../bin/linux/e2k/whetstone_e2k-elbrus-v5_O4 n 2>&1 > ../results/e2k/whetstone_e2k-elbrus-v5_O4.stdout_stderr.log
../bin/linux/e2k/whetstone_e2k-elbrus-v5_ffast_O4 n 2>&1 > ../results/e2k/whetstone_e2k-elbrus-v5_ffast_O4.stdout_stderr.log
../bin/linux/e2k/whetstone_e2k-elbrus-v5_ffast_O4_elbrus-8c2 n 2>&1 > ../results/e2k/whetstone_e2k-elbrus-v5_ffast_O4_elbrus-8c2.stdout_stderr.log

echo -e "Run Memspeed\n"

../bin/linux/e2k/memspeed_e2k-elbrus-v3_O2 n 2>&1 > ../results/e2k/memspeed_e2k-elbrus-v3_O2.stdout_stderr.log
../bin/linux/e2k/memspeed_e2k-elbrus-v3_O3 n 2>&1 > ../results/e2k/memspeed_e2k-elbrus-v3_O3.stdout_stderr.log
../bin/linux/e2k/memspeed_e2k-elbrus-v3_O4 n 2>&1 > ../results/e2k/memspeed_e2k-elbrus-v3_O4.stdout_stderr.log
../bin/linux/e2k/memspeed_e2k-elbrus-v4_O2 n 2>&1 > ../results/e2k/memspeed_e2k-elbrus-v4_O2.stdout_stderr.log
../bin/linux/e2k/memspeed_e2k-elbrus-v4_ffast_O2 n 2>&1 > ../results/e2k/memspeed_e2k-elbrus-v4_ffast_O2.stdout_stderr.log
../bin/linux/e2k/memspeed_e2k-elbrus-v4_ffast_O2_elbrus-8c n 2>&1 > ../results/e2k/memspeed_e2k-elbrus-v4_ffast_O2_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/memspeed_e2k-elbrus-v4_ffast_O2_elbrus-1c+ n 2>&1 > ../results/e2k/memspeed_e2k-elbrus-v4_ffast_O2_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/memspeed_e2k-elbrus-v4_O3 n 2>&1 > ../results/e2k/memspeed_e2k-elbrus-v4_O3.stdout_stderr.log
../bin/linux/e2k/memspeed_e2k-elbrus-v4_ffast_O3 n 2>&1 > ../results/e2k/memspeed_e2k-elbrus-v4_ffast_O3.stdout_stderr.log
../bin/linux/e2k/memspeed_e2k-elbrus-v4_ffast_O3_elbrus-8c n 2>&1 > ../results/e2k/memspeed_e2k-elbrus-v4_ffast_O3_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/memspeed_e2k-elbrus-v4_ffast_O3_elbrus-1c+ n 2>&1 > ../results/e2k/memspeed_e2k-elbrus-v4_ffast_O3_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/memspeed_e2k-elbrus-v4_O4 n 2>&1 > ../results/e2k/memspeed_e2k-elbrus-v4_O4.stdout_stderr.log
../bin/linux/e2k/memspeed_e2k-elbrus-v4_ffast_O4 n 2>&1 > ../results/e2k/memspeed_e2k-elbrus-v4_ffast_O4.stdout_stderr.log
../bin/linux/e2k/memspeed_e2k-elbrus-v4_ffast_O4_elbrus-8c n 2>&1 > ../results/e2k/memspeed_e2k-elbrus-v4_ffast_O4_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/memspeed_e2k-elbrus-v4_ffast_O4_elbrus-1c+ n 2>&1 > ../results/e2k/memspeed_e2k-elbrus-v4_ffast_O4_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/memspeed_e2k-elbrus-v5_O2 n 2>&1 > ../results/e2k/memspeed_e2k-elbrus-v5_O2.stdout_stderr.log
../bin/linux/e2k/memspeed_e2k-elbrus-v5_ffast_O2 n 2>&1 > ../results/e2k/memspeed_e2k-elbrus-v5_ffast_O2.stdout_stderr.log
../bin/linux/e2k/memspeed_e2k-elbrus-v5_ffast_O2_elbrus-8c2 n 2>&1 > ../results/e2k/memspeed_e2k-elbrus-v5_ffast_O2_elbrus-8c2.stdout_stderr.log
../bin/linux/e2k/memspeed_e2k-elbrus-v5_O3 n 2>&1 > ../results/e2k/memspeed_e2k-elbrus-v5_O3.stdout_stderr.log
../bin/linux/e2k/memspeed_e2k-elbrus-v5_ffast_O3 n 2>&1 > ../results/e2k/memspeed_e2k-elbrus-v5_ffast_O3.stdout_stderr.log
../bin/linux/e2k/memspeed_e2k-elbrus-v5_ffast_O3_elbrus-8c2 n 2>&1 > ../results/e2k/memspeed_e2k-elbrus-v5_ffast_O3_elbrus-8c2.stdout_stderr.log
../bin/linux/e2k/memspeed_e2k-elbrus-v5_O4 n 2>&1 > ../results/e2k/memspeed_e2k-elbrus-v5_O4.stdout_stderr.log
../bin/linux/e2k/memspeed_e2k-elbrus-v5_ffast_O4 n 2>&1 > ../results/e2k/memspeed_e2k-elbrus-v5_ffast_O4.stdout_stderr.log
../bin/linux/e2k/memspeed_e2k-elbrus-v5_ffast_O4_elbrus-8c2 n 2>&1 > ../results/e2k/memspeed_e2k-elbrus-v5_ffast_O4_elbrus-8c2.stdout_stderr.log

echo -e "Run Linpack\n"

../bin/linux/e2k/linpack_e2k-elbrus-v3_O2 n 2>&1 > ../results/e2k/linpack_e2k-elbrus-v3_O2.stdout_stderr.log
../bin/linux/e2k/linpack_e2k-elbrus-v3_O3 n 2>&1 > ../results/e2k/linpack_e2k-elbrus-v3_O3.stdout_stderr.log
../bin/linux/e2k/linpack_e2k-elbrus-v3_O4 n 2>&1 > ../results/e2k/linpack_e2k-elbrus-v3_O4.stdout_stderr.log
../bin/linux/e2k/linpack_e2k-elbrus-v4_O2 n 2>&1 > ../results/e2k/linpack_e2k-elbrus-v4_O2.stdout_stderr.log
../bin/linux/e2k/linpack_e2k-elbrus-v4_ffast_O2 n 2>&1 > ../results/e2k/linpack_e2k-elbrus-v4_ffast_O2.stdout_stderr.log
../bin/linux/e2k/linpack_e2k-elbrus-v4_ffast_O2_elbrus-8c n 2>&1 > ../results/e2k/linpack_e2k-elbrus-v4_ffast_O2_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/linpack_e2k-elbrus-v4_ffast_O2_elbrus-1c+ n 2>&1 > ../results/e2k/linpack_e2k-elbrus-v4_ffast_O2_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/linpack_e2k-elbrus-v4_O3 n 2>&1 > ../results/e2k/linpack_e2k-elbrus-v4_O3.stdout_stderr.log
../bin/linux/e2k/linpack_e2k-elbrus-v4_ffast_O3 n 2>&1 > ../results/e2k/linpack_e2k-elbrus-v4_ffast_O3.stdout_stderr.log
../bin/linux/e2k/linpack_e2k-elbrus-v4_ffast_O3_elbrus-8c n 2>&1 > ../results/e2k/linpack_e2k-elbrus-v4_ffast_O3_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/linpack_e2k-elbrus-v4_ffast_O3_elbrus-1c+ n 2>&1 > ../results/e2k/linpack_e2k-elbrus-v4_ffast_O3_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/linpack_e2k-elbrus-v4_O4 n 2>&1 > ../results/e2k/linpack_e2k-elbrus-v4_O4.stdout_stderr.log
../bin/linux/e2k/linpack_e2k-elbrus-v4_ffast_O4 n 2>&1 > ../results/e2k/linpack_e2k-elbrus-v4_ffast_O4.stdout_stderr.log
../bin/linux/e2k/linpack_e2k-elbrus-v4_ffast_O4_elbrus-8c n 2>&1 > ../results/e2k/linpack_e2k-elbrus-v4_ffast_O4_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/linpack_e2k-elbrus-v4_ffast_O4_elbrus-1c+ n 2>&1 > ../results/e2k/linpack_e2k-elbrus-v4_ffast_O4_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/linpack_e2k-elbrus-v5_O2 n 2>&1 > ../results/e2k/linpack_e2k-elbrus-v5_O2.stdout_stderr.log
../bin/linux/e2k/linpack_e2k-elbrus-v5_ffast_O2 n 2>&1 > ../results/e2k/linpack_e2k-elbrus-v5_ffast_O2.stdout_stderr.log
../bin/linux/e2k/linpack_e2k-elbrus-v5_ffast_O2_elbrus-8c2 n 2>&1 > ../results/e2k/linpack_e2k-elbrus-v5_ffast_O2_elbrus-8c2.stdout_stderr.log
../bin/linux/e2k/linpack_e2k-elbrus-v5_O3 n 2>&1 > ../results/e2k/linpack_e2k-elbrus-v5_O3.stdout_stderr.log
../bin/linux/e2k/linpack_e2k-elbrus-v5_ffast_O3 n 2>&1 > ../results/e2k/linpack_e2k-elbrus-v5_ffast_O3.stdout_stderr.log
../bin/linux/e2k/linpack_e2k-elbrus-v5_ffast_O3_elbrus-8c2 n 2>&1 > ../results/e2k/linpack_e2k-elbrus-v5_ffast_O3_elbrus-8c2.stdout_stderr.log
../bin/linux/e2k/linpack_e2k-elbrus-v5_O4 n 2>&1 > ../results/e2k/linpack_e2k-elbrus-v5_O4.stdout_stderr.log
../bin/linux/e2k/linpack_e2k-elbrus-v5_ffast_O4 n 2>&1 > ../results/e2k/linpack_e2k-elbrus-v5_ffast_O4.stdout_stderr.log
../bin/linux/e2k/linpack_e2k-elbrus-v5_ffast_O4_elbrus-8c2 n 2>&1 > ../results/e2k/linpack_e2k-elbrus-v5_ffast_O4_elbrus-8c2.stdout_stderr.log

echo -e "Run Lloops\n"

../bin/linux/e2k/lloops_e2k-elbrus-v3_O2 n 2>&1 > ../results/e2k/lloops_e2k-elbrus-v3_O2.stdout_stderr.log
../bin/linux/e2k/lloops_e2k-elbrus-v3_O3 n 2>&1 > ../results/e2k/lloops_e2k-elbrus-v3_O3.stdout_stderr.log
../bin/linux/e2k/lloops_e2k-elbrus-v3_O4 n 2>&1 > ../results/e2k/lloops_e2k-elbrus-v3_O4.stdout_stderr.log
../bin/linux/e2k/lloops_e2k-elbrus-v4_O2 n 2>&1 > ../results/e2k/lloops_e2k-elbrus-v4_O2.stdout_stderr.log
../bin/linux/e2k/lloops_e2k-elbrus-v4_ffast_O2 n 2>&1 > ../results/e2k/lloops_e2k-elbrus-v4_ffast_O2.stdout_stderr.log
../bin/linux/e2k/lloops_e2k-elbrus-v4_ffast_O2_elbrus-8c n 2>&1 > ../results/e2k/lloops_e2k-elbrus-v4_ffast_O2_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/lloops_e2k-elbrus-v4_ffast_O2_elbrus-1c+ n 2>&1 > ../results/e2k/lloops_e2k-elbrus-v4_ffast_O2_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/lloops_e2k-elbrus-v4_O3 n 2>&1 > ../results/e2k/lloops_e2k-elbrus-v4_O3.stdout_stderr.log
../bin/linux/e2k/lloops_e2k-elbrus-v4_ffast_O3 n 2>&1 > ../results/e2k/lloops_e2k-elbrus-v4_ffast_O3.stdout_stderr.log
../bin/linux/e2k/lloops_e2k-elbrus-v4_ffast_O3_elbrus-8c n 2>&1 > ../results/e2k/lloops_e2k-elbrus-v4_ffast_O3_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/lloops_e2k-elbrus-v4_ffast_O3_elbrus-1c+ n 2>&1 > ../results/e2k/lloops_e2k-elbrus-v4_ffast_O3_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/lloops_e2k-elbrus-v4_O4 n 2>&1 > ../results/e2k/lloops_e2k-elbrus-v4_O4.stdout_stderr.log
../bin/linux/e2k/lloops_e2k-elbrus-v4_ffast_O4 n 2>&1 > ../results/e2k/lloops_e2k-elbrus-v4_ffast_O4.stdout_stderr.log
../bin/linux/e2k/lloops_e2k-elbrus-v4_ffast_O4_elbrus-8c n 2>&1 > ../results/e2k/lloops_e2k-elbrus-v4_ffast_O4_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/lloops_e2k-elbrus-v4_ffast_O4_elbrus-1c+ n 2>&1 > ../results/e2k/lloops_e2k-elbrus-v4_ffast_O4_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/lloops_e2k-elbrus-v5_O2 n 2>&1 > ../results/e2k/lloops_e2k-elbrus-v5_O2.stdout_stderr.log
../bin/linux/e2k/lloops_e2k-elbrus-v5_ffast_O2 n 2>&1 > ../results/e2k/lloops_e2k-elbrus-v5_ffast_O2.stdout_stderr.log
../bin/linux/e2k/lloops_e2k-elbrus-v5_ffast_O2_elbrus-8c2 n 2>&1 > ../results/e2k/lloops_e2k-elbrus-v5_ffast_O2_elbrus-8c2.stdout_stderr.log
../bin/linux/e2k/lloops_e2k-elbrus-v5_O3 n 2>&1 > ../results/e2k/lloops_e2k-elbrus-v5_O3.stdout_stderr.log
../bin/linux/e2k/lloops_e2k-elbrus-v5_ffast_O3 n 2>&1 > ../results/e2k/lloops_e2k-elbrus-v5_ffast_O3.stdout_stderr.log
../bin/linux/e2k/lloops_e2k-elbrus-v5_ffast_O3_elbrus-8c2 n 2>&1 > ../results/e2k/lloops_e2k-elbrus-v5_ffast_O3_elbrus-8c2.stdout_stderr.log
../bin/linux/e2k/lloops_e2k-elbrus-v5_O4 n 2>&1 > ../results/e2k/lloops_e2k-elbrus-v5_O4.stdout_stderr.log
../bin/linux/e2k/lloops_e2k-elbrus-v5_ffast_O4 n 2>&1 > ../results/e2k/lloops_e2k-elbrus-v5_ffast_O4.stdout_stderr.log
../bin/linux/e2k/lloops_e2k-elbrus-v5_ffast_O4_elbrus-8c2 n 2>&1 > ../results/e2k/lloops_e2k-elbrus-v5_ffast_O4_elbrus-8c2.stdout_stderr.log

echo -e "Run WhetstoneMP\n"

../bin/linux/e2k/whetstone_mp_e2k-elbrus-v3_O2 n 2>&1 > ../results/e2k/whetstone_mp_e2k-elbrus-v3_O2.stdout_stderr.log
../bin/linux/e2k/whetstone_mp_e2k-elbrus-v3_O3 n 2>&1 > ../results/e2k/whetstone_mp_e2k-elbrus-v3_O3.stdout_stderr.log
../bin/linux/e2k/whetstone_mp_e2k-elbrus-v3_O4 n 2>&1 > ../results/e2k/whetstone_mp_e2k-elbrus-v3_O4.stdout_stderr.log
../bin/linux/e2k/whetstone_mp_e2k-elbrus-v4_O2 n 2>&1 > ../results/e2k/whetstone_mp_e2k-elbrus-v4_O2.stdout_stderr.log
../bin/linux/e2k/whetstone_mp_e2k-elbrus-v4_ffast_O2 n 2>&1 > ../results/e2k/whetstone_mp_e2k-elbrus-v4_ffast_O2.stdout_stderr.log
../bin/linux/e2k/whetstone_mp_e2k-elbrus-v4_ffast_O2_elbrus-8c n 2>&1 > ../results/e2k/whetstone_mp_e2k-elbrus-v4_ffast_O2_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/whetstone_mp_e2k-elbrus-v4_ffast_O2_elbrus-1c+ n 2>&1 > ../results/e2k/whetstone_mp_e2k-elbrus-v4_ffast_O2_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/whetstone_mp_e2k-elbrus-v4_O3 n 2>&1 > ../results/e2k/whetstone_mp_e2k-elbrus-v4_O3.stdout_stderr.log
../bin/linux/e2k/whetstone_mp_e2k-elbrus-v4_ffast_O3 n 2>&1 > ../results/e2k/whetstone_mp_e2k-elbrus-v4_ffast_O3.stdout_stderr.log
../bin/linux/e2k/whetstone_mp_e2k-elbrus-v4_ffast_O3_elbrus-8c n 2>&1 > ../results/e2k/whetstone_mp_e2k-elbrus-v4_ffast_O3_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/whetstone_mp_e2k-elbrus-v4_ffast_O3_elbrus-1c+ n 2>&1 > ../results/e2k/whetstone_mp_e2k-elbrus-v4_ffast_O3_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/whetstone_mp_e2k-elbrus-v4_O4 n 2>&1 > ../results/e2k/whetstone_mp_e2k-elbrus-v4_O4.stdout_stderr.log
../bin/linux/e2k/whetstone_mp_e2k-elbrus-v4_ffast_O4 n 2>&1 > ../results/e2k/whetstone_mp_e2k-elbrus-v4_ffast_O4.stdout_stderr.log
../bin/linux/e2k/whetstone_mp_e2k-elbrus-v4_ffast_O4_elbrus-8c n 2>&1 > ../results/e2k/whetstone_mp_e2k-elbrus-v4_ffast_O4_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/whetstone_mp_e2k-elbrus-v4_ffast_O4_elbrus-1c+ n 2>&1 > ../results/e2k/whetstone_mp_e2k-elbrus-v4_ffast_O4_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/whetstone_mp_e2k-elbrus-v5_O2 n 2>&1 > ../results/e2k/whetstone_mp_e2k-elbrus-v5_O2.stdout_stderr.log
../bin/linux/e2k/whetstone_mp_e2k-elbrus-v5_ffast_O2 n 2>&1 > ../results/e2k/whetstone_mp_e2k-elbrus-v5_ffast_O2.stdout_stderr.log
../bin/linux/e2k/whetstone_mp_e2k-elbrus-v5_ffast_O2_elbrus-8c2 n 2>&1 > ../results/e2k/whetstone_mp_e2k-elbrus-v5_ffast_O2_elbrus-8c2.stdout_stderr.log
../bin/linux/e2k/whetstone_mp_e2k-elbrus-v5_O3 n 2>&1 > ../results/e2k/whetstone_mp_e2k-elbrus-v5_O3.stdout_stderr.log
../bin/linux/e2k/whetstone_mp_e2k-elbrus-v5_ffast_O3 n 2>&1 > ../results/e2k/whetstone_mp_e2k-elbrus-v5_ffast_O3.stdout_stderr.log
../bin/linux/e2k/whetstone_mp_e2k-elbrus-v5_ffast_O3_elbrus-8c2 n 2>&1 > ../results/e2k/whetstone_mp_e2k-elbrus-v5_ffast_O3_elbrus-8c2.stdout_stderr.log
../bin/linux/e2k/whetstone_mp_e2k-elbrus-v5_O4 n 2>&1 > ../results/e2k/whetstone_mp_e2k-elbrus-v5_O4.stdout_stderr.log
../bin/linux/e2k/whetstone_mp_e2k-elbrus-v5_ffast_O4 n 2>&1 > ../results/e2k/whetstone_mp_e2k-elbrus-v5_ffast_O4.stdout_stderr.log
../bin/linux/e2k/whetstone_mp_e2k-elbrus-v5_ffast_O4_elbrus-8c2 n 2>&1 > ../results/e2k/whetstone_mp_e2k-elbrus-v5_ffast_O4_elbrus-8c2.stdout_stderr.log

echo -e "Run MPMFlops\n"

../bin/linux/e2k/mpmflops_e2k-elbrus-v3_O2 n 2>&1 > ../results/e2k/mpmflops_e2k-elbrus-v3_O2.stdout_stderr.log
../bin/linux/e2k/mpmflops_e2k-elbrus-v3_O3 n 2>&1 > ../results/e2k/mpmflops_e2k-elbrus-v3_O3.stdout_stderr.log
../bin/linux/e2k/mpmflops_e2k-elbrus-v3_O4 n 2>&1 > ../results/e2k/mpmflops_e2k-elbrus-v3_O4.stdout_stderr.log
../bin/linux/e2k/mpmflops_e2k-elbrus-v4_O2 n 2>&1 > ../results/e2k/mpmflops_e2k-elbrus-v4_O2.stdout_stderr.log
../bin/linux/e2k/mpmflops_e2k-elbrus-v4_ffast_O2 n 2>&1 > ../results/e2k/mpmflops_e2k-elbrus-v4_ffast_O2.stdout_stderr.log
../bin/linux/e2k/mpmflops_e2k-elbrus-v4_ffast_O2_elbrus-8c n 2>&1 > ../results/e2k/mpmflops_e2k-elbrus-v4_ffast_O2_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/mpmflops_e2k-elbrus-v4_ffast_O2_elbrus-1c+ n 2>&1 > ../results/e2k/mpmflops_e2k-elbrus-v4_ffast_O2_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/mpmflops_e2k-elbrus-v4_O3 n 2>&1 > ../results/e2k/mpmflops_e2k-elbrus-v4_O3.stdout_stderr.log
../bin/linux/e2k/mpmflops_e2k-elbrus-v4_ffast_O3 n 2>&1 > ../results/e2k/mpmflops_e2k-elbrus-v4_ffast_O3.stdout_stderr.log
../bin/linux/e2k/mpmflops_e2k-elbrus-v4_ffast_O3_elbrus-8c n 2>&1 > ../results/e2k/mpmflops_e2k-elbrus-v4_ffast_O3_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/mpmflops_e2k-elbrus-v4_ffast_O3_elbrus-1c+ n 2>&1 > ../results/e2k/mpmflops_e2k-elbrus-v4_ffast_O3_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/mpmflops_e2k-elbrus-v4_O4 n 2>&1 > ../results/e2k/mpmflops_e2k-elbrus-v4_O4.stdout_stderr.log
../bin/linux/e2k/mpmflops_e2k-elbrus-v4_ffast_O4 n 2>&1 > ../results/e2k/mpmflops_e2k-elbrus-v4_ffast_O4.stdout_stderr.log
../bin/linux/e2k/mpmflops_e2k-elbrus-v4_ffast_O4_elbrus-8c n 2>&1 > ../results/e2k/mpmflops_e2k-elbrus-v4_ffast_O4_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/mpmflops_e2k-elbrus-v4_ffast_O4_elbrus-1c+ n 2>&1 > ../results/e2k/mpmflops_e2k-elbrus-v4_ffast_O4_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/mpmflops_e2k-elbrus-v5_O2 n 2>&1 > ../results/e2k/mpmflops_e2k-elbrus-v5_O2.stdout_stderr.log
../bin/linux/e2k/mpmflops_e2k-elbrus-v5_ffast_O2 n 2>&1 > ../results/e2k/mpmflops_e2k-elbrus-v5_ffast_O2.stdout_stderr.log
../bin/linux/e2k/mpmflops_e2k-elbrus-v5_ffast_O2_elbrus-8c2 n 2>&1 > ../results/e2k/mpmflops_e2k-elbrus-v5_ffast_O2_elbrus-8c2.stdout_stderr.log
../bin/linux/e2k/mpmflops_e2k-elbrus-v5_O3 n 2>&1 > ../results/e2k/mpmflops_e2k-elbrus-v5_O3.stdout_stderr.log
../bin/linux/e2k/mpmflops_e2k-elbrus-v5_ffast_O3 n 2>&1 > ../results/e2k/mpmflops_e2k-elbrus-v5_ffast_O3.stdout_stderr.log
../bin/linux/e2k/mpmflops_e2k-elbrus-v5_ffast_O3_elbrus-8c2 n 2>&1 > ../results/e2k/mpmflops_e2k-elbrus-v5_ffast_O3_elbrus-8c2.stdout_stderr.log
../bin/linux/e2k/mpmflops_e2k-elbrus-v5_O4 n 2>&1 > ../results/e2k/mpmflops_e2k-elbrus-v5_O4.stdout_stderr.log
../bin/linux/e2k/mpmflops_e2k-elbrus-v5_ffast_O4 n 2>&1 > ../results/e2k/mpmflops_e2k-elbrus-v5_ffast_O4.stdout_stderr.log
../bin/linux/e2k/mpmflops_e2k-elbrus-v5_ffast_O4_elbrus-8c2 n 2>&1 > ../results/e2k/mpmflops_e2k-elbrus-v5_ffast_O4_elbrus-8c2.stdout_stderr.log

echo -e "Run busspeedIL\n"

../bin/linux/e2k/busspeedIL_e2k-elbrus-v3_O2 n 2>&1 > ../results/e2k/busspeedIL_e2k-elbrus-v3_O2.stdout_stderr.log
../bin/linux/e2k/busspeedIL_e2k-elbrus-v3_O3 n 2>&1 > ../results/e2k/busspeedIL_e2k-elbrus-v3_O3.stdout_stderr.log
../bin/linux/e2k/busspeedIL_e2k-elbrus-v3_O4 n 2>&1 > ../results/e2k/busspeedIL_e2k-elbrus-v3_O4.stdout_stderr.log
../bin/linux/e2k/busspeedIL_e2k-elbrus-v4_O2 n 2>&1 > ../results/e2k/busspeedIL_e2k-elbrus-v4_O2.stdout_stderr.log
../bin/linux/e2k/busspeedIL_e2k-elbrus-v4_ffast_O2 n 2>&1 > ../results/e2k/busspeedIL_e2k-elbrus-v4_ffast_O2.stdout_stderr.log
../bin/linux/e2k/busspeedIL_e2k-elbrus-v4_ffast_O2_elbrus-8c n 2>&1 > ../results/e2k/busspeedIL_e2k-elbrus-v4_ffast_O2_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/busspeedIL_e2k-elbrus-v4_ffast_O2_elbrus-1c+ n 2>&1 > ../results/e2k/busspeedIL_e2k-elbrus-v4_ffast_O2_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/busspeedIL_e2k-elbrus-v4_O3 n 2>&1 > ../results/e2k/busspeedIL_e2k-elbrus-v4_O3.stdout_stderr.log
../bin/linux/e2k/busspeedIL_e2k-elbrus-v4_ffast_O3 n 2>&1 > ../results/e2k/busspeedIL_e2k-elbrus-v4_ffast_O3.stdout_stderr.log
../bin/linux/e2k/busspeedIL_e2k-elbrus-v4_ffast_O3_elbrus-8c n 2>&1 > ../results/e2k/busspeedIL_e2k-elbrus-v4_ffast_O3_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/busspeedIL_e2k-elbrus-v4_ffast_O3_elbrus-1c+ n 2>&1 > ../results/e2k/busspeedIL_e2k-elbrus-v4_ffast_O3_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/busspeedIL_e2k-elbrus-v4_O4 n 2>&1 > ../results/e2k/busspeedIL_e2k-elbrus-v4_O4.stdout_stderr.log
../bin/linux/e2k/busspeedIL_e2k-elbrus-v4_ffast_O4 n 2>&1 > ../results/e2k/busspeedIL_e2k-elbrus-v4_ffast_O4.stdout_stderr.log
../bin/linux/e2k/busspeedIL_e2k-elbrus-v4_ffast_O4_elbrus-8c n 2>&1 > ../results/e2k/busspeedIL_e2k-elbrus-v4_ffast_O4_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/busspeedIL_e2k-elbrus-v4_ffast_O4_elbrus-1c+ n 2>&1 > ../results/e2k/busspeedIL_e2k-elbrus-v4_ffast_O4_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/busspeedIL_e2k-elbrus-v5_O2 n 2>&1 > ../results/e2k/busspeedIL_e2k-elbrus-v5_O2.stdout_stderr.log
../bin/linux/e2k/busspeedIL_e2k-elbrus-v5_ffast_O2 n 2>&1 > ../results/e2k/busspeedIL_e2k-elbrus-v5_ffast_O2.stdout_stderr.log
../bin/linux/e2k/busspeedIL_e2k-elbrus-v5_ffast_O2_elbrus-8c2 n 2>&1 > ../results/e2k/busspeedIL_e2k-elbrus-v5_ffast_O2_elbrus-8c2.stdout_stderr.log
../bin/linux/e2k/busspeedIL_e2k-elbrus-v5_O3 n 2>&1 > ../results/e2k/busspeedIL_e2k-elbrus-v5_O3.stdout_stderr.log
../bin/linux/e2k/busspeedIL_e2k-elbrus-v5_ffast_O3 n 2>&1 > ../results/e2k/busspeedIL_e2k-elbrus-v5_ffast_O3.stdout_stderr.log
../bin/linux/e2k/busspeedIL_e2k-elbrus-v5_ffast_O3_elbrus-8c2 n 2>&1 > ../results/e2k/busspeedIL_e2k-elbrus-v5_ffast_O3_elbrus-8c2.stdout_stderr.log
../bin/linux/e2k/busspeedIL_e2k-elbrus-v5_O4 n 2>&1 > ../results/e2k/busspeedIL_e2k-elbrus-v5_O4.stdout_stderr.log
../bin/linux/e2k/busspeedIL_e2k-elbrus-v5_ffast_O4 n 2>&1 > ../results/e2k/busspeedIL_e2k-elbrus-v5_ffast_O4.stdout_stderr.log
../bin/linux/e2k/busspeedIL_e2k-elbrus-v5_ffast_O4_elbrus-8c2 n 2>&1 > ../results/e2k/busspeedIL_e2k-elbrus-v5_ffast_O4_elbrus-8c2.stdout_stderr.log
