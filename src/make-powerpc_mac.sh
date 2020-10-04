#!/bin/bash
mkdir "../bin/mac/"
mkdir "../bin/mac/powerpc_mac"

echo -e "Compile Dhrystone v 2.1\n"

gcc dhry_1.c dhry_2.c cpuidc.c -o ../bin/mac/powerpc_mac/dhrystone_powerpc_mac-powerpc_O2 -O2 -mcpu=powerpc
chmod +x ../bin/mac/powerpc_mac/dhrystone_powerpc_mac-powerpc_O2
gcc dhry_1.c dhry_2.c cpuidc.c -o ../bin/mac/powerpc_mac/dhrystone_powerpc_mac-powerpc_O3 -O3 -mcpu=powerpc
chmod +x ../bin/mac/powerpc_mac/dhrystone_powerpc_mac-powerpc_O3

echo -e "Compile Whetstone\n"

gcc whets.c cpuidc.c -lm -o ../bin/mac/powerpc_mac/whetstone_powerpc_mac-powerpc_O2 -O2 -mcpu=powerpc
chmod +x ../bin/mac/powerpc_mac/whetstone_powerpc_mac-powerpc_O2
gcc whets.c cpuidc.c -lm -o ../bin/mac/powerpc_mac/whetstone_powerpc_mac-powerpc_O3 -O3 -mcpu=powerpc
chmod +x ../bin/mac/powerpc_mac/whetstone_powerpc_mac-powerpc_O3

echo -e "Compile Memspeed\n"

gcc memspeed.c cpuidc.c -lm -o ../bin/mac/powerpc_mac/memspeed_powerpc_mac-powerpc_O2 -O2 -mcpu=powerpc
chmod +x ../bin/mac/powerpc_mac/memspeed_powerpc_mac-powerpc_O2
gcc memspeed.c cpuidc.c -lm -o ../bin/mac/powerpc_mac/memspeed_powerpc_mac-powerpc_O3 -O3 -mcpu=powerpc
chmod +x ../bin/mac/powerpc_mac/memspeed_powerpc_mac-powerpc_O3

echo -e "Compile Linpack\n"

gcc linpack.c cpuidc.c -lm -o ../bin/mac/powerpc_mac/linpack_powerpc_mac-powerpc_O2 -O2 -mcpu=powerpc
chmod +x ../bin/mac/powerpc_mac/linpack_powerpc_mac-powerpc_O2
gcc linpack.c cpuidc.c -lm -o ../bin/mac/powerpc_mac/linpack_powerpc_mac-powerpc_O3 -O3 -mcpu=powerpc
chmod +x ../bin/mac/powerpc_mac/linpack_powerpc_mac-powerpc_O3

echo -e "Compile Lloops\n"

gcc lloops.c cpuidc.c -lm -o ../bin/mac/powerpc_mac/lloops_powerpc_mac-powerpc_O2 -O2 -mcpu=powerpc
chmod +x ../bin/mac/powerpc_mac/lloops_powerpc_mac-powerpc_O2
gcc lloops.c cpuidc.c -lm -o ../bin/mac/powerpc_mac/lloops_powerpc_mac-powerpc_O3 -O3 -mcpu=powerpc
chmod +x ../bin/mac/powerpc_mac/lloops_powerpc_mac-powerpc_O3

echo -e "Compile WhetstoneMP\n"

gcc mp32/whetsmp.c cpuidc.c -lm -o ../bin/mac/powerpc_mac/whetstone_mp_powerpc_mac-powerpc_O2 -O2 -mcpu=powerpc
chmod +x ../bin/mac/powerpc_mac/whetstone_mp_powerpc_mac-powerpc_O2
gcc mp32/whetsmp.c cpuidc.c -lm -o ../bin/mac/powerpc_mac/whetstone_mp_powerpc_mac-powerpc_O3 -O3 -mcpu=powerpc
chmod +x ../bin/mac/powerpc_mac/whetstone_mp_powerpc_mac-powerpc_O3

echo -e "Compile MPMFlops\n"

gcc mp32/mpmflops.c cpuidc.c -lm -o ../bin/mac/powerpc_mac/mpmflops_powerpc_mac-powerpc_O2 -O2 -mcpu=powerpc
chmod +x ../bin/mac/powerpc_mac/mpmflops_powerpc_mac-powerpc_O2
gcc mp32/mpmflops.c cpuidc.c -lm -o ../bin/mac/powerpc_mac/mpmflops_powerpc_mac-powerpc_O3 -O3 -mcpu=powerpc
chmod +x ../bin/mac/powerpc_mac/mpmflops_powerpc_mac-powerpc_O3

echo -e "Compile busspeedIL\n"

gcc busspeed.c cpuidc.c -lm -o ../bin/mac/powerpc_mac/busspeedIL_powerpc_mac-powerpc_O2 -O2 -mcpu=powerpc
chmod +x ../bin/mac/powerpc_mac/busspeedIL_powerpc_mac-powerpc_O2
gcc busspeed.c cpuidc.c -lm -o ../bin/mac/powerpc_mac/busspeedIL_powerpc_mac-powerpc_O3 -O3 -mcpu=powerpc
chmod +x ../bin/mac/powerpc_mac/busspeedIL_powerpc_mac-powerpc_O3


