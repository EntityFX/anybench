#!/bin/bash
mkdir "../results/"
mkdir "../results/e2k"

echo -e "Run Coremark\n"

../bin/linux/e2k/coremark_e2k-elbrus-v3_O2 n 2>&1 > ../results/e2k/coremark_e2k-elbrus-v3_O2.stdout_stderr.log
../bin/linux/e2k/coremark_e2k-elbrus-v3_O3 n 2>&1 > ../results/e2k/coremark_e2k-elbrus-v3_O3.stdout_stderr.log
../bin/linux/e2k/coremark_e2k-elbrus-v3_O4 n 2>&1 > ../results/e2k/coremark_e2k-elbrus-v3_O4.stdout_stderr.log
../bin/linux/e2k/coremark_e2k-elbrus-v4_O2 n 2>&1 > ../results/e2k/coremark_e2k-elbrus-v4_O2.stdout_stderr.log
../bin/linux/e2k/coremark_e2k-elbrus-v4_ffast_O2 n 2>&1 > ../results/e2k/coremark_e2k-elbrus-v4_ffast_O2.stdout_stderr.log
../bin/linux/e2k/coremark_e2k-elbrus-v4_ffast_O2_elbrus-8c n 2>&1 > ../results/e2k/coremark_e2k-elbrus-v4_ffast_O2_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/coremark_e2k-elbrus-v4_ffast_O2_elbrus-1c+ n 2>&1 > ../results/e2k/coremark_e2k-elbrus-v4_ffast_O2_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/coremark_e2k-elbrus-v4_O3 n 2>&1 > ../results/e2k/coremark_e2k-elbrus-v4_O3.stdout_stderr.log
../bin/linux/e2k/coremark_e2k-elbrus-v4_ffast_O3 n 2>&1 > ../results/e2k/coremark_e2k-elbrus-v4_ffast_O3.stdout_stderr.log
../bin/linux/e2k/coremark_e2k-elbrus-v4_ffast_O3_elbrus-8c n 2>&1 > ../results/e2k/coremark_e2k-elbrus-v4_ffast_O3_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/coremark_e2k-elbrus-v4_ffast_O3_elbrus-1c+ n 2>&1 > ../results/e2k/coremark_e2k-elbrus-v4_ffast_O3_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/coremark_e2k-elbrus-v4_O4 n 2>&1 > ../results/e2k/coremark_e2k-elbrus-v4_O4.stdout_stderr.log
../bin/linux/e2k/coremark_e2k-elbrus-v4_ffast_O4 n 2>&1 > ../results/e2k/coremark_e2k-elbrus-v4_ffast_O4.stdout_stderr.log
../bin/linux/e2k/coremark_e2k-elbrus-v4_ffast_O4_elbrus-8c n 2>&1 > ../results/e2k/coremark_e2k-elbrus-v4_ffast_O4_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/coremark_e2k-elbrus-v4_ffast_O4_elbrus-1c+ n 2>&1 > ../results/e2k/coremark_e2k-elbrus-v4_ffast_O4_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/coremark_e2k-elbrus-v5_O2 n 2>&1 > ../results/e2k/coremark_e2k-elbrus-v5_O2.stdout_stderr.log
../bin/linux/e2k/coremark_e2k-elbrus-v5_ffast_O2 n 2>&1 > ../results/e2k/coremark_e2k-elbrus-v5_ffast_O2.stdout_stderr.log
../bin/linux/e2k/coremark_e2k-elbrus-v5_ffast_O2_elbrus-8c2 n 2>&1 > ../results/e2k/coremark_e2k-elbrus-v5_ffast_O2_elbrus-8c2.stdout_stderr.log
../bin/linux/e2k/coremark_e2k-elbrus-v5_O3 n 2>&1 > ../results/e2k/coremark_e2k-elbrus-v5_O3.stdout_stderr.log
../bin/linux/e2k/coremark_e2k-elbrus-v5_ffast_O3 n 2>&1 > ../results/e2k/coremark_e2k-elbrus-v5_ffast_O3.stdout_stderr.log
../bin/linux/e2k/coremark_e2k-elbrus-v5_ffast_O3_elbrus-8c2 n 2>&1 > ../results/e2k/coremark_e2k-elbrus-v5_ffast_O3_elbrus-8c2.stdout_stderr.log
../bin/linux/e2k/coremark_e2k-elbrus-v5_O4 n 2>&1 > ../results/e2k/coremark_e2k-elbrus-v5_O4.stdout_stderr.log
../bin/linux/e2k/coremark_e2k-elbrus-v5_ffast_O4 n 2>&1 > ../results/e2k/coremark_e2k-elbrus-v5_ffast_O4.stdout_stderr.log
../bin/linux/e2k/coremark_e2k-elbrus-v5_ffast_O4_elbrus-8c2 n 2>&1 > ../results/e2k/coremark_e2k-elbrus-v5_ffast_O4_elbrus-8c2.stdout_stderr.log

