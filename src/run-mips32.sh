#!/bin/sh
mkdir "../results/"
mkdir "../results/mips32"

echo -e "Run Dhrystone v 2.1\n"

../bin/linux/mips32/dhrystone_mips32-native_O2 n 2>&1 > ../results/mips32/dhrystone_mips32-native_O2.stdout_stderr.log
../bin/linux/mips32/dhrystone_mips32-native_O3 n 2>&1 > ../results/mips32/dhrystone_mips32-native_O3.stdout_stderr.log
../bin/linux/mips32/dhrystone_mips32-74kc_O2 n 2>&1 > ../results/mips32/dhrystone_mips32-74kc_O2.stdout_stderr.log
../bin/linux/mips32/dhrystone_mips32-74kc_O3 n 2>&1 > ../results/mips32/dhrystone_mips32-74kc_O3.stdout_stderr.log

echo -e "Run Whetstone\n"

../bin/linux/mips32/whetstone_mips32-native_O2 n 2>&1 > ../results/mips32/whetstone_mips32-native_O2.stdout_stderr.log
../bin/linux/mips32/whetstone_mips32-native_O3 n 2>&1 > ../results/mips32/whetstone_mips32-native_O3.stdout_stderr.log
../bin/linux/mips32/whetstone_mips32-74kc_O2 n 2>&1 > ../results/mips32/whetstone_mips32-74kc_O2.stdout_stderr.log
../bin/linux/mips32/whetstone_mips32-74kc_O3 n 2>&1 > ../results/mips32/whetstone_mips32-74kc_O3.stdout_stderr.log

echo -e "Run Memspeed\n"

../bin/linux/mips32/memspeed_mips32-native_O2 n 2>&1 > ../results/mips32/memspeed_mips32-native_O2.stdout_stderr.log
../bin/linux/mips32/memspeed_mips32-native_O3 n 2>&1 > ../results/mips32/memspeed_mips32-native_O3.stdout_stderr.log
../bin/linux/mips32/memspeed_mips32-74kc_O2 n 2>&1 > ../results/mips32/memspeed_mips32-74kc_O2.stdout_stderr.log
../bin/linux/mips32/memspeed_mips32-74kc_O3 n 2>&1 > ../results/mips32/memspeed_mips32-74kc_O3.stdout_stderr.log

echo -e "Run Linpack\n"

../bin/linux/mips32/linpack_mips32-native_O2 n 2>&1 > ../results/mips32/linpack_mips32-native_O2.stdout_stderr.log
../bin/linux/mips32/linpack_mips32-native_O3 n 2>&1 > ../results/mips32/linpack_mips32-native_O3.stdout_stderr.log
../bin/linux/mips32/linpack_mips32-74kc_O2 n 2>&1 > ../results/mips32/linpack_mips32-74kc_O2.stdout_stderr.log
../bin/linux/mips32/linpack_mips32-74kc_O3 n 2>&1 > ../results/mips32/linpack_mips32-74kc_O3.stdout_stderr.log

echo -e "Run Lloops\n"

../bin/linux/mips32/lloops_mips32-native_O2 n 2>&1 > ../results/mips32/lloops_mips32-native_O2.stdout_stderr.log
../bin/linux/mips32/lloops_mips32-native_O3 n 2>&1 > ../results/mips32/lloops_mips32-native_O3.stdout_stderr.log
../bin/linux/mips32/lloops_mips32-74kc_O2 n 2>&1 > ../results/mips32/lloops_mips32-74kc_O2.stdout_stderr.log
../bin/linux/mips32/lloops_mips32-74kc_O3 n 2>&1 > ../results/mips32/lloops_mips32-74kc_O3.stdout_stderr.log

echo -e "Run WhetstoneMP\n"

../bin/linux/mips32/whetstone_mp_mips32-native_O2 n 2>&1 > ../results/mips32/whetstone_mp_mips32-native_O2.stdout_stderr.log
../bin/linux/mips32/whetstone_mp_mips32-native_O3 n 2>&1 > ../results/mips32/whetstone_mp_mips32-native_O3.stdout_stderr.log
../bin/linux/mips32/whetstone_mp_mips32-74kc_O2 n 2>&1 > ../results/mips32/whetstone_mp_mips32-74kc_O2.stdout_stderr.log
../bin/linux/mips32/whetstone_mp_mips32-74kc_O3 n 2>&1 > ../results/mips32/whetstone_mp_mips32-74kc_O3.stdout_stderr.log

echo -e "Run MPMFlops\n"

../bin/linux/mips32/mpmflops_mips32-native_O2 n 2>&1 > ../results/mips32/mpmflops_mips32-native_O2.stdout_stderr.log
../bin/linux/mips32/mpmflops_mips32-native_O3 n 2>&1 > ../results/mips32/mpmflops_mips32-native_O3.stdout_stderr.log
../bin/linux/mips32/mpmflops_mips32-74kc_O2 n 2>&1 > ../results/mips32/mpmflops_mips32-74kc_O2.stdout_stderr.log
../bin/linux/mips32/mpmflops_mips32-74kc_O3 n 2>&1 > ../results/mips32/mpmflops_mips32-74kc_O3.stdout_stderr.log

echo -e "Run busspeedIL\n"

../bin/linux/mips32/busspeedIL_mips32-native_O2 n 2>&1 > ../results/mips32/busspeedIL_mips32-native_O2.stdout_stderr.log
../bin/linux/mips32/busspeedIL_mips32-native_O3 n 2>&1 > ../results/mips32/busspeedIL_mips32-native_O3.stdout_stderr.log
../bin/linux/mips32/busspeedIL_mips32-74kc_O2 n 2>&1 > ../results/mips32/busspeedIL_mips32-74kc_O2.stdout_stderr.log
../bin/linux/mips32/busspeedIL_mips32-74kc_O3 n 2>&1 > ../results/mips32/busspeedIL_mips32-74kc_O3.stdout_stderr.log
