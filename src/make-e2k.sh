#! /bin/sh

echo "Make Dhrystone v 2.1"

cc  dhry_1.c dhry_2.c cpuidc.c -o ../bin/e2k/dhrystone_e2k_elbrus-8c_ffast -O4 -march=elbrus-v4 -mtune=elbrus-8c -ffast -D options="\"e2k elbrus-v4 optimized\"" 
cc  dhry_1.c dhry_2.c cpuidc.c -o ../bin/e2k/dhrystone_e2k_elbrus-8c -O4 -march=elbrus-v4 -mtune=elbrus-8c -D options="\"e2k elbrus-v4 optimized\""
cc  dhry_1.c dhry_2.c cpuidc.c -o ../bin/e2k/dhrystone_e2k_elbrus-v4 -O4 -march=elbrus-v4 -D options="\"e2k elbrus-v4 optimized\""
cc  dhry_1.c dhry_2.c cpuidc.c -o ../bin/e2k/dhrystone_e2k_elbrus-v3 -O4 -march=elbrus-v3 -D options="\"e2k elbrus-v3 optimized\""

echo "Make Whetstone"

cc whets.c cpuidc.c -lm -lrt -o ../bin/e2k/whetstone_e2k_elbrus-8c_ffast -ffast -O4 -march=elbrus-v4 -mtune=elbrus-8c -D opt="\"e2k elbrus-v4 optimized (ffast)\""
cc whets.c cpuidc.c -lm -lrt -o ../bin/e2k/whetstone_e2k_elbrus-8c -O3 -march=elbrus-v4 -mtune=elbrus-8c -D opt="\"e2k elbrus-v4 optimized\""
cc whets.c cpuidc.c -lm -lrt -o ../bin/e2k/whetstone_e2k_elbrus-v4 -O3 -march=elbrus-v4 -D opt="\"e2k elbrus-v4 optimized\""
cc whets.c cpuidc.c -lm -lrt -o ../bin/e2k/whetstone_e2k_elbrus-v3 -O3 -march=elbrus-v3 -D opt="\"e2k elbrus-v3 optimized\""


echo "Make Memspeed"

cc memspeed.c cpuidc.c -lm -lrt -o ../bin/e2k/memspeed_e2k_elbrus-8c_ffast -O4 -ffast -march=elbrus-v4 -mtune=elbrus-8c -D options="\"e2k elbrus-v4 optimized (ffast)\""
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/e2k/memspeed_e2k_elbrus-8c -O3 -march=elbrus-v4 -mtune=elbrus-8c -D options="\"e2k elbrus-v4 optimized (ffast)\""
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/e2k/memspeed_e2k_elbrus-v3 -O3 -march=elbrus-v3 -D options="\"e2k elbrus-v3 optimized\""
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/e2k/memspeed_e2k_elbrus-v4 -O3 -march=elbrus-v4 -D options="\"e2k elbrus-v4 optimized\""


echo "Make Linpack"

cc linpack.c cpuidc.c -lm -lrt -o ../bin/e2k/linpack_e2k_elbrus-8c_ffast -O4 -ffast -march=elbrus-v4 -mtune=elbrus-8c -D options="\"e2k elbrus-v4 optimized (ffast)\""
cc linpack.c cpuidc.c -lm -lrt -o ../bin/e2k/linpack_e2k_elbrus-8c -O3 -march=elbrus-v4 -mtune=elbrus-8c -D options="\"e2k elbrus-v4 optimized\""
cc linpack.c cpuidc.c -lm -lrt -o ../bin/e2k/linpack_e2k_elbrus-v3 -O3 -march=elbrus-v3 -D options="\"e2k elbrus-v3 optimized\""
cc linpack.c cpuidc.c -lm -lrt -o ../bin/e2k/linpack_e2k_elbrus-v4 -O3 -march=elbrus-v4 -D options="\"e2k elbrus-v4 optimized\""

echo "Make Lloops"

cc lloops.c cpuidc.c -lm -lrt -o ../bin/e2k/lloops_e2k_elbrus-8c_ffast -O4 -ffast -march=elbrus-v4 -mtune=elbrus-8c -D options="\"e2k elbrus-v4 optimized (ffast)\""
cc lloops.c cpuidc.c -lm -lrt -o ../bin/e2k/lloops_e2k_elbrus-8c -O3 -march=elbrus-v4 -mtune=elbrus-8c -D options="\"e2k elbrus-v4 optimized\""
cc lloops.c cpuidc.c -lm -lrt -o ../bin/e2k/lloops_e2k_elbrus-v3 -O3 -march=elbrus-v3 -D options="\"e2k elbrus-v3 optimized\""
cc lloops.c cpuidc.c -lm -lrt -o ../bin/e2k/lloops_e2k_elbrus-v4 -O3 -march=elbrus-v4 -D options="\"e2k elbrus-v4 optimized\""