echo -e "Run Coremark 2 Thread\n"

../bin/linux/e2k/coremark_mp2_e2k-elbrus-v3_O2 n 2>&1 > ../results/e2k/coremark_mp2_e2k-elbrus-v3_O2.stdout_stderr.log
../bin/linux/e2k/coremark_mp2_e2k-elbrus-v3_O3 n 2>&1 > ../results/e2k/coremark_mp2_e2k-elbrus-v3_O3.stdout_stderr.log
../bin/linux/e2k/coremark_mp2_e2k-elbrus-v3_O4 n 2>&1 > ../results/e2k/coremark_mp2_e2k-elbrus-v3_O4.stdout_stderr.log
../bin/linux/e2k/coremark_mp2_e2k-elbrus-v4_O2 n 2>&1 > ../results/e2k/coremark_mp2_e2k-elbrus-v4_O2.stdout_stderr.log
../bin/linux/e2k/coremark_mp2_e2k-elbrus-v4_ffast_O2 n 2>&1 > ../results/e2k/coremark_mp2_e2k-elbrus-v4_ffast_O2.stdout_stderr.log
../bin/linux/e2k/coremark_mp2_e2k-elbrus-v4_ffast_O2_elbrus-8c n 2>&1 > ../results/e2k/coremark_mp2_e2k-elbrus-v4_ffast_O2_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/coremark_mp2_e2k-elbrus-v4_ffast_O2_elbrus-1c+ n 2>&1 > ../results/e2k/coremark_mp2_e2k-elbrus-v4_ffast_O2_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/coremark_mp2_e2k-elbrus-v4_O3 n 2>&1 > ../results/e2k/coremark_mp2_e2k-elbrus-v4_O3.stdout_stderr.log
../bin/linux/e2k/coremark_mp2_e2k-elbrus-v4_ffast_O3 n 2>&1 > ../results/e2k/coremark_mp2_e2k-elbrus-v4_ffast_O3.stdout_stderr.log
../bin/linux/e2k/coremark_mp2_e2k-elbrus-v4_ffast_O3_elbrus-8c n 2>&1 > ../results/e2k/coremark_mp2_e2k-elbrus-v4_ffast_O3_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/coremark_mp2_e2k-elbrus-v4_ffast_O3_elbrus-1c+ n 2>&1 > ../results/e2k/coremark_mp2_e2k-elbrus-v4_ffast_O3_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/coremark_mp2_e2k-elbrus-v4_O4 n 2>&1 > ../results/e2k/coremark_mp2_e2k-elbrus-v4_O4.stdout_stderr.log
../bin/linux/e2k/coremark_mp2_e2k-elbrus-v4_ffast_O4 n 2>&1 > ../results/e2k/coremark_mp2_e2k-elbrus-v4_ffast_O4.stdout_stderr.log
../bin/linux/e2k/coremark_mp2_e2k-elbrus-v4_ffast_O4_elbrus-8c n 2>&1 > ../results/e2k/coremark_mp2_e2k-elbrus-v4_ffast_O4_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/coremark_mp2_e2k-elbrus-v4_ffast_O4_elbrus-1c+ n 2>&1 > ../results/e2k/coremark_mp2_e2k-elbrus-v4_ffast_O4_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/coremark_mp2_e2k-elbrus-v5_O2 n 2>&1 > ../results/e2k/coremark_mp2_e2k-elbrus-v5_O2.stdout_stderr.log
../bin/linux/e2k/coremark_mp2_e2k-elbrus-v5_ffast_O2 n 2>&1 > ../results/e2k/coremark_mp2_e2k-elbrus-v5_ffast_O2.stdout_stderr.log
../bin/linux/e2k/coremark_mp2_e2k-elbrus-v5_ffast_O2_elbrus-8c2 n 2>&1 > ../results/e2k/coremark_mp2_e2k-elbrus-v5_ffast_O2_elbrus-8c2.stdout_stderr.log
../bin/linux/e2k/coremark_mp2_e2k-elbrus-v5_O3 n 2>&1 > ../results/e2k/coremark_mp2_e2k-elbrus-v5_O3.stdout_stderr.log
../bin/linux/e2k/coremark_mp2_e2k-elbrus-v5_ffast_O3 n 2>&1 > ../results/e2k/coremark_mp2_e2k-elbrus-v5_ffast_O3.stdout_stderr.log
../bin/linux/e2k/coremark_mp2_e2k-elbrus-v5_ffast_O3_elbrus-8c2 n 2>&1 > ../results/e2k/coremark_mp2_e2k-elbrus-v5_ffast_O3_elbrus-8c2.stdout_stderr.log
../bin/linux/e2k/coremark_mp2_e2k-elbrus-v5_O4 n 2>&1 > ../results/e2k/coremark_mp2_e2k-elbrus-v5_O4.stdout_stderr.log
../bin/linux/e2k/coremark_mp2_e2k-elbrus-v5_ffast_O4 n 2>&1 > ../results/e2k/coremark_mp2_e2k-elbrus-v5_ffast_O4.stdout_stderr.log
../bin/linux/e2k/coremark_mp2_e2k-elbrus-v5_ffast_O4_elbrus-8c2 n 2>&1 > ../results/e2k/coremark_mp2_e2k-elbrus-v5_ffast_O4_elbrus-8c2.stdout_stderr.log

