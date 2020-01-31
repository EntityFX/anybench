#!/bin/bash
mkdir "../bin/linux/"
mkdir "../bin/linux/e2k"

echo -e "Compile Dhrystone v 2.1\n"

cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/e2k/dhrystone_e2k-v3_O2 -O2 -D options="\"e2k v3 optimized\""
chmod +x ../bin/linux/e2k/dhrystone_e2k-v3_O2
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/e2k/dhrystone_e2k-v3_O3 -O3 -D options="\"e2k v3 optimized\""
chmod +x ../bin/linux/e2k/dhrystone_e2k-v3_O3
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/e2k/dhrystone_e2k-v3_O4 -O4 -D options="\"e2k v3 optimized\""
chmod +x ../bin/linux/e2k/dhrystone_e2k-v3_O4
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/e2k/dhrystone_e2k-v4_O2 -O2 -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/dhrystone_e2k-v4_O2
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/e2k/dhrystone_e2k-v4_ffast_O2 -O2 -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/dhrystone_e2k-v4_ffast_O2
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/e2k/dhrystone_e2k-v4_ffast_O2_elbrus-8c -O2 -mtune=elbrus-8c -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/dhrystone_e2k-v4_ffast_O2_elbrus-8c
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/e2k/dhrystone_e2k-v4_ffast_O2_elbrus-1c+ -O2 -mtune=elbrus-1c+ -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/dhrystone_e2k-v4_ffast_O2_elbrus-1c+
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/e2k/dhrystone_e2k-v4_O3 -O3 -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/dhrystone_e2k-v4_O3
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/e2k/dhrystone_e2k-v4_ffast_O3 -O3 -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/dhrystone_e2k-v4_ffast_O3
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/e2k/dhrystone_e2k-v4_ffast_O3_elbrus-8c -O3 -mtune=elbrus-8c -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/dhrystone_e2k-v4_ffast_O3_elbrus-8c
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/e2k/dhrystone_e2k-v4_ffast_O3_elbrus-1c+ -O3 -mtune=elbrus-1c+ -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/dhrystone_e2k-v4_ffast_O3_elbrus-1c+
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/e2k/dhrystone_e2k-v4_O4 -O4 -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/dhrystone_e2k-v4_O4
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/e2k/dhrystone_e2k-v4_ffast_O4 -O4 -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/dhrystone_e2k-v4_ffast_O4
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/e2k/dhrystone_e2k-v4_ffast_O4_elbrus-8c -O4 -mtune=elbrus-8c -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/dhrystone_e2k-v4_ffast_O4_elbrus-8c
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/e2k/dhrystone_e2k-v4_ffast_O4_elbrus-1c+ -O4 -mtune=elbrus-1c+ -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/dhrystone_e2k-v4_ffast_O4_elbrus-1c+
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/e2k/dhrystone_e2k-v5_O2 -O2 -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/dhrystone_e2k-v5_O2
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/e2k/dhrystone_e2k-v5_ffast_O2 -O2 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/dhrystone_e2k-v5_ffast_O2
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/e2k/dhrystone_e2k-v5_ffast_O2_elbrus-8c2 -O2 -mtune=elbrus-8c2 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/dhrystone_e2k-v5_ffast_O2_elbrus-8c2
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/e2k/dhrystone_e2k-v5_O3 -O3 -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/dhrystone_e2k-v5_O3
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/e2k/dhrystone_e2k-v5_ffast_O3 -O3 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/dhrystone_e2k-v5_ffast_O3
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/e2k/dhrystone_e2k-v5_ffast_O3_elbrus-8c2 -O3 -mtune=elbrus-8c2 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/dhrystone_e2k-v5_ffast_O3_elbrus-8c2
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/e2k/dhrystone_e2k-v5_O4 -O4 -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/dhrystone_e2k-v5_O4
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/e2k/dhrystone_e2k-v5_ffast_O4 -O4 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/dhrystone_e2k-v5_ffast_O4
cc dhry_1.c dhry_2.c cpuidc.c -o ../bin/linux/e2k/dhrystone_e2k-v5_ffast_O4_elbrus-8c2 -O4 -mtune=elbrus-8c2 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/dhrystone_e2k-v5_ffast_O4_elbrus-8c2

echo -e "Compile Whetstone\n"

cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/whetstone_e2k-v3_O2 -O2 -D options="\"e2k v3 optimized\""
chmod +x ../bin/linux/e2k/whetstone_e2k-v3_O2
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/whetstone_e2k-v3_O3 -O3 -D options="\"e2k v3 optimized\""
chmod +x ../bin/linux/e2k/whetstone_e2k-v3_O3
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/whetstone_e2k-v3_O4 -O4 -D options="\"e2k v3 optimized\""
chmod +x ../bin/linux/e2k/whetstone_e2k-v3_O4
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/whetstone_e2k-v4_O2 -O2 -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/whetstone_e2k-v4_O2
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/whetstone_e2k-v4_ffast_O2 -O2 -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/whetstone_e2k-v4_ffast_O2
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/whetstone_e2k-v4_ffast_O2_elbrus-8c -O2 -mtune=elbrus-8c -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/whetstone_e2k-v4_ffast_O2_elbrus-8c
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/whetstone_e2k-v4_ffast_O2_elbrus-1c+ -O2 -mtune=elbrus-1c+ -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/whetstone_e2k-v4_ffast_O2_elbrus-1c+
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/whetstone_e2k-v4_O3 -O3 -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/whetstone_e2k-v4_O3
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/whetstone_e2k-v4_ffast_O3 -O3 -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/whetstone_e2k-v4_ffast_O3
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/whetstone_e2k-v4_ffast_O3_elbrus-8c -O3 -mtune=elbrus-8c -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/whetstone_e2k-v4_ffast_O3_elbrus-8c
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/whetstone_e2k-v4_ffast_O3_elbrus-1c+ -O3 -mtune=elbrus-1c+ -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/whetstone_e2k-v4_ffast_O3_elbrus-1c+
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/whetstone_e2k-v4_O4 -O4 -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/whetstone_e2k-v4_O4
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/whetstone_e2k-v4_ffast_O4 -O4 -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/whetstone_e2k-v4_ffast_O4
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/whetstone_e2k-v4_ffast_O4_elbrus-8c -O4 -mtune=elbrus-8c -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/whetstone_e2k-v4_ffast_O4_elbrus-8c
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/whetstone_e2k-v4_ffast_O4_elbrus-1c+ -O4 -mtune=elbrus-1c+ -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/whetstone_e2k-v4_ffast_O4_elbrus-1c+
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/whetstone_e2k-v5_O2 -O2 -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/whetstone_e2k-v5_O2
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/whetstone_e2k-v5_ffast_O2 -O2 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/whetstone_e2k-v5_ffast_O2
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/whetstone_e2k-v5_ffast_O2_elbrus-8c2 -O2 -mtune=elbrus-8c2 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/whetstone_e2k-v5_ffast_O2_elbrus-8c2
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/whetstone_e2k-v5_O3 -O3 -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/whetstone_e2k-v5_O3
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/whetstone_e2k-v5_ffast_O3 -O3 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/whetstone_e2k-v5_ffast_O3
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/whetstone_e2k-v5_ffast_O3_elbrus-8c2 -O3 -mtune=elbrus-8c2 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/whetstone_e2k-v5_ffast_O3_elbrus-8c2
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/whetstone_e2k-v5_O4 -O4 -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/whetstone_e2k-v5_O4
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/whetstone_e2k-v5_ffast_O4 -O4 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/whetstone_e2k-v5_ffast_O4
cc whets.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/whetstone_e2k-v5_ffast_O4_elbrus-8c2 -O4 -mtune=elbrus-8c2 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/whetstone_e2k-v5_ffast_O4_elbrus-8c2

echo -e "Compile Memspeed\n"

cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/memspeed_e2k-v3_O2 -O2 -D options="\"e2k v3 optimized\""
chmod +x ../bin/linux/e2k/memspeed_e2k-v3_O2
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/memspeed_e2k-v3_O3 -O3 -D options="\"e2k v3 optimized\""
chmod +x ../bin/linux/e2k/memspeed_e2k-v3_O3
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/memspeed_e2k-v3_O4 -O4 -D options="\"e2k v3 optimized\""
chmod +x ../bin/linux/e2k/memspeed_e2k-v3_O4
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/memspeed_e2k-v4_O2 -O2 -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/memspeed_e2k-v4_O2
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/memspeed_e2k-v4_ffast_O2 -O2 -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/memspeed_e2k-v4_ffast_O2
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/memspeed_e2k-v4_ffast_O2_elbrus-8c -O2 -mtune=elbrus-8c -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/memspeed_e2k-v4_ffast_O2_elbrus-8c
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/memspeed_e2k-v4_ffast_O2_elbrus-1c+ -O2 -mtune=elbrus-1c+ -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/memspeed_e2k-v4_ffast_O2_elbrus-1c+
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/memspeed_e2k-v4_O3 -O3 -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/memspeed_e2k-v4_O3
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/memspeed_e2k-v4_ffast_O3 -O3 -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/memspeed_e2k-v4_ffast_O3
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/memspeed_e2k-v4_ffast_O3_elbrus-8c -O3 -mtune=elbrus-8c -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/memspeed_e2k-v4_ffast_O3_elbrus-8c
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/memspeed_e2k-v4_ffast_O3_elbrus-1c+ -O3 -mtune=elbrus-1c+ -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/memspeed_e2k-v4_ffast_O3_elbrus-1c+
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/memspeed_e2k-v4_O4 -O4 -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/memspeed_e2k-v4_O4
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/memspeed_e2k-v4_ffast_O4 -O4 -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/memspeed_e2k-v4_ffast_O4
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/memspeed_e2k-v4_ffast_O4_elbrus-8c -O4 -mtune=elbrus-8c -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/memspeed_e2k-v4_ffast_O4_elbrus-8c
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/memspeed_e2k-v4_ffast_O4_elbrus-1c+ -O4 -mtune=elbrus-1c+ -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/memspeed_e2k-v4_ffast_O4_elbrus-1c+
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/memspeed_e2k-v5_O2 -O2 -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/memspeed_e2k-v5_O2
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/memspeed_e2k-v5_ffast_O2 -O2 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/memspeed_e2k-v5_ffast_O2
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/memspeed_e2k-v5_ffast_O2_elbrus-8c2 -O2 -mtune=elbrus-8c2 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/memspeed_e2k-v5_ffast_O2_elbrus-8c2
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/memspeed_e2k-v5_O3 -O3 -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/memspeed_e2k-v5_O3
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/memspeed_e2k-v5_ffast_O3 -O3 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/memspeed_e2k-v5_ffast_O3
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/memspeed_e2k-v5_ffast_O3_elbrus-8c2 -O3 -mtune=elbrus-8c2 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/memspeed_e2k-v5_ffast_O3_elbrus-8c2
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/memspeed_e2k-v5_O4 -O4 -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/memspeed_e2k-v5_O4
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/memspeed_e2k-v5_ffast_O4 -O4 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/memspeed_e2k-v5_ffast_O4
cc memspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/memspeed_e2k-v5_ffast_O4_elbrus-8c2 -O4 -mtune=elbrus-8c2 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/memspeed_e2k-v5_ffast_O4_elbrus-8c2

echo -e "Compile Linpack\n"

cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/linpack_e2k-v3_O2 -O2 -D options="\"e2k v3 optimized\""
chmod +x ../bin/linux/e2k/linpack_e2k-v3_O2
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/linpack_e2k-v3_O3 -O3 -D options="\"e2k v3 optimized\""
chmod +x ../bin/linux/e2k/linpack_e2k-v3_O3
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/linpack_e2k-v3_O4 -O4 -D options="\"e2k v3 optimized\""
chmod +x ../bin/linux/e2k/linpack_e2k-v3_O4
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/linpack_e2k-v4_O2 -O2 -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/linpack_e2k-v4_O2
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/linpack_e2k-v4_ffast_O2 -O2 -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/linpack_e2k-v4_ffast_O2
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/linpack_e2k-v4_ffast_O2_elbrus-8c -O2 -mtune=elbrus-8c -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/linpack_e2k-v4_ffast_O2_elbrus-8c
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/linpack_e2k-v4_ffast_O2_elbrus-1c+ -O2 -mtune=elbrus-1c+ -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/linpack_e2k-v4_ffast_O2_elbrus-1c+
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/linpack_e2k-v4_O3 -O3 -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/linpack_e2k-v4_O3
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/linpack_e2k-v4_ffast_O3 -O3 -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/linpack_e2k-v4_ffast_O3
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/linpack_e2k-v4_ffast_O3_elbrus-8c -O3 -mtune=elbrus-8c -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/linpack_e2k-v4_ffast_O3_elbrus-8c
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/linpack_e2k-v4_ffast_O3_elbrus-1c+ -O3 -mtune=elbrus-1c+ -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/linpack_e2k-v4_ffast_O3_elbrus-1c+
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/linpack_e2k-v4_O4 -O4 -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/linpack_e2k-v4_O4
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/linpack_e2k-v4_ffast_O4 -O4 -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/linpack_e2k-v4_ffast_O4
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/linpack_e2k-v4_ffast_O4_elbrus-8c -O4 -mtune=elbrus-8c -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/linpack_e2k-v4_ffast_O4_elbrus-8c
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/linpack_e2k-v4_ffast_O4_elbrus-1c+ -O4 -mtune=elbrus-1c+ -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/linpack_e2k-v4_ffast_O4_elbrus-1c+
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/linpack_e2k-v5_O2 -O2 -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/linpack_e2k-v5_O2
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/linpack_e2k-v5_ffast_O2 -O2 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/linpack_e2k-v5_ffast_O2
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/linpack_e2k-v5_ffast_O2_elbrus-8c2 -O2 -mtune=elbrus-8c2 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/linpack_e2k-v5_ffast_O2_elbrus-8c2
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/linpack_e2k-v5_O3 -O3 -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/linpack_e2k-v5_O3
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/linpack_e2k-v5_ffast_O3 -O3 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/linpack_e2k-v5_ffast_O3
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/linpack_e2k-v5_ffast_O3_elbrus-8c2 -O3 -mtune=elbrus-8c2 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/linpack_e2k-v5_ffast_O3_elbrus-8c2
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/linpack_e2k-v5_O4 -O4 -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/linpack_e2k-v5_O4
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/linpack_e2k-v5_ffast_O4 -O4 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/linpack_e2k-v5_ffast_O4
cc linpack.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/linpack_e2k-v5_ffast_O4_elbrus-8c2 -O4 -mtune=elbrus-8c2 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/linpack_e2k-v5_ffast_O4_elbrus-8c2

echo -e "Compile Lloops\n"

cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/lloops_e2k-v3_O2 -O2 -D options="\"e2k v3 optimized\""
chmod +x ../bin/linux/e2k/lloops_e2k-v3_O2
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/lloops_e2k-v3_O3 -O3 -D options="\"e2k v3 optimized\""
chmod +x ../bin/linux/e2k/lloops_e2k-v3_O3
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/lloops_e2k-v3_O4 -O4 -D options="\"e2k v3 optimized\""
chmod +x ../bin/linux/e2k/lloops_e2k-v3_O4
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/lloops_e2k-v4_O2 -O2 -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/lloops_e2k-v4_O2
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/lloops_e2k-v4_ffast_O2 -O2 -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/lloops_e2k-v4_ffast_O2
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/lloops_e2k-v4_ffast_O2_elbrus-8c -O2 -mtune=elbrus-8c -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/lloops_e2k-v4_ffast_O2_elbrus-8c
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/lloops_e2k-v4_ffast_O2_elbrus-1c+ -O2 -mtune=elbrus-1c+ -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/lloops_e2k-v4_ffast_O2_elbrus-1c+
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/lloops_e2k-v4_O3 -O3 -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/lloops_e2k-v4_O3
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/lloops_e2k-v4_ffast_O3 -O3 -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/lloops_e2k-v4_ffast_O3
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/lloops_e2k-v4_ffast_O3_elbrus-8c -O3 -mtune=elbrus-8c -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/lloops_e2k-v4_ffast_O3_elbrus-8c
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/lloops_e2k-v4_ffast_O3_elbrus-1c+ -O3 -mtune=elbrus-1c+ -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/lloops_e2k-v4_ffast_O3_elbrus-1c+
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/lloops_e2k-v4_O4 -O4 -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/lloops_e2k-v4_O4
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/lloops_e2k-v4_ffast_O4 -O4 -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/lloops_e2k-v4_ffast_O4
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/lloops_e2k-v4_ffast_O4_elbrus-8c -O4 -mtune=elbrus-8c -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/lloops_e2k-v4_ffast_O4_elbrus-8c
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/lloops_e2k-v4_ffast_O4_elbrus-1c+ -O4 -mtune=elbrus-1c+ -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/lloops_e2k-v4_ffast_O4_elbrus-1c+
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/lloops_e2k-v5_O2 -O2 -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/lloops_e2k-v5_O2
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/lloops_e2k-v5_ffast_O2 -O2 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/lloops_e2k-v5_ffast_O2
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/lloops_e2k-v5_ffast_O2_elbrus-8c2 -O2 -mtune=elbrus-8c2 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/lloops_e2k-v5_ffast_O2_elbrus-8c2
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/lloops_e2k-v5_O3 -O3 -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/lloops_e2k-v5_O3
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/lloops_e2k-v5_ffast_O3 -O3 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/lloops_e2k-v5_ffast_O3
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/lloops_e2k-v5_ffast_O3_elbrus-8c2 -O3 -mtune=elbrus-8c2 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/lloops_e2k-v5_ffast_O3_elbrus-8c2
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/lloops_e2k-v5_O4 -O4 -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/lloops_e2k-v5_O4
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/lloops_e2k-v5_ffast_O4 -O4 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/lloops_e2k-v5_ffast_O4
cc lloops.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/lloops_e2k-v5_ffast_O4_elbrus-8c2 -O4 -mtune=elbrus-8c2 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/lloops_e2k-v5_ffast_O4_elbrus-8c2

