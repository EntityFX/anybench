#!/bin/bash
mkdir "../results/"
mkdir "../results/i386"

echo -e "Run Dhrystone v 2.1\n"

../bin/linux/i386/dhrystone_i386-i686_O2 n 2>&1 > ../results/i386/dhrystone_i386-i686_O2.stdout_stderr.log
../bin/linux/i386/dhrystone_i386-i686_O3 n 2>&1 > ../results/i386/dhrystone_i386-i686_O3.stdout_stderr.log
../bin/linux/i386/dhrystone_i386-i386_O2 n 2>&1 > ../results/i386/dhrystone_i386-i386_O2.stdout_stderr.log
../bin/linux/i386/dhrystone_i386-i386_O3 n 2>&1 > ../results/i386/dhrystone_i386-i386_O3.stdout_stderr.log

echo -e "Run Whetstone\n"

../bin/linux/i386/whetstone_i386-i686_O2 n 2>&1 > ../results/i386/whetstone_i386-i686_O2.stdout_stderr.log
../bin/linux/i386/whetstone_i386-i686_O3 n 2>&1 > ../results/i386/whetstone_i386-i686_O3.stdout_stderr.log
../bin/linux/i386/whetstone_i386-i386_O2 n 2>&1 > ../results/i386/whetstone_i386-i386_O2.stdout_stderr.log
../bin/linux/i386/whetstone_i386-i386_O3 n 2>&1 > ../results/i386/whetstone_i386-i386_O3.stdout_stderr.log

echo -e "Run Memspeed\n"

../bin/linux/i386/memspeed_i386-i686_O2 n 2>&1 > ../results/i386/memspeed_i386-i686_O2.stdout_stderr.log
../bin/linux/i386/memspeed_i386-i686_O3 n 2>&1 > ../results/i386/memspeed_i386-i686_O3.stdout_stderr.log
../bin/linux/i386/memspeed_i386-i386_O2 n 2>&1 > ../results/i386/memspeed_i386-i386_O2.stdout_stderr.log
../bin/linux/i386/memspeed_i386-i386_O3 n 2>&1 > ../results/i386/memspeed_i386-i386_O3.stdout_stderr.log

echo -e "Run Linpack\n"

../bin/linux/i386/linpack_i386-i686_O2 n 2>&1 > ../results/i386/linpack_i386-i686_O2.stdout_stderr.log
../bin/linux/i386/linpack_i386-i686_O3 n 2>&1 > ../results/i386/linpack_i386-i686_O3.stdout_stderr.log
../bin/linux/i386/linpack_i386-i386_O2 n 2>&1 > ../results/i386/linpack_i386-i386_O2.stdout_stderr.log
../bin/linux/i386/linpack_i386-i386_O3 n 2>&1 > ../results/i386/linpack_i386-i386_O3.stdout_stderr.log

echo -e "Run Lloops\n"

../bin/linux/i386/lloops_i386-i686_O2 n 2>&1 > ../results/i386/lloops_i386-i686_O2.stdout_stderr.log
../bin/linux/i386/lloops_i386-i686_O3 n 2>&1 > ../results/i386/lloops_i386-i686_O3.stdout_stderr.log
../bin/linux/i386/lloops_i386-i386_O2 n 2>&1 > ../results/i386/lloops_i386-i386_O2.stdout_stderr.log
../bin/linux/i386/lloops_i386-i386_O3 n 2>&1 > ../results/i386/lloops_i386-i386_O3.stdout_stderr.log

echo -e "Run WhetstoneMP\n"

../bin/linux/i386/whetstone_mp_i386-i686_O2 n 2>&1 > ../results/i386/whetstone_mp_i386-i686_O2.stdout_stderr.log
../bin/linux/i386/whetstone_mp_i386-i686_O3 n 2>&1 > ../results/i386/whetstone_mp_i386-i686_O3.stdout_stderr.log
../bin/linux/i386/whetstone_mp_i386-i386_O2 n 2>&1 > ../results/i386/whetstone_mp_i386-i386_O2.stdout_stderr.log
../bin/linux/i386/whetstone_mp_i386-i386_O3 n 2>&1 > ../results/i386/whetstone_mp_i386-i386_O3.stdout_stderr.log

echo -e "Run MPMFlops\n"

../bin/linux/i386/mpmflops_i386-i686_O2 n 2>&1 > ../results/i386/mpmflops_i386-i686_O2.stdout_stderr.log
../bin/linux/i386/mpmflops_i386-i686_O3 n 2>&1 > ../results/i386/mpmflops_i386-i686_O3.stdout_stderr.log
../bin/linux/i386/mpmflops_i386-i386_O2 n 2>&1 > ../results/i386/mpmflops_i386-i386_O2.stdout_stderr.log
../bin/linux/i386/mpmflops_i386-i386_O3 n 2>&1 > ../results/i386/mpmflops_i386-i386_O3.stdout_stderr.log

echo -e "Run busspeedIL\n"

../bin/linux/i386/busspeedIL_i386-i686_O2 n 2>&1 > ../results/i386/busspeedIL_i386-i686_O2.stdout_stderr.log
../bin/linux/i386/busspeedIL_i386-i686_O3 n 2>&1 > ../results/i386/busspeedIL_i386-i686_O3.stdout_stderr.log
../bin/linux/i386/busspeedIL_i386-i386_O2 n 2>&1 > ../results/i386/busspeedIL_i386-i386_O2.stdout_stderr.log
../bin/linux/i386/busspeedIL_i386-i386_O3 n 2>&1 > ../results/i386/busspeedIL_i386-i386_O3.stdout_stderr.log