echo -e "Run Coremark 4 Thread\n"

../bin/linux/e2k/coremark_mp4_e2k-elbrus-v3_O2 n 2>&1 > ../results/e2k/coremark_mp4_e2k-elbrus-v3_O2.stdout_stderr.log
../bin/linux/e2k/coremark_mp4_e2k-elbrus-v3_O3 n 2>&1 > ../results/e2k/coremark_mp4_e2k-elbrus-v3_O3.stdout_stderr.log
../bin/linux/e2k/coremark_mp4_e2k-elbrus-v3_O4 n 2>&1 > ../results/e2k/coremark_mp4_e2k-elbrus-v3_O4.stdout_stderr.log
../bin/linux/e2k/coremark_mp4_e2k-elbrus-v4_O2 n 2>&1 > ../results/e2k/coremark_mp4_e2k-elbrus-v4_O2.stdout_stderr.log
../bin/linux/e2k/coremark_mp4_e2k-elbrus-v4_ffast_O2 n 2>&1 > ../results/e2k/coremark_mp4_e2k-elbrus-v4_ffast_O2.stdout_stderr.log
../bin/linux/e2k/coremark_mp4_e2k-elbrus-v4_ffast_O2_elbrus-8c n 2>&1 > ../results/e2k/coremark_mp4_e2k-elbrus-v4_ffast_O2_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/coremark_mp4_e2k-elbrus-v4_ffast_O2_elbrus-1c+ n 2>&1 > ../results/e2k/coremark_mp4_e2k-elbrus-v4_ffast_O2_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/coremark_mp4_e2k-elbrus-v4_O3 n 2>&1 > ../results/e2k/coremark_mp4_e2k-elbrus-v4_O3.stdout_stderr.log
../bin/linux/e2k/coremark_mp4_e2k-elbrus-v4_ffast_O3 n 2>&1 > ../results/e2k/coremark_mp4_e2k-elbrus-v4_ffast_O3.stdout_stderr.log
../bin/linux/e2k/coremark_mp4_e2k-elbrus-v4_ffast_O3_elbrus-8c n 2>&1 > ../results/e2k/coremark_mp4_e2k-elbrus-v4_ffast_O3_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/coremark_mp4_e2k-elbrus-v4_ffast_O3_elbrus-1c+ n 2>&1 > ../results/e2k/coremark_mp4_e2k-elbrus-v4_ffast_O3_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/coremark_mp4_e2k-elbrus-v4_O4 n 2>&1 > ../results/e2k/coremark_mp4_e2k-elbrus-v4_O4.stdout_stderr.log
../bin/linux/e2k/coremark_mp4_e2k-elbrus-v4_ffast_O4 n 2>&1 > ../results/e2k/coremark_mp4_e2k-elbrus-v4_ffast_O4.stdout_stderr.log
../bin/linux/e2k/coremark_mp4_e2k-elbrus-v4_ffast_O4_elbrus-8c n 2>&1 > ../results/e2k/coremark_mp4_e2k-elbrus-v4_ffast_O4_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/coremark_mp4_e2k-elbrus-v4_ffast_O4_elbrus-1c+ n 2>&1 > ../results/e2k/coremark_mp4_e2k-elbrus-v4_ffast_O4_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/coremark_mp4_e2k-elbrus-v5_O2 n 2>&1 > ../results/e2k/coremark_mp4_e2k-elbrus-v5_O2.stdout_stderr.log
../bin/linux/e2k/coremark_mp4_e2k-elbrus-v5_ffast_O2 n 2>&1 > ../results/e2k/coremark_mp4_e2k-elbrus-v5_ffast_O2.stdout_stderr.log
../bin/linux/e2k/coremark_mp4_e2k-elbrus-v5_ffast_O2_elbrus-8c2 n 2>&1 > ../results/e2k/coremark_mp4_e2k-elbrus-v5_ffast_O2_elbrus-8c2.stdout_stderr.log
../bin/linux/e2k/coremark_mp4_e2k-elbrus-v5_O3 n 2>&1 > ../results/e2k/coremark_mp4_e2k-elbrus-v5_O3.stdout_stderr.log
../bin/linux/e2k/coremark_mp4_e2k-elbrus-v5_ffast_O3 n 2>&1 > ../results/e2k/coremark_mp4_e2k-elbrus-v5_ffast_O3.stdout_stderr.log
../bin/linux/e2k/coremark_mp4_e2k-elbrus-v5_ffast_O3_elbrus-8c2 n 2>&1 > ../results/e2k/coremark_mp4_e2k-elbrus-v5_ffast_O3_elbrus-8c2.stdout_stderr.log
../bin/linux/e2k/coremark_mp4_e2k-elbrus-v5_O4 n 2>&1 > ../results/e2k/coremark_mp4_e2k-elbrus-v5_O4.stdout_stderr.log
../bin/linux/e2k/coremark_mp4_e2k-elbrus-v5_ffast_O4 n 2>&1 > ../results/e2k/coremark_mp4_e2k-elbrus-v5_ffast_O4.stdout_stderr.log
../bin/linux/e2k/coremark_mp4_e2k-elbrus-v5_ffast_O4_elbrus-8c2 n 2>&1 > ../results/e2k/coremark_mp4_e2k-elbrus-v5_ffast_O4_elbrus-8c2.stdout_stderr.log

