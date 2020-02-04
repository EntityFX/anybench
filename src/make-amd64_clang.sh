#!/bin/bash
mkdir "../bin/linux/"
mkdir "../bin/linux/amd64_clang"

echo -e "Compile Dhrystone v 2.1\n"

clang dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/amd64_clang/dhrystone_amd64_clang-__O2 -O2 -march=_ -D options="\"amd64_clang _ optimized\""
chmod +x ../bin/linux/amd64_clang/dhrystone_amd64_clang-__O2
clang dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/amd64_clang/dhrystone_amd64_clang-__O3 -O3 -march=_ -D options="\"amd64_clang _ optimized\""
chmod +x ../bin/linux/amd64_clang/dhrystone_amd64_clang-__O3

echo -e "Compile Whetstone\n"

clang whets.c cpuidc.c -lm -lrt -o ../bin/linux/amd64_clang/whetstone_amd64_clang-__O2 -O2 -march=_ -D options="\"amd64_clang _ optimized\""
chmod +x ../bin/linux/amd64_clang/whetstone_amd64_clang-__O2
clang whets.c cpuidc.c -lm -lrt -o ../bin/linux/amd64_clang/whetstone_amd64_clang-__O3 -O3 -march=_ -D options="\"amd64_clang _ optimized\""
chmod +x ../bin/linux/amd64_clang/whetstone_amd64_clang-__O3

echo -e "Compile Memspeed\n"

clang memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/amd64_clang/memspeed_amd64_clang-__O2 -O2 -march=_ -D options="\"amd64_clang _ optimized\""
chmod +x ../bin/linux/amd64_clang/memspeed_amd64_clang-__O2
clang memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/amd64_clang/memspeed_amd64_clang-__O3 -O3 -march=_ -D options="\"amd64_clang _ optimized\""
chmod +x ../bin/linux/amd64_clang/memspeed_amd64_clang-__O3

echo -e "Compile Linpack\n"

clang linpack.c cpuidc.c -lm -lrt -o ../bin/linux/amd64_clang/linpack_amd64_clang-__O2 -O2 -march=_ -D options="\"amd64_clang _ optimized\""
chmod +x ../bin/linux/amd64_clang/linpack_amd64_clang-__O2
clang linpack.c cpuidc.c -lm -lrt -o ../bin/linux/amd64_clang/linpack_amd64_clang-__O3 -O3 -march=_ -D options="\"amd64_clang _ optimized\""
chmod +x ../bin/linux/amd64_clang/linpack_amd64_clang-__O3

echo -e "Compile Lloops\n"

clang lloops.c cpuidc.c -lm -lrt -o ../bin/linux/amd64_clang/lloops_amd64_clang-__O2 -O2 -march=_ -D options="\"amd64_clang _ optimized\""
chmod +x ../bin/linux/amd64_clang/lloops_amd64_clang-__O2
clang lloops.c cpuidc.c -lm -lrt -o ../bin/linux/amd64_clang/lloops_amd64_clang-__O3 -O3 -march=_ -D options="\"amd64_clang _ optimized\""
chmod +x ../bin/linux/amd64_clang/lloops_amd64_clang-__O3

echo -e "Compile WhetstoneMP\n"

clang mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/amd64_clang/whetstone_mp_amd64_clang-__O2 -O2 -march=_ -D options="\"amd64_clang _ optimized\""
chmod +x ../bin/linux/amd64_clang/whetstone_mp_amd64_clang-__O2
clang mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/amd64_clang/whetstone_mp_amd64_clang-__O3 -O3 -march=_ -D options="\"amd64_clang _ optimized\""
chmod +x ../bin/linux/amd64_clang/whetstone_mp_amd64_clang-__O3

echo -e "Compile MPMFlops\n"

clang mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/amd64_clang/mpmflops_amd64_clang-__O2 -O2 -march=_ -D options="\"amd64_clang _ optimized\""
chmod +x ../bin/linux/amd64_clang/mpmflops_amd64_clang-__O2
clang mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/amd64_clang/mpmflops_amd64_clang-__O3 -O3 -march=_ -D options="\"amd64_clang _ optimized\""
chmod +x ../bin/linux/amd64_clang/mpmflops_amd64_clang-__O3

echo -e "Compile busspeedIL\n"

clang busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/amd64_clang/busspeedIL_amd64_clang-__O2 -O2 -march=_ -D options="\"amd64_clang _ optimized\""
chmod +x ../bin/linux/amd64_clang/busspeedIL_amd64_clang-__O2
clang busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/amd64_clang/busspeedIL_amd64_clang-__O3 -O3 -march=_ -D options="\"amd64_clang _ optimized\""
chmod +x ../bin/linux/amd64_clang/busspeedIL_amd64_clang-__O3


