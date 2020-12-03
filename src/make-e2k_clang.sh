#!/bin/bash
mkdir "../bin/linux/"
mkdir "../bin/linux/e2k_clang"

echo -e "Compile Dhrystone v 2.1\n"

clang dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/e2k_clang/dhrystone_e2k_clang-e2k_O2 -O2 -march=elbrus-v3 -D options="\"e2k_clang e2k optimized\""
chmod +x ../bin/linux/e2k_clang/dhrystone_e2k_clang-e2k_O2
clang dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/e2k_clang/dhrystone_e2k_clang-e2k_O3 -O3 -march=elbrus-v3 -D options="\"e2k_clang e2k optimized\""
chmod +x ../bin/linux/e2k_clang/dhrystone_e2k_clang-e2k_O3

echo -e "Compile Whetstone\n"

clang whets.c cpuidc.c -lm -lrt -o ../bin/linux/e2k_clang/whetstone_e2k_clang-e2k_O2 -O2 -march=elbrus-v3 -D options="\"e2k_clang e2k optimized\""
chmod +x ../bin/linux/e2k_clang/whetstone_e2k_clang-e2k_O2
clang whets.c cpuidc.c -lm -lrt -o ../bin/linux/e2k_clang/whetstone_e2k_clang-e2k_O3 -O3 -march=elbrus-v3 -D options="\"e2k_clang e2k optimized\""
chmod +x ../bin/linux/e2k_clang/whetstone_e2k_clang-e2k_O3

echo -e "Compile Memspeed\n"

clang memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k_clang/memspeed_e2k_clang-e2k_O2 -O2 -march=elbrus-v3 -D options="\"e2k_clang e2k optimized\""
chmod +x ../bin/linux/e2k_clang/memspeed_e2k_clang-e2k_O2
clang memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k_clang/memspeed_e2k_clang-e2k_O3 -O3 -march=elbrus-v3 -D options="\"e2k_clang e2k optimized\""
chmod +x ../bin/linux/e2k_clang/memspeed_e2k_clang-e2k_O3

echo -e "Compile Linpack\n"

clang linpack.c cpuidc.c -lm -lrt -o ../bin/linux/e2k_clang/linpack_e2k_clang-e2k_O2 -O2 -march=elbrus-v3 -D options="\"e2k_clang e2k optimized\""
chmod +x ../bin/linux/e2k_clang/linpack_e2k_clang-e2k_O2
clang linpack.c cpuidc.c -lm -lrt -o ../bin/linux/e2k_clang/linpack_e2k_clang-e2k_O3 -O3 -march=elbrus-v3 -D options="\"e2k_clang e2k optimized\""
chmod +x ../bin/linux/e2k_clang/linpack_e2k_clang-e2k_O3

echo -e "Compile Lloops\n"

clang lloops.c cpuidc.c -lm -lrt -o ../bin/linux/e2k_clang/lloops_e2k_clang-e2k_O2 -O2 -march=elbrus-v3 -D options="\"e2k_clang e2k optimized\""
chmod +x ../bin/linux/e2k_clang/lloops_e2k_clang-e2k_O2
clang lloops.c cpuidc.c -lm -lrt -o ../bin/linux/e2k_clang/lloops_e2k_clang-e2k_O3 -O3 -march=elbrus-v3 -D options="\"e2k_clang e2k optimized\""
chmod +x ../bin/linux/e2k_clang/lloops_e2k_clang-e2k_O3

echo -e "Compile WhetstoneMP\n"

clang mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k_clang/whetstone_mp_e2k_clang-e2k_O2 -O2 -march=elbrus-v3 -D options="\"e2k_clang e2k optimized\""
chmod +x ../bin/linux/e2k_clang/whetstone_mp_e2k_clang-e2k_O2
clang mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k_clang/whetstone_mp_e2k_clang-e2k_O3 -O3 -march=elbrus-v3 -D options="\"e2k_clang e2k optimized\""
chmod +x ../bin/linux/e2k_clang/whetstone_mp_e2k_clang-e2k_O3

echo -e "Compile MPMFlops\n"

clang mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k_clang/mpmflops_e2k_clang-e2k_O2 -O2 -march=elbrus-v3 -D options="\"e2k_clang e2k optimized\""
chmod +x ../bin/linux/e2k_clang/mpmflops_e2k_clang-e2k_O2
clang mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k_clang/mpmflops_e2k_clang-e2k_O3 -O3 -march=elbrus-v3 -D options="\"e2k_clang e2k optimized\""
chmod +x ../bin/linux/e2k_clang/mpmflops_e2k_clang-e2k_O3

echo -e "Compile busspeedIL\n"

clang busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k_clang/busspeedIL_e2k_clang-e2k_O2 -O2 -march=elbrus-v3 -D options="\"e2k_clang e2k optimized\""
chmod +x ../bin/linux/e2k_clang/busspeedIL_e2k_clang-e2k_O2
clang busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k_clang/busspeedIL_e2k_clang-e2k_O3 -O3 -march=elbrus-v3 -D options="\"e2k_clang e2k optimized\""
chmod +x ../bin/linux/e2k_clang/busspeedIL_e2k_clang-e2k_O3


