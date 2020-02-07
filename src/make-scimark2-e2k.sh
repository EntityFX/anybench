#!/bin/bash
mkdir "../bin/linux/"
mkdir "../bin/linux/e2k"

echo -e "Compile Scimark2\n"

cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/e2k/scimark2_e2k-elbrus-v3_O2 -O2 -march=elbrus-v3 -D options="\"e2k elbrus-v3 optimized\""
chmod +x ../bin/linux/e2k/scimark2_e2k-elbrus-v3_O2
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/e2k/scimark2_e2k-elbrus-v3_O3 -O3 -march=elbrus-v3 -D options="\"e2k elbrus-v3 optimized\""
chmod +x ../bin/linux/e2k/scimark2_e2k-elbrus-v3_O3
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/e2k/scimark2_e2k-elbrus-v3_O4 -O4 -march=elbrus-v3 -D options="\"e2k elbrus-v3 optimized\""
chmod +x ../bin/linux/e2k/scimark2_e2k-elbrus-v3_O4
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/e2k/scimark2_e2k-elbrus-v4_O2 -O2 -march=elbrus-v4 -D options="\"e2k elbrus-v4 optimized\""
chmod +x ../bin/linux/e2k/scimark2_e2k-elbrus-v4_O2
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/e2k/scimark2_e2k-elbrus-v4_ffast_O2 -O2 -ffast -fwhole -D options="\"e2k elbrus-v4 optimized\""
chmod +x ../bin/linux/e2k/scimark2_e2k-elbrus-v4_ffast_O2
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/e2k/scimark2_e2k-elbrus-v4_ffast_O2_elbrus-8c -O2 -mtune=elbrus-8c -ffast -fwhole -D options="\"e2k elbrus-v4 optimized\""
chmod +x ../bin/linux/e2k/scimark2_e2k-elbrus-v4_ffast_O2_elbrus-8c
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/e2k/scimark2_e2k-elbrus-v4_ffast_O2_elbrus-1c+ -O2 -mtune=elbrus-1c+ -ffast -fwhole -D options="\"e2k elbrus-v4 optimized\""
chmod +x ../bin/linux/e2k/scimark2_e2k-elbrus-v4_ffast_O2_elbrus-1c+
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/e2k/scimark2_e2k-elbrus-v4_O3 -O3 -march=elbrus-v4 -D options="\"e2k elbrus-v4 optimized\""
chmod +x ../bin/linux/e2k/scimark2_e2k-elbrus-v4_O3
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/e2k/scimark2_e2k-elbrus-v4_ffast_O3 -O3 -ffast -fwhole -D options="\"e2k elbrus-v4 optimized\""
chmod +x ../bin/linux/e2k/scimark2_e2k-elbrus-v4_ffast_O3
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/e2k/scimark2_e2k-elbrus-v4_ffast_O3_elbrus-8c -O3 -mtune=elbrus-8c -ffast -fwhole -D options="\"e2k elbrus-v4 optimized\""
chmod +x ../bin/linux/e2k/scimark2_e2k-elbrus-v4_ffast_O3_elbrus-8c
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/e2k/scimark2_e2k-elbrus-v4_ffast_O3_elbrus-1c+ -O3 -mtune=elbrus-1c+ -ffast -fwhole -D options="\"e2k elbrus-v4 optimized\""
chmod +x ../bin/linux/e2k/scimark2_e2k-elbrus-v4_ffast_O3_elbrus-1c+
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/e2k/scimark2_e2k-elbrus-v4_O4 -O4 -march=elbrus-v4 -D options="\"e2k elbrus-v4 optimized\""
chmod +x ../bin/linux/e2k/scimark2_e2k-elbrus-v4_O4
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/e2k/scimark2_e2k-elbrus-v4_ffast_O4 -O4 -ffast -fwhole -D options="\"e2k elbrus-v4 optimized\""
chmod +x ../bin/linux/e2k/scimark2_e2k-elbrus-v4_ffast_O4
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/e2k/scimark2_e2k-elbrus-v4_ffast_O4_elbrus-8c -O4 -mtune=elbrus-8c -ffast -fwhole -D options="\"e2k elbrus-v4 optimized\""
chmod +x ../bin/linux/e2k/scimark2_e2k-elbrus-v4_ffast_O4_elbrus-8c
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/e2k/scimark2_e2k-elbrus-v4_ffast_O4_elbrus-1c+ -O4 -mtune=elbrus-1c+ -ffast -fwhole -D options="\"e2k elbrus-v4 optimized\""
chmod +x ../bin/linux/e2k/scimark2_e2k-elbrus-v4_ffast_O4_elbrus-1c+
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/e2k/scimark2_e2k-elbrus-v5_O2 -O2 -march=elbrus-v5 -D options="\"e2k elbrus-v5 optimized\""
chmod +x ../bin/linux/e2k/scimark2_e2k-elbrus-v5_O2
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/e2k/scimark2_e2k-elbrus-v5_ffast_O2 -O2 -ffast -fwhole -D options="\"e2k elbrus-v5 optimized\""
chmod +x ../bin/linux/e2k/scimark2_e2k-elbrus-v5_ffast_O2
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/e2k/scimark2_e2k-elbrus-v5_ffast_O2_elbrus-8c2 -O2 -mtune=elbrus-8c2 -ffast -fwhole -D options="\"e2k elbrus-v5 optimized\""
chmod +x ../bin/linux/e2k/scimark2_e2k-elbrus-v5_ffast_O2_elbrus-8c2
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/e2k/scimark2_e2k-elbrus-v5_O3 -O3 -march=elbrus-v5 -D options="\"e2k elbrus-v5 optimized\""
chmod +x ../bin/linux/e2k/scimark2_e2k-elbrus-v5_O3
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/e2k/scimark2_e2k-elbrus-v5_ffast_O3 -O3 -ffast -fwhole -D options="\"e2k elbrus-v5 optimized\""
chmod +x ../bin/linux/e2k/scimark2_e2k-elbrus-v5_ffast_O3
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/e2k/scimark2_e2k-elbrus-v5_ffast_O3_elbrus-8c2 -O3 -mtune=elbrus-8c2 -ffast -fwhole -D options="\"e2k elbrus-v5 optimized\""
chmod +x ../bin/linux/e2k/scimark2_e2k-elbrus-v5_ffast_O3_elbrus-8c2
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/e2k/scimark2_e2k-elbrus-v5_O4 -O4 -march=elbrus-v5 -D options="\"e2k elbrus-v5 optimized\""
chmod +x ../bin/linux/e2k/scimark2_e2k-elbrus-v5_O4
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/e2k/scimark2_e2k-elbrus-v5_ffast_O4 -O4 -ffast -fwhole -D options="\"e2k elbrus-v5 optimized\""
chmod +x ../bin/linux/e2k/scimark2_e2k-elbrus-v5_ffast_O4
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/e2k/scimark2_e2k-elbrus-v5_ffast_O4_elbrus-8c2 -O4 -mtune=elbrus-8c2 -ffast -fwhole -D options="\"e2k elbrus-v5 optimized\""
chmod +x ../bin/linux/e2k/scimark2_e2k-elbrus-v5_ffast_O4_elbrus-8c2


