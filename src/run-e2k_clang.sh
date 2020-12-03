#!/bin/bash
mkdir "../results/"
mkdir "../results/e2k_clang"

echo -e "Run Dhrystone v 2.1\n"

../bin/linux/e2k_clang/dhrystone_e2k_clang-e2k_O2 n 2>&1 > ../results/e2k_clang/dhrystone_e2k_clang-e2k_O2.stdout_stderr.log
../bin/linux/e2k_clang/dhrystone_e2k_clang-e2k_O3 n 2>&1 > ../results/e2k_clang/dhrystone_e2k_clang-e2k_O3.stdout_stderr.log

echo -e "Run Whetstone\n"

../bin/linux/e2k_clang/whetstone_e2k_clang-e2k_O2 n 2>&1 > ../results/e2k_clang/whetstone_e2k_clang-e2k_O2.stdout_stderr.log
../bin/linux/e2k_clang/whetstone_e2k_clang-e2k_O3 n 2>&1 > ../results/e2k_clang/whetstone_e2k_clang-e2k_O3.stdout_stderr.log

echo -e "Run Memspeed\n"

../bin/linux/e2k_clang/memspeed_e2k_clang-e2k_O2 n 2>&1 > ../results/e2k_clang/memspeed_e2k_clang-e2k_O2.stdout_stderr.log
../bin/linux/e2k_clang/memspeed_e2k_clang-e2k_O3 n 2>&1 > ../results/e2k_clang/memspeed_e2k_clang-e2k_O3.stdout_stderr.log

echo -e "Run Linpack\n"

../bin/linux/e2k_clang/linpack_e2k_clang-e2k_O2 n 2>&1 > ../results/e2k_clang/linpack_e2k_clang-e2k_O2.stdout_stderr.log
../bin/linux/e2k_clang/linpack_e2k_clang-e2k_O3 n 2>&1 > ../results/e2k_clang/linpack_e2k_clang-e2k_O3.stdout_stderr.log

echo -e "Run Lloops\n"

../bin/linux/e2k_clang/lloops_e2k_clang-e2k_O2 n 2>&1 > ../results/e2k_clang/lloops_e2k_clang-e2k_O2.stdout_stderr.log
../bin/linux/e2k_clang/lloops_e2k_clang-e2k_O3 n 2>&1 > ../results/e2k_clang/lloops_e2k_clang-e2k_O3.stdout_stderr.log

echo -e "Run WhetstoneMP\n"

../bin/linux/e2k_clang/whetstone_mp_e2k_clang-e2k_O2 n 2>&1 > ../results/e2k_clang/whetstone_mp_e2k_clang-e2k_O2.stdout_stderr.log
../bin/linux/e2k_clang/whetstone_mp_e2k_clang-e2k_O3 n 2>&1 > ../results/e2k_clang/whetstone_mp_e2k_clang-e2k_O3.stdout_stderr.log

echo -e "Run MPMFlops\n"

../bin/linux/e2k_clang/mpmflops_e2k_clang-e2k_O2 n 2>&1 > ../results/e2k_clang/mpmflops_e2k_clang-e2k_O2.stdout_stderr.log
../bin/linux/e2k_clang/mpmflops_e2k_clang-e2k_O3 n 2>&1 > ../results/e2k_clang/mpmflops_e2k_clang-e2k_O3.stdout_stderr.log

echo -e "Run busspeedIL\n"

../bin/linux/e2k_clang/busspeedIL_e2k_clang-e2k_O2 n 2>&1 > ../results/e2k_clang/busspeedIL_e2k_clang-e2k_O2.stdout_stderr.log
../bin/linux/e2k_clang/busspeedIL_e2k_clang-e2k_O3 n 2>&1 > ../results/e2k_clang/busspeedIL_e2k_clang-e2k_O3.stdout_stderr.log
