#! /bin/sh

echo "Make Dhrystone v 2.1"

cc  dhry_1.c dhry_2.c cpuidc.c -o ../bin/amd64/dhrystone_amd64_fast -Ofast   -D options="\"amd64 ffase optimized\"" 
chmod +x ../bin/amd64/dhrystone_amd64_fast
cc  dhry_1.c dhry_2.c cpuidc.c -o ../bin/amd64/dhrystone_amd64 -O2 -D options="\"amd64 optimized\""
chmod +x ../bin/amd64/dhrystone_amd64

echo "Make Whetstone"

cc whets.c cpuidc.c -lm -lrt -o ../bin/amd64/whetstone_amd64_fast  -Ofast  -D opt="\"amd64 ffast optimized\""
chmod +x ../bin/amd64/whetstone_amd64_fast
cc whets.c cpuidc.c -lm -lrt -o ../bin/amd64/whetstone_amd64 -O2  -D opt="\"amd64  optimized\""
chmod +x ../bin/amd64/whetstone_amd64
echo "Make Memspeed"

cc memspeed.c cpuidc.c -lm -lrt -o ../bin/amd64/memspeed_amd64_fast -Ofast   -D options="\"amd64 ffast optimized\""
chmod +x ../bin/amd64/memspeed_amd64_fast
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/amd64/memspeed_amd64 -O2  -D options="\"amd64 ffast optimized\""
chmod +x ../bin/amd64/memspeed_amd64

echo "Make Linpack"

cc linpack.c cpuidc.c -lm -lrt -o ../bin/amd64/linpack_amd64_fast -Ofast   -D options="\"amd64 ffast optimized\""
chmod +x ../bin/amd64/linpack_amd64_fast
cc linpack.c cpuidc.c -lm -lrt -o ../bin/amd64/linpack_amd64 -O2  -D options="\"amd64  optimized\""
chmod +x ../bin/amd64/linpack_amd64

echo "Make Lloops"

cc lloops.c cpuidc.c -lm -lrt -o ../bin/amd64/lloops_amd64_fast -Ofast   -D options="\"amd64 ffast optimized\""
chmod +x ../bin/amd64/lloops_amd64_fast
cc lloops.c cpuidc.c -lm -lrt -o ../bin/amd64/lloops_amd64 -O2  -D options="\"amd64  optimized\""
chmod +x ../bin/amd64/lloops_amd64
