#!/bin/bash
mkdir "../bin/linux/"
mkdir "../bin/linux/amd64"

echo -e "Compile Dhrystone v 2.1\n"

cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/amd64/dhrystone_amd64-__O2 -O2 -march=_ -D options="\"amd64 _ optimized\""
chmod +x ../bin/linux/amd64/dhrystone_amd64-__O2
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/amd64/dhrystone_amd64-__O3 -O3 -march=_ -D options="\"amd64 _ optimized\""
chmod +x ../bin/linux/amd64/dhrystone_amd64-__O3
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/amd64/dhrystone_amd64-__Ofast -Ofast -march=_ -D options="\"amd64 _ optimized\""
chmod +x ../bin/linux/amd64/dhrystone_amd64-__Ofast

echo -e "Compile Whetstone\n"

cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/amd64/whetstone_amd64-__O2 -O2 -march=_ -D options="\"amd64 _ optimized\""
chmod +x ../bin/linux/amd64/whetstone_amd64-__O2
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/amd64/whetstone_amd64-__O3 -O3 -march=_ -D options="\"amd64 _ optimized\""
chmod +x ../bin/linux/amd64/whetstone_amd64-__O3
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/amd64/whetstone_amd64-__Ofast -Ofast -march=_ -D options="\"amd64 _ optimized\""
chmod +x ../bin/linux/amd64/whetstone_amd64-__Ofast

echo -e "Compile Memspeed\n"

cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/amd64/memspeed_amd64-__O2 -O2 -march=_ -D options="\"amd64 _ optimized\""
chmod +x ../bin/linux/amd64/memspeed_amd64-__O2
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/amd64/memspeed_amd64-__O3 -O3 -march=_ -D options="\"amd64 _ optimized\""
chmod +x ../bin/linux/amd64/memspeed_amd64-__O3
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/amd64/memspeed_amd64-__Ofast -Ofast -march=_ -D options="\"amd64 _ optimized\""
chmod +x ../bin/linux/amd64/memspeed_amd64-__Ofast

echo -e "Compile Linpack\n"

cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/amd64/linpack_amd64-__O2 -O2 -march=_ -D options="\"amd64 _ optimized\""
chmod +x ../bin/linux/amd64/linpack_amd64-__O2
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/amd64/linpack_amd64-__O3 -O3 -march=_ -D options="\"amd64 _ optimized\""
chmod +x ../bin/linux/amd64/linpack_amd64-__O3
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/amd64/linpack_amd64-__Ofast -Ofast -march=_ -D options="\"amd64 _ optimized\""
chmod +x ../bin/linux/amd64/linpack_amd64-__Ofast

echo -e "Compile Lloops\n"

cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/amd64/lloops_amd64-__O2 -O2 -march=_ -D options="\"amd64 _ optimized\""
chmod +x ../bin/linux/amd64/lloops_amd64-__O2
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/amd64/lloops_amd64-__O3 -O3 -march=_ -D options="\"amd64 _ optimized\""
chmod +x ../bin/linux/amd64/lloops_amd64-__O3
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/amd64/lloops_amd64-__Ofast -Ofast -march=_ -D options="\"amd64 _ optimized\""
chmod +x ../bin/linux/amd64/lloops_amd64-__Ofast

echo -e "Compile WhetstoneMP\n"

cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/amd64/whetstone_mp_amd64-__O2 -O2 -march=_ -D options="\"amd64 _ optimized\""
chmod +x ../bin/linux/amd64/whetstone_mp_amd64-__O2
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/amd64/whetstone_mp_amd64-__O3 -O3 -march=_ -D options="\"amd64 _ optimized\""
chmod +x ../bin/linux/amd64/whetstone_mp_amd64-__O3
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/amd64/whetstone_mp_amd64-__Ofast -Ofast -march=_ -D options="\"amd64 _ optimized\""
chmod +x ../bin/linux/amd64/whetstone_mp_amd64-__Ofast

echo -e "Compile MPMFlops\n"

cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/amd64/mpmflops_amd64-__O2 -O2 -march=_ -D options="\"amd64 _ optimized\""
chmod +x ../bin/linux/amd64/mpmflops_amd64-__O2
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/amd64/mpmflops_amd64-__O3 -O3 -march=_ -D options="\"amd64 _ optimized\""
chmod +x ../bin/linux/amd64/mpmflops_amd64-__O3
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/amd64/mpmflops_amd64-__Ofast -Ofast -march=_ -D options="\"amd64 _ optimized\""
chmod +x ../bin/linux/amd64/mpmflops_amd64-__Ofast

echo -e "Compile busspeedIL\n"

cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/amd64/busspeedIL_amd64-__O2 -O2 -march=_ -D options="\"amd64 _ optimized\""
chmod +x ../bin/linux/amd64/busspeedIL_amd64-__O2
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/amd64/busspeedIL_amd64-__O3 -O3 -march=_ -D options="\"amd64 _ optimized\""
chmod +x ../bin/linux/amd64/busspeedIL_amd64-__O3
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/amd64/busspeedIL_amd64-__Ofast -Ofast -march=_ -D options="\"amd64 _ optimized\""
chmod +x ../bin/linux/amd64/busspeedIL_amd64-__Ofast


