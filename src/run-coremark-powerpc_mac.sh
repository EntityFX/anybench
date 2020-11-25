#!/bin/bash
mkdir "../results/"
mkdir "../results/powerpc_mac"

echo -e "Run Coremark\n"

../bin/mac/powerpc_mac/coremark_powerpc_mac-powerpc_O2 n 2>&1 > ../results/powerpc_mac/coremark_powerpc_mac-powerpc_O2.stdout_stderr.log
../bin/mac/powerpc_mac/coremark_powerpc_mac-powerpc_O3 n 2>&1 > ../results/powerpc_mac/coremark_powerpc_mac-powerpc_O3.stdout_stderr.log

echo -e "Run Coremark 2 Thread\n"

../bin/mac/powerpc_mac/coremark_mp2_powerpc_mac-powerpc_O2 n 2>&1 > ../results/powerpc_mac/coremark_mp2_powerpc_mac-powerpc_O2.stdout_stderr.log
../bin/mac/powerpc_mac/coremark_mp2_powerpc_mac-powerpc_O3 n 2>&1 > ../results/powerpc_mac/coremark_mp2_powerpc_mac-powerpc_O3.stdout_stderr.log

echo -e "Run Coremark 4 Thread\n"

../bin/mac/powerpc_mac/coremark_mp4_powerpc_mac-powerpc_O2 n 2>&1 > ../results/powerpc_mac/coremark_mp4_powerpc_mac-powerpc_O2.stdout_stderr.log
../bin/mac/powerpc_mac/coremark_mp4_powerpc_mac-powerpc_O3 n 2>&1 > ../results/powerpc_mac/coremark_mp4_powerpc_mac-powerpc_O3.stdout_stderr.log

echo -e "Run Coremark 8 Thread\n"

../bin/mac/powerpc_mac/coremark_mp8_powerpc_mac-powerpc_O2 n 2>&1 > ../results/powerpc_mac/coremark_mp8_powerpc_mac-powerpc_O2.stdout_stderr.log
../bin/mac/powerpc_mac/coremark_mp8_powerpc_mac-powerpc_O3 n 2>&1 > ../results/powerpc_mac/coremark_mp8_powerpc_mac-powerpc_O3.stdout_stderr.log