echo -e "Compile WhetstoneMP\n"

cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/whetstone_mp_e2k-v3_O2 -O2 -D options="\"e2k v3 optimized\""
chmod +x ../bin/linux/e2k/whetstone_mp_e2k-v3_O2
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/whetstone_mp_e2k-v3_O3 -O3 -D options="\"e2k v3 optimized\""
chmod +x ../bin/linux/e2k/whetstone_mp_e2k-v3_O3
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/whetstone_mp_e2k-v3_O4 -O4 -D options="\"e2k v3 optimized\""
chmod +x ../bin/linux/e2k/whetstone_mp_e2k-v3_O4
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/whetstone_mp_e2k-v4_O2 -O2 -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/whetstone_mp_e2k-v4_O2
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/whetstone_mp_e2k-v4_ffast_O2 -O2 -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/whetstone_mp_e2k-v4_ffast_O2
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/whetstone_mp_e2k-v4_ffast_O2_elbrus-8c -O2 -mtune=elbrus-8c -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/whetstone_mp_e2k-v4_ffast_O2_elbrus-8c
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/whetstone_mp_e2k-v4_ffast_O2_elbrus-1c+ -O2 -mtune=elbrus-1c+ -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/whetstone_mp_e2k-v4_ffast_O2_elbrus-1c+
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/whetstone_mp_e2k-v4_O3 -O3 -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/whetstone_mp_e2k-v4_O3
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/whetstone_mp_e2k-v4_ffast_O3 -O3 -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/whetstone_mp_e2k-v4_ffast_O3
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/whetstone_mp_e2k-v4_ffast_O3_elbrus-8c -O3 -mtune=elbrus-8c -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/whetstone_mp_e2k-v4_ffast_O3_elbrus-8c
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/whetstone_mp_e2k-v4_ffast_O3_elbrus-1c+ -O3 -mtune=elbrus-1c+ -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/whetstone_mp_e2k-v4_ffast_O3_elbrus-1c+
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/whetstone_mp_e2k-v4_O4 -O4 -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/whetstone_mp_e2k-v4_O4
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/whetstone_mp_e2k-v4_ffast_O4 -O4 -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/whetstone_mp_e2k-v4_ffast_O4
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/whetstone_mp_e2k-v4_ffast_O4_elbrus-8c -O4 -mtune=elbrus-8c -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/whetstone_mp_e2k-v4_ffast_O4_elbrus-8c
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/whetstone_mp_e2k-v4_ffast_O4_elbrus-1c+ -O4 -mtune=elbrus-1c+ -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/whetstone_mp_e2k-v4_ffast_O4_elbrus-1c+
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/whetstone_mp_e2k-v5_O2 -O2 -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/whetstone_mp_e2k-v5_O2
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/whetstone_mp_e2k-v5_ffast_O2 -O2 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/whetstone_mp_e2k-v5_ffast_O2
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/whetstone_mp_e2k-v5_ffast_O2_elbrus-8c2 -O2 -mtune=elbrus-8c2 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/whetstone_mp_e2k-v5_ffast_O2_elbrus-8c2
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/whetstone_mp_e2k-v5_O3 -O3 -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/whetstone_mp_e2k-v5_O3
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/whetstone_mp_e2k-v5_ffast_O3 -O3 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/whetstone_mp_e2k-v5_ffast_O3
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/whetstone_mp_e2k-v5_ffast_O3_elbrus-8c2 -O3 -mtune=elbrus-8c2 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/whetstone_mp_e2k-v5_ffast_O3_elbrus-8c2
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/whetstone_mp_e2k-v5_O4 -O4 -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/whetstone_mp_e2k-v5_O4
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/whetstone_mp_e2k-v5_ffast_O4 -O4 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/whetstone_mp_e2k-v5_ffast_O4
cc mp/whetsmp.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/whetstone_mp_e2k-v5_ffast_O4_elbrus-8c2 -O4 -mtune=elbrus-8c2 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/whetstone_mp_e2k-v5_ffast_O4_elbrus-8c2

