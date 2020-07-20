#!/bin/sh
mkdir "../bin/linux/"
mkdir "../bin/linux/mips32"

echo -e "Compile Dhrystone v 2.1\n"

gcc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/mips32/dhrystone_mips32-native_O2 -O2 -march=native -D options="\"mips32 native optimized\""
chmod +x ../bin/linux/mips32/dhrystone_mips32-native_O2
gcc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/mips32/dhrystone_mips32-native_O3 -O3 -march=native -D options="\"mips32 native optimized\""
chmod +x ../bin/linux/mips32/dhrystone_mips32-native_O3
gcc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/mips32/dhrystone_mips32-74kc_O2 -O2 -march=74kc -D options="\"mips32 74kc optimized\""
chmod +x ../bin/linux/mips32/dhrystone_mips32-74kc_O2
gcc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/mips32/dhrystone_mips32-74kc_O3 -O3 -march=74kc -D options="\"mips32 74kc optimized\""
chmod +x ../bin/linux/mips32/dhrystone_mips32-74kc_O3

echo -e "Compile Whetstone\n"

gcc whets.c cpuidc.c -lm -lrt -o ../bin/linux/mips32/whetstone_mips32-native_O2 -O2 -march=native -D options="\"mips32 native optimized\""
chmod +x ../bin/linux/mips32/whetstone_mips32-native_O2
gcc whets.c cpuidc.c -lm -lrt -o ../bin/linux/mips32/whetstone_mips32-native_O3 -O3 -march=native -D options="\"mips32 native optimized\""
chmod +x ../bin/linux/mips32/whetstone_mips32-native_O3
gcc whets.c cpuidc.c -lm -lrt -o ../bin/linux/mips32/whetstone_mips32-74kc_O2 -O2 -march=74kc -D options="\"mips32 74kc optimized\""
chmod +x ../bin/linux/mips32/whetstone_mips32-74kc_O2
gcc whets.c cpuidc.c -lm -lrt -o ../bin/linux/mips32/whetstone_mips32-74kc_O3 -O3 -march=74kc -D options="\"mips32 74kc optimized\""
chmod +x ../bin/linux/mips32/whetstone_mips32-74kc_O3

echo -e "Compile Memspeed\n"

gcc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/mips32/memspeed_mips32-native_O2 -O2 -march=native -D options="\"mips32 native optimized\""
chmod +x ../bin/linux/mips32/memspeed_mips32-native_O2
gcc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/mips32/memspeed_mips32-native_O3 -O3 -march=native -D options="\"mips32 native optimized\""
chmod +x ../bin/linux/mips32/memspeed_mips32-native_O3
gcc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/mips32/memspeed_mips32-74kc_O2 -O2 -march=74kc -D options="\"mips32 74kc optimized\""
chmod +x ../bin/linux/mips32/memspeed_mips32-74kc_O2
gcc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/mips32/memspeed_mips32-74kc_O3 -O3 -march=74kc -D options="\"mips32 74kc optimized\""
chmod +x ../bin/linux/mips32/memspeed_mips32-74kc_O3

echo -e "Compile Linpack\n"

gcc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/mips32/linpack_mips32-native_O2 -O2 -march=native -D options="\"mips32 native optimized\""
chmod +x ../bin/linux/mips32/linpack_mips32-native_O2
gcc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/mips32/linpack_mips32-native_O3 -O3 -march=native -D options="\"mips32 native optimized\""
chmod +x ../bin/linux/mips32/linpack_mips32-native_O3
gcc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/mips32/linpack_mips32-74kc_O2 -O2 -march=74kc -D options="\"mips32 74kc optimized\""
chmod +x ../bin/linux/mips32/linpack_mips32-74kc_O2
gcc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/mips32/linpack_mips32-74kc_O3 -O3 -march=74kc -D options="\"mips32 74kc optimized\""
chmod +x ../bin/linux/mips32/linpack_mips32-74kc_O3

echo -e "Compile Lloops\n"

