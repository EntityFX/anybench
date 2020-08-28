#!/bin/bash
mkdir "../bin/linux/"
mkdir "../bin/linux/i386"

echo -e "Compile Dhrystone v 2.1\n"

gcc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/i386/dhrystone_i386-i686_O2 -O2 -march=i686 -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/dhrystone_i386-i686_O2
gcc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/i386/dhrystone_i386-i686_O3 -O3 -march=i686 -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/dhrystone_i386-i686_O3
gcc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/i386/dhrystone_i386-i386_O2 -O2 -march=i386 -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/dhrystone_i386-i386_O2
gcc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/i386/dhrystone_i386-i386_O3 -O3 -march=i386 -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/dhrystone_i386-i386_O3

echo -e "Compile Whetstone\n"

gcc whets.c cpuidc.c -lm -lrt -o ../bin/linux/i386/whetstone_i386-i686_O2 -O2 -march=i686 -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/whetstone_i386-i686_O2
gcc whets.c cpuidc.c -lm -lrt -o ../bin/linux/i386/whetstone_i386-i686_O3 -O3 -march=i686 -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/whetstone_i386-i686_O3
gcc whets.c cpuidc.c -lm -lrt -o ../bin/linux/i386/whetstone_i386-i386_O2 -O2 -march=i386 -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/whetstone_i386-i386_O2
gcc whets.c cpuidc.c -lm -lrt -o ../bin/linux/i386/whetstone_i386-i386_O3 -O3 -march=i386 -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/whetstone_i386-i386_O3

echo -e "Compile Memspeed\n"

gcc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/i386/memspeed_i386-i686_O2 -O2 -march=i686 -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/memspeed_i386-i686_O2
gcc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/i386/memspeed_i386-i686_O3 -O3 -march=i686 -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/memspeed_i386-i686_O3
gcc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/i386/memspeed_i386-i386_O2 -O2 -march=i386 -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/memspeed_i386-i386_O2
gcc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/i386/memspeed_i386-i386_O3 -O3 -march=i386 -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/memspeed_i386-i386_O3

echo -e "Compile Linpack\n"

gcc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/i386/linpack_i386-i686_O2 -O2 -march=i686 -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/linpack_i386-i686_O2
gcc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/i386/linpack_i386-i686_O3 -O3 -march=i686 -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/linpack_i386-i686_O3
gcc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/i386/linpack_i386-i386_O2 -O2 -march=i386 -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/linpack_i386-i386_O2
gcc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/i386/linpack_i386-i386_O3 -O3 -march=i386 -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/linpack_i386-i386_O3

echo -e "Compile Lloops\n"

gcc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/i386/lloops_i386-i686_O2 -O2 -march=i686 -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/lloops_i386-i686_O2
gcc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/i386/lloops_i386-i686_O3 -O3 -march=i686 -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/lloops_i386-i686_O3
gcc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/i386/lloops_i386-i386_O2 -O2 -march=i386 -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/lloops_i386-i386_O2
gcc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/i386/lloops_i386-i386_O3 -O3 -march=i386 -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/lloops_i386-i386_O3

echo -e "Compile WhetstoneMP\n"

gcc mp32/whetsmp.c mp32/cpuidc64.c -pthread -lm -lrt -o ../bin/linux/i386/whetstone_mp_i386-i686_O2 -O2 -march=i686 -msse -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/whetstone_mp_i386-i686_O2
gcc mp32/whetsmp.c mp32/cpuidc64.c -pthread -lm -lrt -o ../bin/linux/i386/whetstone_mp_i386-i686_O3 -O3 -march=i686 -msse -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/whetstone_mp_i386-i686_O3
gcc mp32/whetsmp.c mp32/cpuidc64.c -pthread -lm -lrt -o ../bin/linux/i386/whetstone_mp_i386-i386_O2 -O2 -march=i386 -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/whetstone_mp_i386-i386_O2
gcc mp32/whetsmp.c mp32/cpuidc64.c -pthread -lm -lrt -o ../bin/linux/i386/whetstone_mp_i386-i386_O3 -O3 -march=i386 -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/whetstone_mp_i386-i386_O3

echo -e "Compile MPMFlops\n"

gcc mp32/mpmflops.c mp32/cpuidc64.c  -pthread -lm -lrt -o ../bin/linux/i386/mpmflops_i386-i686_O2 -O2 -march=i686 -msse -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/mpmflops_i386-i686_O2
gcc mp32/mpmflops.c mp32/cpuidc64.c -pthread -lm -lrt -o ../bin/linux/i386/mpmflops_i386-i686_O3 -O3 -march=i686 -msse -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/mpmflops_i386-i686_O3
gcc mp32/mpmflops.c mp32/cpuidc64.c -pthread -lm -lrt -o ../bin/linux/i386/mpmflops_i386-i386_O2 -O2 -march=i386 -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/mpmflops_i386-i386_O2
gcc mp32/mpmflops.c mp32/cpuidc64.c -pthread -lm -lrt -o ../bin/linux/i386/mpmflops_i386-i386_O3 -O3 -march=i386 -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/mpmflops_i386-i386_O3

echo -e "Compile busspeedIL\n"

gcc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/i386/busspeedIL_i386-i686_O2 -O2 -march=i686 -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/busspeedIL_i386-i686_O2
gcc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/i386/busspeedIL_i386-i686_O3 -O3 -march=i686 -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/busspeedIL_i386-i686_O3
gcc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/i386/busspeedIL_i386-i386_O2 -O2 -march=i386 -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/busspeedIL_i386-i386_O2
gcc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/i386/busspeedIL_i386-i386_O3 -O3 -march=i386 -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/busspeedIL_i386-i386_O3


