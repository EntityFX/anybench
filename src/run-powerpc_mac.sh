#!/bin/bash
mkdir "../results/"
mkdir "../results/powerpc_mac"

echo -e "Run Dhrystone v 2.1\n"

../bin/mac/powerpc_mac/dhrystone_powerpc_mac-powerpc_O2 n 2>&1 > ../results/powerpc_mac/dhrystone_powerpc_mac-powerpc_O2.stdout_stderr.log
../bin/mac/powerpc_mac/dhrystone_powerpc_mac-powerpc_O3 n 2>&1 > ../results/powerpc_mac/dhrystone_powerpc_mac-powerpc_O3.stdout_stderr.log

echo -e "Run Whetstone\n"

../bin/mac/powerpc_mac/whetstone_powerpc_mac-powerpc_O2 n 2>&1 > ../results/powerpc_mac/whetstone_powerpc_mac-powerpc_O2.stdout_stderr.log
../bin/mac/powerpc_mac/whetstone_powerpc_mac-powerpc_O3 n 2>&1 > ../results/powerpc_mac/whetstone_powerpc_mac-powerpc_O3.stdout_stderr.log

echo -e "Run Memspeed\n"

../bin/mac/powerpc_mac/memspeed_powerpc_mac-powerpc_O2 n 2>&1 > ../results/powerpc_mac/memspeed_powerpc_mac-powerpc_O2.stdout_stderr.log
../bin/mac/powerpc_mac/memspeed_powerpc_mac-powerpc_O3 n 2>&1 > ../results/powerpc_mac/memspeed_powerpc_mac-powerpc_O3.stdout_stderr.log

echo -e "Run Linpack\n"

../bin/mac/powerpc_mac/linpack_powerpc_mac-powerpc_O2 n 2>&1 > ../results/powerpc_mac/linpack_powerpc_mac-powerpc_O2.stdout_stderr.log
../bin/mac/powerpc_mac/linpack_powerpc_mac-powerpc_O3 n 2>&1 > ../results/powerpc_mac/linpack_powerpc_mac-powerpc_O3.stdout_stderr.log

echo -e "Run Lloops\n"

../bin/mac/powerpc_mac/lloops_powerpc_mac-powerpc_O2 n 2>&1 > ../results/powerpc_mac/lloops_powerpc_mac-powerpc_O2.stdout_stderr.log
../bin/mac/powerpc_mac/lloops_powerpc_mac-powerpc_O3 n 2>&1 > ../results/powerpc_mac/lloops_powerpc_mac-powerpc_O3.stdout_stderr.log

echo -e "Run WhetstoneMP\n"

../bin/mac/powerpc_mac/whetstone_mp_powerpc_mac-powerpc_O2 n 2>&1 > ../results/powerpc_mac/whetstone_mp_powerpc_mac-powerpc_O2.stdout_stderr.log
../bin/mac/powerpc_mac/whetstone_mp_powerpc_mac-powerpc_O3 n 2>&1 > ../results/powerpc_mac/whetstone_mp_powerpc_mac-powerpc_O3.stdout_stderr.log

echo -e "Run MPMFlops\n"

../bin/mac/powerpc_mac/mpmflops_powerpc_mac-powerpc_O2 n 2>&1 > ../results/powerpc_mac/mpmflops_powerpc_mac-powerpc_O2.stdout_stderr.log
../bin/mac/powerpc_mac/mpmflops_powerpc_mac-powerpc_O3 n 2>&1 > ../results/powerpc_mac/mpmflops_powerpc_mac-powerpc_O3.stdout_stderr.log

echo -e "Run busspeedIL\n"

../bin/mac/powerpc_mac/busspeedIL_powerpc_mac-powerpc_O2 n 2>&1 > ../results/powerpc_mac/busspeedIL_powerpc_mac-powerpc_O2.stdout_stderr.log
../bin/mac/powerpc_mac/busspeedIL_powerpc_mac-powerpc_O3 n 2>&1 > ../results/powerpc_mac/busspeedIL_powerpc_mac-powerpc_O3.stdout_stderr.log
