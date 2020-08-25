#!/bin/bash
mkdir "../bin/linux"
mkdir "../bin/linux/i386"

cc="gcc"

echo -e "Compile Dhrystone v 2.1\n"

gcc dhry_1.c dhry_2.c cpuidc.c  -o ../bin/linux/i386/dhrystone_i386-i386_O2 -O2 -march=i386 -Wno-implicit -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/dhrystone_i386-i386_O2
gcc dhry_1.c dhry_2.c cpuidc.c  -o ../bin/linux/i386/dhrystone_i386-i386_O3 -O3 -march=i386 -Wno-implicit -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/dhrystone_i386-i386_O3
gcc dhry_1.c dhry_2.c cpuidc.c  -o ../bin/linux/i386/dhrystone_i386-i686_O2 -O2 -march=i686 -Wno-implicit -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/dhrystone_i386-i686_O2
gcc dhry_1.c dhry_2.c cpuidc.c  -o ../bin/linux/i386/dhrystone_i386-i686_O3 -O3 -march=i686 -Wno-implicit -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/dhrystone_i386-i686_O3

echo -e "Compile Whetstone\n"

cc whets.c cpuidc.c -lm -lrt  -o ../bin/linux/i386/whetstone_i386-i386_O2 -O2 -march=i386 -Wno-implicit -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/whetstone_i386-i386_O2
cc whets.c cpuidc.c -lm -lrt  -o ../bin/linux/i386/whetstone_i386-i386_O3 -O3 -march=i386 -Wno-implicit -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/whetstone_i386-i386_O3
cc whets.c cpuidc.c -lm -lrt  -o ../bin/linux/i386/whetstone_i386-i686_O2 -O2 -march=i686 -Wno-implicit -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/whetstone_i386-i686_O2
cc whets.c cpuidc.c -lm -lrt  -o ../bin/linux/i386/whetstone_i386-i686_O3 -O3 -march=i686 -Wno-implicit -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/whetstone_i386-i686_O3

echo -e "Compile Memspeed\n"

cc memspeed.c cpuidc.c -lm -lrt  -o ../bin/linux/i386/memspeed_i386-i386_O2 -O2 -march=i386 -Wno-implicit -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/memspeed_i386-i386_O2
cc memspeed.c cpuidc.c -lm -lrt  -o ../bin/linux/i386/memspeed_i386-i386_O3 -O3 -march=i386 -Wno-implicit -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/memspeed_i386-i386_O3
cc memspeed.c cpuidc.c -lm -lrt  -o ../bin/linux/i386/memspeed_i386-i686_O2 -O2 -march=i686 -Wno-implicit -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/memspeed_i386-i686_O2
cc memspeed.c cpuidc.c -lm -lrt  -o ../bin/linux/i386/memspeed_i386-i686_O3 -O3 -march=i686 -Wno-implicit -D options="\"i386 i686 optimized\""
chmod +x ../bin/Linux/i386/memspeed_i386-i686_O3

echo -e "Compile Linpack\n"

cc linpack.c cpuidc.c -lm -lrt  -o ../bin/linux/i386/linpack_i386-i386_O2 -O2 -march=i386 -Wno-implicit -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/linpack_i386-i386_O2
cc linpack.c cpuidc.c -lm -lrt  -o ../bin/linux/i386/linpack_i386-i386_O3 -O3 -march=i386 -Wno-implicit -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/linpack_i386-i386_O3
cc linpack.c cpuidc.c -lm -lrt  -o ../bin/linux/i386/linpack_i386-i686_O2 -O2 -march=i686 -Wno-implicit -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/linpack_i386-i686_O2
cc linpack.c cpuidc.c -lm -lrt  -o ../bin/linux/i386/linpack_i386-i686_O3 -O3 -march=i686 -Wno-implicit -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/linpack_i386-i686_O3

echo -e "Compile Lloops\n"

