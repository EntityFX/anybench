#!/bin/bash
mkdir "../results/"
mkdir "../results/e2k"

echo -e "Run Scimark2\n"

../bin/linux/e2k/scimark2_e2k-elbrus-v3_O2 2>&1 > ../results/e2k/scimark2_e2k-elbrus-v3_O2.stdout_stderr.log
../bin/linux/e2k/scimark2_e2k-elbrus-v3_O3 2>&1 > ../results/e2k/scimark2_e2k-elbrus-v3_O3.stdout_stderr.log
../bin/linux/e2k/scimark2_e2k-elbrus-v3_O4 2>&1 > ../results/e2k/scimark2_e2k-elbrus-v3_O4.stdout_stderr.log
../bin/linux/e2k/scimark2_e2k-elbrus-v4_O2 2>&1 > ../results/e2k/scimark2_e2k-elbrus-v4_O2.stdout_stderr.log
../bin/linux/e2k/scimark2_e2k-elbrus-v4_ffast_O2 2>&1 > ../results/e2k/scimark2_e2k-elbrus-v4_ffast_O2.stdout_stderr.log
../bin/linux/e2k/scimark2_e2k-elbrus-v4_ffast_O2_elbrus-8c 2>&1 > ../results/e2k/scimark2_e2k-elbrus-v4_ffast_O2_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/scimark2_e2k-elbrus-v4_ffast_O2_elbrus-1c+ 2>&1 > ../results/e2k/scimark2_e2k-elbrus-v4_ffast_O2_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/scimark2_e2k-elbrus-v4_O3 2>&1 > ../results/e2k/scimark2_e2k-elbrus-v4_O3.stdout_stderr.log
../bin/linux/e2k/scimark2_e2k-elbrus-v4_ffast_O3 2>&1 > ../results/e2k/scimark2_e2k-elbrus-v4_ffast_O3.stdout_stderr.log
../bin/linux/e2k/scimark2_e2k-elbrus-v4_ffast_O3_elbrus-8c 2>&1 > ../results/e2k/scimark2_e2k-elbrus-v4_ffast_O3_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/scimark2_e2k-elbrus-v4_ffast_O3_elbrus-1c+ 2>&1 > ../results/e2k/scimark2_e2k-elbrus-v4_ffast_O3_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/scimark2_e2k-elbrus-v4_O4 2>&1 > ../results/e2k/scimark2_e2k-elbrus-v4_O4.stdout_stderr.log
../bin/linux/e2k/scimark2_e2k-elbrus-v4_ffast_O4 2>&1 > ../results/e2k/scimark2_e2k-elbrus-v4_ffast_O4.stdout_stderr.log
../bin/linux/e2k/scimark2_e2k-elbrus-v4_ffast_O4_elbrus-8c 2>&1 > ../results/e2k/scimark2_e2k-elbrus-v4_ffast_O4_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/scimark2_e2k-elbrus-v4_ffast_O4_elbrus-1c+ 2>&1 > ../results/e2k/scimark2_e2k-elbrus-v4_ffast_O4_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/scimark2_e2k-elbrus-v5_O2 2>&1 > ../results/e2k/scimark2_e2k-elbrus-v5_O2.stdout_stderr.log
../bin/linux/e2k/scimark2_e2k-elbrus-v5_ffast_O2 2>&1 > ../results/e2k/scimark2_e2k-elbrus-v5_ffast_O2.stdout_stderr.log
../bin/linux/e2k/scimark2_e2k-elbrus-v5_ffast_O2_elbrus-8c2 2>&1 > ../results/e2k/scimark2_e2k-elbrus-v5_ffast_O2_elbrus-8c2.stdout_stderr.log
../bin/linux/e2k/scimark2_e2k-elbrus-v5_O3 2>&1 > ../results/e2k/scimark2_e2k-elbrus-v5_O3.stdout_stderr.log
../bin/linux/e2k/scimark2_e2k-elbrus-v5_ffast_O3 2>&1 > ../results/e2k/scimark2_e2k-elbrus-v5_ffast_O3.stdout_stderr.log
../bin/linux/e2k/scimark2_e2k-elbrus-v5_ffast_O3_elbrus-8c2 2>&1 > ../results/e2k/scimark2_e2k-elbrus-v5_ffast_O3_elbrus-8c2.stdout_stderr.log
../bin/linux/e2k/scimark2_e2k-elbrus-v5_O4 2>&1 > ../results/e2k/scimark2_e2k-elbrus-v5_O4.stdout_stderr.log
../bin/linux/e2k/scimark2_e2k-elbrus-v5_ffast_O4 2>&1 > ../results/e2k/scimark2_e2k-elbrus-v5_ffast_O4.stdout_stderr.log
../bin/linux/e2k/scimark2_e2k-elbrus-v5_ffast_O4_elbrus-8c2 2>&1 > ../results/e2k/scimark2_e2k-elbrus-v5_ffast_O4_elbrus-8c2.stdout_stderr.log
