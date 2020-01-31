#!/bin/bash
mkdir "../results/"
mkdir "../results/amd64_clang"

echo -e "Run Dhrystone v 2.1\n"

../bin/linux/amd64_clang/dhrystone_amd64_clang-__O2 n 2>&1 > ../results/amd64_clang/dhrystone_amd64_clang-__O2.stdout_stderr.log
../bin/linux/amd64_clang/dhrystone_amd64_clang-__O3 n 2>&1 > ../results/amd64_clang/dhrystone_amd64_clang-__O3.stdout_stderr.log

echo -e "Run Whetstone v 2.1\n"

../bin/linux/amd64_clang/whetstone_amd64_clang-__O2 n 2>&1 > ../results/amd64_clang/whetstone_amd64_clang-__O2.stdout_stderr.log
../bin/linux/amd64_clang/whetstone_amd64_clang-__O3 n 2>&1 > ../results/amd64_clang/whetstone_amd64_clang-__O3.stdout_stderr.log

echo -e "Run Memspeed v 2.1\n"

../bin/linux/amd64_clang/memspeed_amd64_clang-__O2 n 2>&1 > ../results/amd64_clang/memspeed_amd64_clang-__O2.stdout_stderr.log
../bin/linux/amd64_clang/memspeed_amd64_clang-__O3 n 2>&1 > ../results/amd64_clang/memspeed_amd64_clang-__O3.stdout_stderr.log

echo -e "Run Linpack v 2.1\n"

../bin/linux/amd64_clang/linpack_amd64_clang-__O2 n 2>&1 > ../results/amd64_clang/linpack_amd64_clang-__O2.stdout_stderr.log
../bin/linux/amd64_clang/linpack_amd64_clang-__O3 n 2>&1 > ../results/amd64_clang/linpack_amd64_clang-__O3.stdout_stderr.log

echo -e "Run Lloops v 2.1\n"

../bin/linux/amd64_clang/lloops_amd64_clang-__O2 n 2>&1 > ../results/amd64_clang/lloops_amd64_clang-__O2.stdout_stderr.log
../bin/linux/amd64_clang/lloops_amd64_clang-__O3 n 2>&1 > ../results/amd64_clang/lloops_amd64_clang-__O3.stdout_stderr.log

echo -e "Run WhetstoneMP v 2.1\n"

../bin/linux/amd64_clang/whetstone_mp_amd64_clang-__O2 n 2>&1 > ../results/amd64_clang/whetstone_mp_amd64_clang-__O2.stdout_stderr.log
../bin/linux/amd64_clang/whetstone_mp_amd64_clang-__O3 n 2>&1 > ../results/amd64_clang/whetstone_mp_amd64_clang-__O3.stdout_stderr.log

echo -e "Run MPMFlops v 2.1\n"

../bin/linux/amd64_clang/mpmflops_amd64_clang-__O2 n 2>&1 > ../results/amd64_clang/mpmflops_amd64_clang-__O2.stdout_stderr.log
../bin/linux/amd64_clang/mpmflops_amd64_clang-__O3 n 2>&1 > ../results/amd64_clang/mpmflops_amd64_clang-__O3.stdout_stderr.log

echo -e "Run busspeedIL\n"

../bin/linux/amd64_clang/busspeedIL_amd64_clang-__O2 n 2>&1 > ../results/amd64_clang/busspeedIL_amd64_clang-__O2.stdout_stderr.log
../bin/linux/amd64_clang/busspeedIL_amd64_clang-__O3 n 2>&1 > ../results/amd64_clang/busspeedIL_amd64_clang-__O3.stdout_stderr.log
