#!/bin/bash
mkdir "../results/"
mkdir "../results/mips32"

echo -e "Run Coremark\n"

../bin/linux/mips32/coremark_mips32-native_O2 n 2>&1 > ../results/mips32/coremark_mips32-native_O2.stdout_stderr.log
../bin/linux/mips32/coremark_mips32-native_O3 n 2>&1 > ../results/mips32/coremark_mips32-native_O3.stdout_stderr.log
../bin/linux/mips32/coremark_mips32-74kc_O2 n 2>&1 > ../results/mips32/coremark_mips32-74kc_O2.stdout_stderr.log
../bin/linux/mips32/coremark_mips32-74kc_O3 n 2>&1 > ../results/mips32/coremark_mips32-74kc_O3.stdout_stderr.log

echo -e "Run Coremark 2 Thread\n"

../bin/linux/mips32/coremark_mp2_mips32-native_O2 n 2>&1 > ../results/mips32/coremark_mp2_mips32-native_O2.stdout_stderr.log
../bin/linux/mips32/coremark_mp2_mips32-native_O3 n 2>&1 > ../results/mips32/coremark_mp2_mips32-native_O3.stdout_stderr.log
../bin/linux/mips32/coremark_mp2_mips32-74kc_O2 n 2>&1 > ../results/mips32/coremark_mp2_mips32-74kc_O2.stdout_stderr.log
../bin/linux/mips32/coremark_mp2_mips32-74kc_O3 n 2>&1 > ../results/mips32/coremark_mp2_mips32-74kc_O3.stdout_stderr.log

echo -e "Run Coremark 4 Thread\n"

../bin/linux/mips32/coremark_mp4_mips32-native_O2 n 2>&1 > ../results/mips32/coremark_mp4_mips32-native_O2.stdout_stderr.log
../bin/linux/mips32/coremark_mp4_mips32-native_O3 n 2>&1 > ../results/mips32/coremark_mp4_mips32-native_O3.stdout_stderr.log
../bin/linux/mips32/coremark_mp4_mips32-74kc_O2 n 2>&1 > ../results/mips32/coremark_mp4_mips32-74kc_O2.stdout_stderr.log
../bin/linux/mips32/coremark_mp4_mips32-74kc_O3 n 2>&1 > ../results/mips32/coremark_mp4_mips32-74kc_O3.stdout_stderr.log

echo -e "Run Coremark 8 Thread\n"

../bin/linux/mips32/coremark_mp8_mips32-native_O2 n 2>&1 > ../results/mips32/coremark_mp8_mips32-native_O2.stdout_stderr.log
../bin/linux/mips32/coremark_mp8_mips32-native_O3 n 2>&1 > ../results/mips32/coremark_mp8_mips32-native_O3.stdout_stderr.log
../bin/linux/mips32/coremark_mp8_mips32-74kc_O2 n 2>&1 > ../results/mips32/coremark_mp8_mips32-74kc_O2.stdout_stderr.log
../bin/linux/mips32/coremark_mp8_mips32-74kc_O3 n 2>&1 > ../results/mips32/coremark_mp8_mips32-74kc_O3.stdout_stderr.log
