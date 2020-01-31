#!/bin/bash
mkdir "../results/"
mkdir "../results/amd64"

echo -e "Run Dhrystone v 2.1\n"

../bin/linux/amd64/dhrystone_amd64-__O2 n 2>&1 > ../results/amd64/dhrystone_amd64-__O2.stdout_stderr.log
../bin/linux/amd64/dhrystone_amd64-__O3 n 2>&1 > ../results/amd64/dhrystone_amd64-__O3.stdout_stderr.log
../bin/linux/amd64/dhrystone_amd64-__Ofast n 2>&1 > ../results/amd64/dhrystone_amd64-__Ofast.stdout_stderr.log

echo -e "Run Whetstone v 2.1\n"

../bin/linux/amd64/whetstone_amd64-__O2 n 2>&1 > ../results/amd64/whetstone_amd64-__O2.stdout_stderr.log
../bin/linux/amd64/whetstone_amd64-__O3 n 2>&1 > ../results/amd64/whetstone_amd64-__O3.stdout_stderr.log
../bin/linux/amd64/whetstone_amd64-__Ofast n 2>&1 > ../results/amd64/whetstone_amd64-__Ofast.stdout_stderr.log

echo -e "Run Memspeed v 2.1\n"

../bin/linux/amd64/memspeed_amd64-__O2 n 2>&1 > ../results/amd64/memspeed_amd64-__O2.stdout_stderr.log
../bin/linux/amd64/memspeed_amd64-__O3 n 2>&1 > ../results/amd64/memspeed_amd64-__O3.stdout_stderr.log
../bin/linux/amd64/memspeed_amd64-__Ofast n 2>&1 > ../results/amd64/memspeed_amd64-__Ofast.stdout_stderr.log

echo -e "Run Linpack v 2.1\n"

../bin/linux/amd64/linpack_amd64-__O2 n 2>&1 > ../results/amd64/linpack_amd64-__O2.stdout_stderr.log
../bin/linux/amd64/linpack_amd64-__O3 n 2>&1 > ../results/amd64/linpack_amd64-__O3.stdout_stderr.log
../bin/linux/amd64/linpack_amd64-__Ofast n 2>&1 > ../results/amd64/linpack_amd64-__Ofast.stdout_stderr.log

echo -e "Run Lloops v 2.1\n"

../bin/linux/amd64/lloops_amd64-__O2 n 2>&1 > ../results/amd64/lloops_amd64-__O2.stdout_stderr.log
../bin/linux/amd64/lloops_amd64-__O3 n 2>&1 > ../results/amd64/lloops_amd64-__O3.stdout_stderr.log
../bin/linux/amd64/lloops_amd64-__Ofast n 2>&1 > ../results/amd64/lloops_amd64-__Ofast.stdout_stderr.log

echo -e "Run WhetstoneMP v 2.1\n"

../bin/linux/amd64/whetstone_mp_amd64-__O2 n 2>&1 > ../results/amd64/whetstone_mp_amd64-__O2.stdout_stderr.log
../bin/linux/amd64/whetstone_mp_amd64-__O3 n 2>&1 > ../results/amd64/whetstone_mp_amd64-__O3.stdout_stderr.log
../bin/linux/amd64/whetstone_mp_amd64-__Ofast n 2>&1 > ../results/amd64/whetstone_mp_amd64-__Ofast.stdout_stderr.log

echo -e "Run MPMFlops v 2.1\n"

../bin/linux/amd64/mpmflops_amd64-__O2 n 2>&1 > ../results/amd64/mpmflops_amd64-__O2.stdout_stderr.log
../bin/linux/amd64/mpmflops_amd64-__O3 n 2>&1 > ../results/amd64/mpmflops_amd64-__O3.stdout_stderr.log
../bin/linux/amd64/mpmflops_amd64-__Ofast n 2>&1 > ../results/amd64/mpmflops_amd64-__Ofast.stdout_stderr.log

echo -e "Run busspeedIL\n"

../bin/linux/amd64/busspeedIL_amd64-__O2 n 2>&1 > ../results/amd64/busspeedIL_amd64-__O2.stdout_stderr.log
../bin/linux/amd64/busspeedIL_amd64-__O3 n 2>&1 > ../results/amd64/busspeedIL_amd64-__O3.stdout_stderr.log
../bin/linux/amd64/busspeedIL_amd64-__Ofast n 2>&1 > ../results/amd64/busspeedIL_amd64-__Ofast.stdout_stderr.log