gcc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/mips32/lloops_mips32-native_O2 -O2 -march=native -D options="\"mips32 native optimized\""
chmod +x ../bin/linux/mips32/lloops_mips32-native_O2
gcc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/mips32/lloops_mips32-native_O3 -O3 -march=native -D options="\"mips32 native optimized\""
chmod +x ../bin/linux/mips32/lloops_mips32-native_O3
gcc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/mips32/lloops_mips32-74kc_O2 -O2 -march=74kc -D options="\"mips32 74kc optimized\""
chmod +x ../bin/linux/mips32/lloops_mips32-74kc_O2
gcc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/mips32/lloops_mips32-74kc_O3 -O3 -march=74kc -D options="\"mips32 74kc optimized\""
chmod +x ../bin/linux/mips32/lloops_mips32-74kc_O3

echo -e "Compile WhetstoneMP\n"

gcc mp/whetsmp.c mp/cpuidc64.c -pthread -lm -lrt -o ../bin/linux/mips32/whetstone_mp_mips32-native_O2 -O2 -march=native -D options="\"mips32 native optimized\""
chmod +x ../bin/linux/mips32/whetstone_mp_mips32-native_O2
gcc mp/whetsmp.c mp/cpuidc64.c -pthread -lm -lrt -o ../bin/linux/mips32/whetstone_mp_mips32-native_O3 -O3 -march=native -D options="\"mips32 native optimized\""
chmod +x ../bin/linux/mips32/whetstone_mp_mips32-native_O3
gcc mp/whetsmp.c mp/cpuidc64.c -pthread -lm -lrt -o ../bin/linux/mips32/whetstone_mp_mips32-74kc_O2 -O2 -march=74kc -D options="\"mips32 74kc optimized\""
chmod +x ../bin/linux/mips32/whetstone_mp_mips32-74kc_O2
gcc mp/whetsmp.c mp/cpuidc64.c -pthread -lm -lrt -o ../bin/linux/mips32/whetstone_mp_mips32-74kc_O3 -O3 -march=74kc -D options="\"mips32 74kc optimized\""
chmod +x ../bin/linux/mips32/whetstone_mp_mips32-74kc_O3

echo -e "Compile MPMFlops\n"

gcc mp/mpmflops.c mp/cpuidc64.c -pthread -lm -lrt -o ../bin/linux/mips32/mpmflops_mips32-native_O2 -O2 -march=native -D options="\"mips32 native optimized\""
chmod +x ../bin/linux/mips32/mpmflops_mips32-native_O2
gcc mp/mpmflops_nomm.c mp/cpuidc64.c -pthread -lm -lrt -o ../bin/linux/mips32/mpmflops_nomm_mips32-native_O3 -O3 -march=native -D options="\"mips32 native optimized\""
chmod +x ../bin/linux/mips32/mpmflops_nomm_mips32-native_O3
gcc mp/mpmflops_nomm.c mp/cpuidc64.c -pthread -lm -lrt -o ../bin/linux/mips32/mpmflops_nomm_mips32-74kc_O2 -O2 -march=74kc -D options="\"mips32 74kc optimized\""
chmod +x ../bin/linux/mips32/mpmflops_nomm_mips32-74kc_O2
gcc mp/mpmflops_nomm.c mp/cpuidc64.c -pthread -lm -lrt -o ../bin/linux/mips32/mpmflops_nomm_mips32-74kc_O3 -O3 -march=74kc -D options="\"mips32 74kc optimized\""
chmod +x ../bin/linux/mips32/mpmflops_nomm_mips32-74kc_O3

echo -e "Compile busspeedIL\n"

gcc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/mips32/busspeedIL_mips32-native_O2 -O2 -march=native -D options="\"mips32 native optimized\""
chmod +x ../bin/linux/mips32/busspeedIL_mips32-native_O2
gcc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/mips32/busspeedIL_mips32-native_O3 -O3 -march=native -D options="\"mips32 native optimized\""
chmod +x ../bin/linux/mips32/busspeedIL_mips32-native_O3
gcc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/mips32/busspeedIL_mips32-74kc_O2 -O2 -march=74kc -D options="\"mips32 74kc optimized\""
chmod +x ../bin/linux/mips32/busspeedIL_mips32-74kc_O2
gcc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/mips32/busspeedIL_mips32-74kc_O3 -O3 -march=74kc -D options="\"mips32 74kc optimized\""
chmod +x ../bin/linux/mips32/busspeedIL_mips32-74kc_O3


