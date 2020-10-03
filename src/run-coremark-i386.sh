#!/bin/bash
mkdir "../results/"
mkdir "../results/i386"

echo -e "Run Coremark\n"

../bin/linux/i386/coremark_i386-i386_O2 n 2>&1 > ../results/i386/coremark_i386-i386_O2.stdout_stderr.log
../bin/linux/i386/coremark_i386-i386_O3 n 2>&1 > ../results/i386/coremark_i386-i386_O3.stdout_stderr.log
../bin/linux/i386/coremark_i386-i686_O2 n 2>&1 > ../results/i386/coremark_i386-i686_O2.stdout_stderr.log
../bin/linux/i386/coremark_i386-i686_O3 n 2>&1 > ../results/i386/coremark_i386-i686_O3.stdout_stderr.log

echo -e "Run Coremark 2 Thread\n"

../bin/linux/i386/coremark_mp2_i386-i386_O2 n 2>&1 > ../results/i386/coremark_mp2_i386-i386_O2.stdout_stderr.log
../bin/linux/i386/coremark_mp2_i386-i386_O3 n 2>&1 > ../results/i386/coremark_mp2_i386-i386_O3.stdout_stderr.log
../bin/linux/i386/coremark_mp2_i386-i686_O2 n 2>&1 > ../results/i386/coremark_mp2_i386-i686_O2.stdout_stderr.log
../bin/linux/i386/coremark_mp2_i386-i686_O3 n 2>&1 > ../results/i386/coremark_mp2_i386-i686_O3.stdout_stderr.log

echo -e "Run Coremark 4 Thread\n"

../bin/linux/i386/coremark_mp4_i386-i386_O2 n 2>&1 > ../results/i386/coremark_mp4_i386-i386_O2.stdout_stderr.log
../bin/linux/i386/coremark_mp4_i386-i386_O3 n 2>&1 > ../results/i386/coremark_mp4_i386-i386_O3.stdout_stderr.log
../bin/linux/i386/coremark_mp4_i386-i686_O2 n 2>&1 > ../results/i386/coremark_mp4_i386-i686_O2.stdout_stderr.log
../bin/linux/i386/coremark_mp4_i386-i686_O3 n 2>&1 > ../results/i386/coremark_mp4_i386-i686_O3.stdout_stderr.log

echo -e "Run Coremark 8 Thread\n"

../bin/linux/i386/coremark_mp8_i386-i386_O2 n 2>&1 > ../results/i386/coremark_mp8_i386-i386_O2.stdout_stderr.log
../bin/linux/i386/coremark_mp8_i386-i386_O3 n 2>&1 > ../results/i386/coremark_mp8_i386-i386_O3.stdout_stderr.log
../bin/linux/i386/coremark_mp8_i386-i686_O2 n 2>&1 > ../results/i386/coremark_mp8_i386-i686_O2.stdout_stderr.log
../bin/linux/i386/coremark_mp8_i386-i686_O3 n 2>&1 > ../results/i386/coremark_mp8_i386-i686_O3.stdout_stderr.log