echo -e "Run Coremark 8 Thread\n"

../bin/linux/e2k/coremark_mp8_e2k-elbrus-v3_O2 n 2>&1 > ../results/e2k/coremark_mp8_e2k-elbrus-v3_O2.stdout_stderr.log
../bin/linux/e2k/coremark_mp8_e2k-elbrus-v3_O3 n 2>&1 > ../results/e2k/coremark_mp8_e2k-elbrus-v3_O3.stdout_stderr.log
../bin/linux/e2k/coremark_mp8_e2k-elbrus-v3_O4 n 2>&1 > ../results/e2k/coremark_mp8_e2k-elbrus-v3_O4.stdout_stderr.log
../bin/linux/e2k/coremark_mp8_e2k-elbrus-v4_O2 n 2>&1 > ../results/e2k/coremark_mp8_e2k-elbrus-v4_O2.stdout_stderr.log
../bin/linux/e2k/coremark_mp8_e2k-elbrus-v4_ffast_O2 n 2>&1 > ../results/e2k/coremark_mp8_e2k-elbrus-v4_ffast_O2.stdout_stderr.log
../bin/linux/e2k/coremark_mp8_e2k-elbrus-v4_ffast_O2_elbrus-8c n 2>&1 > ../results/e2k/coremark_mp8_e2k-elbrus-v4_ffast_O2_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/coremark_mp8_e2k-elbrus-v4_ffast_O2_elbrus-1c+ n 2>&1 > ../results/e2k/coremark_mp8_e2k-elbrus-v4_ffast_O2_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/coremark_mp8_e2k-elbrus-v4_O3 n 2>&1 > ../results/e2k/coremark_mp8_e2k-elbrus-v4_O3.stdout_stderr.log
../bin/linux/e2k/coremark_mp8_e2k-elbrus-v4_ffast_O3 n 2>&1 > ../results/e2k/coremark_mp8_e2k-elbrus-v4_ffast_O3.stdout_stderr.log
../bin/linux/e2k/coremark_mp8_e2k-elbrus-v4_ffast_O3_elbrus-8c n 2>&1 > ../results/e2k/coremark_mp8_e2k-elbrus-v4_ffast_O3_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/coremark_mp8_e2k-elbrus-v4_ffast_O3_elbrus-1c+ n 2>&1 > ../results/e2k/coremark_mp8_e2k-elbrus-v4_ffast_O3_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/coremark_mp8_e2k-elbrus-v4_O4 n 2>&1 > ../results/e2k/coremark_mp8_e2k-elbrus-v4_O4.stdout_stderr.log
../bin/linux/e2k/coremark_mp8_e2k-elbrus-v4_ffast_O4 n 2>&1 > ../results/e2k/coremark_mp8_e2k-elbrus-v4_ffast_O4.stdout_stderr.log
../bin/linux/e2k/coremark_mp8_e2k-elbrus-v4_ffast_O4_elbrus-8c n 2>&1 > ../results/e2k/coremark_mp8_e2k-elbrus-v4_ffast_O4_elbrus-8c.stdout_stderr.log
../bin/linux/e2k/coremark_mp8_e2k-elbrus-v4_ffast_O4_elbrus-1c+ n 2>&1 > ../results/e2k/coremark_mp8_e2k-elbrus-v4_ffast_O4_elbrus-1c+.stdout_stderr.log
../bin/linux/e2k/coremark_mp8_e2k-elbrus-v5_O2 n 2>&1 > ../results/e2k/coremark_mp8_e2k-elbrus-v5_O2.stdout_stderr.log
../bin/linux/e2k/coremark_mp8_e2k-elbrus-v5_ffast_O2 n 2>&1 > ../results/e2k/coremark_mp8_e2k-elbrus-v5_ffast_O2.stdout_stderr.log
../bin/linux/e2k/coremark_mp8_e2k-elbrus-v5_ffast_O2_elbrus-8c2 n 2>&1 > ../results/e2k/coremark_mp8_e2k-elbrus-v5_ffast_O2_elbrus-8c2.stdout_stderr.log
../bin/linux/e2k/coremark_mp8_e2k-elbrus-v5_O3 n 2>&1 > ../results/e2k/coremark_mp8_e2k-elbrus-v5_O3.stdout_stderr.log
../bin/linux/e2k/coremark_mp8_e2k-elbrus-v5_ffast_O3 n 2>&1 > ../results/e2k/coremark_mp8_e2k-elbrus-v5_ffast_O3.stdout_stderr.log
../bin/linux/e2k/coremark_mp8_e2k-elbrus-v5_ffast_O3_elbrus-8c2 n 2>&1 > ../results/e2k/coremark_mp8_e2k-elbrus-v5_ffast_O3_elbrus-8c2.stdout_stderr.log
../bin/linux/e2k/coremark_mp8_e2k-elbrus-v5_O4 n 2>&1 > ../results/e2k/coremark_mp8_e2k-elbrus-v5_O4.stdout_stderr.log
../bin/linux/e2k/coremark_mp8_e2k-elbrus-v5_ffast_O4 n 2>&1 > ../results/e2k/coremark_mp8_e2k-elbrus-v5_ffast_O4.stdout_stderr.log
../bin/linux/e2k/coremark_mp8_e2k-elbrus-v5_ffast_O4_elbrus-8c2 n 2>&1 > ../results/e2k/coremark_mp8_e2k-elbrus-v5_ffast_O4_elbrus-8c2.stdout_stderr.log