echo -e "Compile MPMFlops\n"

cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/mpmflops_e2k-v3_O2 -O2 -D options="\"e2k v3 optimized\""
chmod +x ../bin/linux/e2k/mpmflops_e2k-v3_O2
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/mpmflops_e2k-v3_O3 -O3 -D options="\"e2k v3 optimized\""
chmod +x ../bin/linux/e2k/mpmflops_e2k-v3_O3
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/mpmflops_e2k-v3_O4 -O4 -D options="\"e2k v3 optimized\""
chmod +x ../bin/linux/e2k/mpmflops_e2k-v3_O4
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/mpmflops_e2k-v4_O2 -O2 -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/mpmflops_e2k-v4_O2
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/mpmflops_e2k-v4_ffast_O2 -O2 -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/mpmflops_e2k-v4_ffast_O2
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/mpmflops_e2k-v4_ffast_O2_elbrus-8c -O2 -mtune=elbrus-8c -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/mpmflops_e2k-v4_ffast_O2_elbrus-8c
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/mpmflops_e2k-v4_ffast_O2_elbrus-1c+ -O2 -mtune=elbrus-1c+ -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/mpmflops_e2k-v4_ffast_O2_elbrus-1c+
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/mpmflops_e2k-v4_O3 -O3 -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/mpmflops_e2k-v4_O3
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/mpmflops_e2k-v4_ffast_O3 -O3 -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/mpmflops_e2k-v4_ffast_O3
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/mpmflops_e2k-v4_ffast_O3_elbrus-8c -O3 -mtune=elbrus-8c -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/mpmflops_e2k-v4_ffast_O3_elbrus-8c
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/mpmflops_e2k-v4_ffast_O3_elbrus-1c+ -O3 -mtune=elbrus-1c+ -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/mpmflops_e2k-v4_ffast_O3_elbrus-1c+
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/mpmflops_e2k-v4_O4 -O4 -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/mpmflops_e2k-v4_O4
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/mpmflops_e2k-v4_ffast_O4 -O4 -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/mpmflops_e2k-v4_ffast_O4
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/mpmflops_e2k-v4_ffast_O4_elbrus-8c -O4 -mtune=elbrus-8c -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/mpmflops_e2k-v4_ffast_O4_elbrus-8c
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/mpmflops_e2k-v4_ffast_O4_elbrus-1c+ -O4 -mtune=elbrus-1c+ -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/mpmflops_e2k-v4_ffast_O4_elbrus-1c+
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/mpmflops_e2k-v5_O2 -O2 -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/mpmflops_e2k-v5_O2
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/mpmflops_e2k-v5_ffast_O2 -O2 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/mpmflops_e2k-v5_ffast_O2
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/mpmflops_e2k-v5_ffast_O2_elbrus-8c2 -O2 -mtune=elbrus-8c2 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/mpmflops_e2k-v5_ffast_O2_elbrus-8c2
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/mpmflops_e2k-v5_O3 -O3 -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/mpmflops_e2k-v5_O3
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/mpmflops_e2k-v5_ffast_O3 -O3 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/mpmflops_e2k-v5_ffast_O3
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/mpmflops_e2k-v5_ffast_O3_elbrus-8c2 -O3 -mtune=elbrus-8c2 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/mpmflops_e2k-v5_ffast_O3_elbrus-8c2
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/mpmflops_e2k-v5_O4 -O4 -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/mpmflops_e2k-v5_O4
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/mpmflops_e2k-v5_ffast_O4 -O4 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/mpmflops_e2k-v5_ffast_O4
cc mp/mpmflops.c mp/cpuidc64.c -m64 -pthread -lm -lrt -o ../bin/linux/e2k/mpmflops_e2k-v5_ffast_O4_elbrus-8c2 -O4 -mtune=elbrus-8c2 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/mpmflops_e2k-v5_ffast_O4_elbrus-8c2

