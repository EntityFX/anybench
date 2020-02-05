#!/bin/bash
mkdir "../results/"
mkdir "../results/amd64_clang"

echo -e "Run Coremark\n"

../bin/linux/amd64_clang/coremark_amd64_clang-__O2 n 2>&1 > ../results/amd64_clang/coremark_amd64_clang-__O2.stdout_stderr.log
../bin/linux/amd64_clang/coremark_amd64_clang-__O3 n 2>&1 > ../results/amd64_clang/coremark_amd64_clang-__O3.stdout_stderr.log

echo -e "Run Coremark 2 Thread\n"

../bin/linux/amd64_clang/coremark_mp2_amd64_clang-__O2 n 2>&1 > ../results/amd64_clang/coremark_mp2_amd64_clang-__O2.stdout_stderr.log
../bin/linux/amd64_clang/coremark_mp2_amd64_clang-__O3 n 2>&1 > ../results/amd64_clang/coremark_mp2_amd64_clang-__O3.stdout_stderr.log

echo -e "Run Coremark 4 Thread\n"

../bin/linux/amd64_clang/coremark_mp4_amd64_clang-__O2 n 2>&1 > ../results/amd64_clang/coremark_mp4_amd64_clang-__O2.stdout_stderr.log
../bin/linux/amd64_clang/coremark_mp4_amd64_clang-__O3 n 2>&1 > ../results/amd64_clang/coremark_mp4_amd64_clang-__O3.stdout_stderr.log

echo -e "Run Coremark 8 Thread\n"

../bin/linux/amd64_clang/coremark_mp8_amd64_clang-__O2 n 2>&1 > ../results/amd64_clang/coremark_mp8_amd64_clang-__O2.stdout_stderr.log
../bin/linux/amd64_clang/coremark_mp8_amd64_clang-__O3 n 2>&1 > ../results/amd64_clang/coremark_mp8_amd64_clang-__O3.stdout_stderr.log
