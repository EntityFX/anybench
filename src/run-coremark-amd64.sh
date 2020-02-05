#!/bin/bash
mkdir "../results/"
mkdir "../results/amd64"

echo -e "Run Coremark\n"

../bin/linux/amd64/coremark_amd64-x86-64_O3 n 2>&1 > ../results/amd64/coremark_amd64-x86-64_O3.stdout_stderr.log
../bin/linux/amd64/coremark_amd64-x86-64_O4 n 2>&1 > ../results/amd64/coremark_amd64-x86-64_O4.stdout_stderr.log
../bin/linux/amd64/coremark_amd64-x86-64_Ofast n 2>&1 > ../results/amd64/coremark_amd64-x86-64_Ofast.stdout_stderr.log

echo -e "Run Coremark 2 Thread\n"

../bin/linux/amd64/coremark_mp2_amd64-x86-64_O3 n 2>&1 > ../results/amd64/coremark_mp2_amd64-x86-64_O3.stdout_stderr.log
../bin/linux/amd64/coremark_mp2_amd64-x86-64_O4 n 2>&1 > ../results/amd64/coremark_mp2_amd64-x86-64_O4.stdout_stderr.log
../bin/linux/amd64/coremark_mp2_amd64-x86-64_Ofast n 2>&1 > ../results/amd64/coremark_mp2_amd64-x86-64_Ofast.stdout_stderr.log

echo -e "Run Coremark 4 Thread\n"

../bin/linux/amd64/coremark_mp4_amd64-x86-64_O3 n 2>&1 > ../results/amd64/coremark_mp4_amd64-x86-64_O3.stdout_stderr.log
../bin/linux/amd64/coremark_mp4_amd64-x86-64_O4 n 2>&1 > ../results/amd64/coremark_mp4_amd64-x86-64_O4.stdout_stderr.log
../bin/linux/amd64/coremark_mp4_amd64-x86-64_Ofast n 2>&1 > ../results/amd64/coremark_mp4_amd64-x86-64_Ofast.stdout_stderr.log

echo -e "Run Coremark 8 Thread\n"

../bin/linux/amd64/coremark_mp8_amd64-x86-64_O3 n 2>&1 > ../results/amd64/coremark_mp8_amd64-x86-64_O3.stdout_stderr.log
../bin/linux/amd64/coremark_mp8_amd64-x86-64_O4 n 2>&1 > ../results/amd64/coremark_mp8_amd64-x86-64_O4.stdout_stderr.log
../bin/linux/amd64/coremark_mp8_amd64-x86-64_Ofast n 2>&1 > ../results/amd64/coremark_mp8_amd64-x86-64_Ofast.stdout_stderr.log
