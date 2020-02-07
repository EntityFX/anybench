#!/bin/bash
mkdir "../bin/linux/"
mkdir "../bin/linux/amd64"

echo -e "Compile Scimark2\n"

cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/amd64/scimark2_amd64-x86-64_O3 -O3 -march=x86-64 -D options="\"amd64 x86-64 optimized\""
chmod +x ../bin/linux/amd64/scimark2_amd64-x86-64_O3
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/amd64/scimark2_amd64-x86-64_O4 -O4 -march=x86-64 -D options="\"amd64 x86-64 optimized\""
chmod +x ../bin/linux/amd64/scimark2_amd64-x86-64_O4
cc -Iscimark2 scimark2/*.c -lm -o ../bin/linux/amd64/scimark2_amd64-x86-64_Ofast -Ofast -march=x86-64 -D options="\"amd64 x86-64 optimized\""
chmod +x ../bin/linux/amd64/scimark2_amd64-x86-64_Ofast


