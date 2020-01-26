#! /bin/sh

echo "Make Dhrystone v 2.1"

clang dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/clang/dhrystone_clang -O3    -D options="\"clang optimized\"" 

echo "Make Whetstone"

clang whets.c cpuidc.c -lm -lrt -o ../bin/linux/clang/whetstone_clang  -O3   -D opt="\"clang optimized (ffast)\""


echo "Make Memspeed"

clang memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/clang/memspeed_clang -O3    -D options="\"clang optimized (ffast)\""



echo "Make Linpack"

clang linpack.c cpuidc.c -lm -lrt -o ../bin/linux/clang/linpack_clang -O3    -D options="\"clang optimized (ffast)\""


echo "Make Lloops"

clang lloops.c cpuidc.c -lm -lrt -o ../bin/linux/clang/lloops_clang -O3    -D options="\"clang optimized (ffast)\""


echo "Make WhetstoneMP"

clang mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/clang/whetstone_mp_clang -O3    -D options="\"clang optimized (ffast)\""

echo "Make MPMFlops"

clang mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/clang/mpmflops_mp_clang -O3    -D options="\"clang optimized (ffast)\""