cc lloops.c cpuidc.c -lm -lrt  -o ../bin/linux/i386/lloops_i386-i386_O2 -O2 -march=i386 -Wno-implicit -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/lloops_i386-i386_O2
cc lloops.c cpuidc.c -lm -lrt  -o ../bin/linux/i386/lloops_i386-i386_O3 -O3 -march=i386 -Wno-implicit -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/lloops_i386-i386_O3
cc lloops.c cpuidc.c -lm -lrt  -o ../bin/linux/i386/lloops_i386-i686_O2 -O2 -march=i686 -Wno-implicit -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/lloops_i386-i686_O2
cc lloops.c cpuidc.c -lm -lrt  -o ../bin/linux/i386/lloops_i386-i686_O3 -O3 -march=i686 -Wno-implicit -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/lloops_i386-i686_O3

echo -e "Compile WhetstoneMP\n"

cc mp/whetsmp.c mp/cpuidc.c -pthread -lm -lrt -m32 -o ../bin/linux/i386/whetstone_mp_i386-i386_O2 -O2 -march=i386 -Wno-implicit -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/whetstone_mp_i386-i386_O2
cc mp/whetsmp.c mp/cpuidc.c -pthread -lm -lrt -m32 -o ../bin/linux/i386/whetstone_mp_i386-i386_O3 -O3 -march=i386 -Wno-implicit -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/whetstone_mp_i386-i386_O3
cc mp/whetsmp.c mp/cpuidc.c -pthread -lm -lrt -m32 -o ../bin/linux/i386/whetstone_mp_i386-i686_O2 -O2 -march=i686 -Wno-implicit -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/whetstone_mp_i386-i686_O2
cc mp/whetsmp.c mp/cpuidc.c -pthread -lm -lrt -m32 -o ../bin/linux/i386/whetstone_mp_i386-i686_O3 -O3 -march=i686 -Wno-implicit -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/whetstone_mp_i386-i686_O3

echo -e "Compile MPMFlops\n"

cc mp/mpmflops.c mp/cpuidc.c -pthread -lm -lrt -m32 -o ../bin/linux/i386/mpmflops_i386-i386_O2 -O2 -march=i386 -Wno-implicit -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/mpmflops_i386-i386_O2
cc mp/mpmflops.c mp/cpuidc.c -pthread -lm -lrt -m32 -o ../bin/linux/i386/mpmflops_i386-i386_O3 -O3 -march=i386 -Wno-implicit -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/mpmflops_i386-i386_O3
cc mp/mpmflops.c mp/cpuidc.c -pthread -lm -lrt -m32 -o ../bin/linux/i386/mpmflops_i386-i686_O2 -O2 -march=i686 -Wno-implicit -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/mpmflops_i386-i686_O2
cc mp/mpmflops.c mp/cpuidc.c -pthread -lm -lrt -m32 -o ../bin/linux/i386/mpmflops_i386-i686_O3 -O3 -march=i686 -Wno-implicit -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/mpmflops_i386-i686_O3

echo -e "Compile busspeedIL\n"

cc busspeed.c cpuidc.c -lm -lrt  -o ../bin/linux/i386/busspeedIL_i386-i386_O2 -O2 -march=i386 -Wno-implicit -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/busspeedIL_i386-i386_O2
cc busspeed.c cpuidc.c -lm -lrt  -o ../bin/linux/i386/busspeedIL_i386-i386_O3 -O3 -march=i386 -Wno-implicit -D options="\"i386 i386 optimized\""
chmod +x ../bin/linux/i386/busspeedIL_i386-i386_O3
cc busspeed.c cpuidc.c -lm -lrt  -o ../bin/linux/i386/busspeedIL_i386-i686_O2 -O2 -march=i686 -Wno-implicit -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/busspeedIL_i386-i686_O2
cc busspeed.c cpuidc.c -lm -lrt  -o ../bin/linux/i386/busspeedIL_i386-i686_O3 -O3 -march=i686 -Wno-implicit -D options="\"i386 i686 optimized\""
chmod +x ../bin/linux/i386/busspeedIL_i386-i686_O3