echo -e "Compile busspeedIL\n"

cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/busspeedIL_e2k-v3_O2 -O2 -D options="\"e2k v3 optimized\""
chmod +x ../bin/linux/e2k/busspeedIL_e2k-v3_O2
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/busspeedIL_e2k-v3_O3 -O3 -D options="\"e2k v3 optimized\""
chmod +x ../bin/linux/e2k/busspeedIL_e2k-v3_O3
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/busspeedIL_e2k-v3_O4 -O4 -D options="\"e2k v3 optimized\""
chmod +x ../bin/linux/e2k/busspeedIL_e2k-v3_O4
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/busspeedIL_e2k-v4_O2 -O2 -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/busspeedIL_e2k-v4_O2
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/busspeedIL_e2k-v4_ffast_O2 -O2 -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/busspeedIL_e2k-v4_ffast_O2
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/busspeedIL_e2k-v4_ffast_O2_elbrus-8c -O2 -mtune=elbrus-8c -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/busspeedIL_e2k-v4_ffast_O2_elbrus-8c
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/busspeedIL_e2k-v4_ffast_O2_elbrus-1c+ -O2 -mtune=elbrus-1c+ -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/busspeedIL_e2k-v4_ffast_O2_elbrus-1c+
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/busspeedIL_e2k-v4_O3 -O3 -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/busspeedIL_e2k-v4_O3
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/busspeedIL_e2k-v4_ffast_O3 -O3 -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/busspeedIL_e2k-v4_ffast_O3
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/busspeedIL_e2k-v4_ffast_O3_elbrus-8c -O3 -mtune=elbrus-8c -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/busspeedIL_e2k-v4_ffast_O3_elbrus-8c
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/busspeedIL_e2k-v4_ffast_O3_elbrus-1c+ -O3 -mtune=elbrus-1c+ -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/busspeedIL_e2k-v4_ffast_O3_elbrus-1c+
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/busspeedIL_e2k-v4_O4 -O4 -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/busspeedIL_e2k-v4_O4
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/busspeedIL_e2k-v4_ffast_O4 -O4 -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/busspeedIL_e2k-v4_ffast_O4
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/busspeedIL_e2k-v4_ffast_O4_elbrus-8c -O4 -mtune=elbrus-8c -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/busspeedIL_e2k-v4_ffast_O4_elbrus-8c
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/busspeedIL_e2k-v4_ffast_O4_elbrus-1c+ -O4 -mtune=elbrus-1c+ -ffast -fwhole -D options="\"e2k v4 optimized\""
chmod +x ../bin/linux/e2k/busspeedIL_e2k-v4_ffast_O4_elbrus-1c+
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/busspeedIL_e2k-v5_O2 -O2 -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/busspeedIL_e2k-v5_O2
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/busspeedIL_e2k-v5_ffast_O2 -O2 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/busspeedIL_e2k-v5_ffast_O2
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/busspeedIL_e2k-v5_ffast_O2_elbrus-8c2 -O2 -mtune=elbrus-8c2 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/busspeedIL_e2k-v5_ffast_O2_elbrus-8c2
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/busspeedIL_e2k-v5_O3 -O3 -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/busspeedIL_e2k-v5_O3
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/busspeedIL_e2k-v5_ffast_O3 -O3 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/busspeedIL_e2k-v5_ffast_O3
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/busspeedIL_e2k-v5_ffast_O3_elbrus-8c2 -O3 -mtune=elbrus-8c2 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/busspeedIL_e2k-v5_ffast_O3_elbrus-8c2
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/busspeedIL_e2k-v5_O4 -O4 -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/busspeedIL_e2k-v5_O4
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/busspeedIL_e2k-v5_ffast_O4 -O4 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/busspeedIL_e2k-v5_ffast_O4
cc busspeed.c cpuidc.c -lm -lrt -o ../bin/linux/e2k/busspeedIL_e2k-v5_ffast_O4_elbrus-8c2 -O4 -mtune=elbrus-8c2 -ffast -fwhole -D options="\"e2k v5 optimized\""
chmod +x ../bin/linux/e2k/busspeedIL_e2k-v5_ffast_O4_elbrus-8c2


